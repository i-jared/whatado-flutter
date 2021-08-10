import 'package:artemis/schema/graphql_query.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:whatado/constants.dart';
import 'package:whatado/services/service_provider.dart';

class GraphqlClientService {
  GraphQLClient? _client;
  late HttpLink _httpLink;
  late AuthLink _authLink;
  late Link _link;

  GraphqlClientService() {
    final storedAccessToken = authenticationService.getAccessToken() ?? '';
    _httpLink = HttpLink(whatadoGqlUrl);
    _authLink = AuthLink(getToken: () => 'Bearer $storedAccessToken');
    _link = _authLink.concat(_httpLink);
    _client = GraphQLClient(
        link: _link,
        cache: GraphQLCache(store: HiveStore(localStorageService.box)));
  }

  void updateAuth(String accessToken) {
    _authLink = AuthLink(getToken: () => 'Bearer $accessToken');
    _link = _authLink.concat(_httpLink);
    _client = GraphQLClient(
        link: _link,
        cache: GraphQLCache(store: HiveStore(localStorageService.box)));
  }

  Future<QueryResult>
      mutate<Q extends GraphQLQuery<T, U>, T, U extends json.JsonSerializable>(
          final Q q) async {
    Future<QueryResult>? _mutate() {
      return _client?.mutate(
        MutationOptions(
          document: q.document,
          variables: q.variables?.toJson() ?? {},
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
    }

    return await sendWithReauthenticate(_mutate);
  }

  Future<QueryResult>
      query<Q extends GraphQLQuery<T, U>, T, U extends json.JsonSerializable>(
    final Q q,
  ) async {
    Future<QueryResult>? _query() {
      return _client?.query(
        QueryOptions(
          document: q.document,
          variables: q.variables?.toJson() ?? {},
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
    }

    return await sendWithReauthenticate(_query);
  }

  Future<QueryResult> sendWithReauthenticate(Future? Function() fx) async {
    final event = await fx();
    print('query sent');
    if (event.hasException) {
      print('query has exception');
      final unauthorized = _checkIsUnauthorized(event);
      if (unauthorized) {
        print('query unauthorized');
        final accessToken = await authenticationService.requestNewAccessToken();
        print('requested new accesstoken');
        if (accessToken != null) {
          print('retry query');
          return await fx();
        } else {
          return event;
        }
      }
    }
    return event;
  }

  // check if user is authorized to make request.
  bool _checkIsUnauthorized(QueryResult event) {
    return event.hasException &&
        event.exception?.graphqlErrors.any((element) =>
                element.extensions != null &&
                element.extensions?['code'] == 'UNAUTHENTICATED') ==
            true;
  }
}
