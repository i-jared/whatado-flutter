import 'package:artemis/schema/graphql_query.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:whatado/constants.dart';
import 'package:whatado/services/service_provider.dart';

class GraphqlClientService {
  late GraphQLClient _client;
  late HttpLink _httpLink;
  late WebSocketLink _wsLink;
  late AuthLink _authLink;
  late Link _link;

  GraphqlClientService() {
    final storedAccessToken = authenticationService.getAccessToken() ?? '';
    _httpLink = HttpLink(whatadoGqlUrl);
    _wsLink = WebSocketLink(whatadoWsUrl);
    _authLink = AuthLink(getToken: () => 'Bearer $storedAccessToken');
    _link = _authLink.split(
        (request) => request.isSubscription, _wsLink, _httpLink);
    _client = GraphQLClient(
        link: _link,
        cache: GraphQLCache(store: HiveStore(localStorageService.box)));
  }

  void updateAuth(String accessToken) {
    _authLink = AuthLink(getToken: () => 'Bearer $accessToken');
    _link = _authLink.split(
        (request) => request.isSubscription, _wsLink, _httpLink);
    _client = GraphQLClient(
        link: _link,
        cache: GraphQLCache(store: HiveStore(localStorageService.box)));
  }

  Future<QueryResult>
      mutate<Q extends GraphQLQuery<T, U>, T, U extends json.JsonSerializable>(
          final Q q) async {
    Future<QueryResult> _mutate() {
      return _client.mutate(
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
    Future<QueryResult> _query() {
      return _client.query(
        QueryOptions(
          document: q.document,
          variables: q.variables?.toJson() ?? {},
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
    }

    return await sendWithReauthenticate(_query);
  }

  Stream<QueryResult> subscribe<Q extends GraphQLQuery<T, U>, T,
      U extends json.JsonSerializable>(
    final Q q,
  ) {
    Stream<QueryResult> _query() {
      return _client.subscribe(
        SubscriptionOptions(
          document: q.document,
          variables: q.variables?.toJson() ?? {},
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
    }

    return _query();
  }

  Future<QueryResult> sendWithReauthenticate(Future? Function() fx) async {
    final event = await fx();
    print("sent first request");
    if (event.hasException) {
      final unauthorized = _checkIsUnauthorized(event);
      print("exception. unauthorized: $unauthorized");
      if (unauthorized) {
        final accessToken = await authenticationService.requestNewAccessToken();
        print("requested new access token");
        if (accessToken != null) {
          print("resubmitting request");
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
