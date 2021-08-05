import 'package:artemis/schema/graphql_query.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:whatado/services/service_provider.dart';

class GraphqlClientService {
  late GraphQLClient _client;
  late HttpLink _httpLink;
  late AuthLink _authLink;
  late Link _link;

  GraphqlClientService() {
    _httpLink = HttpLink('https://api.whatado.io/graphql');
    _authLink =
        AuthLink(getToken: () => 'Bearer'); // TODO: get token from storage
    _link = _authLink.concat(_httpLink);
    _client =
        GraphQLClient(link: _link, cache: GraphQLCache(store: HiveStore()));
  }

  void updateAuth(String accessToken) {
    _authLink = AuthLink(getToken: () => 'Bearer $accessToken');
    _link = _authLink.concat(_httpLink);
    _client =
        GraphQLClient(link: _link, cache: GraphQLCache(store: HiveStore()));
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

    final event = await _query();
    if (event.hasException) {
      final unauthorized = _checkIsUnauthorized(event);
      if (unauthorized) {
        // TODO: get refresh token;
        // TODO: request new access token;
        // TODO: success -> retry query
        // TODO: failure -> return original response
        final token = authenticationService.getToken();
        authenticationService.invalidateAccessToken(token);
        return await _query();
      }
    }
    return event;
  }

  // check if user is authorized to make request.
  // TODO: make sure this matches my server responses
  bool _checkIsUnauthorized(QueryResult event) =>
      event.hasException &&
      event.exception?.graphqlErrors.any((element) =>
              element.extensions != null &&
              element.extensions?['code'] == 'AUTH_NOT_AUTHORIZED') ==
          true;
}
