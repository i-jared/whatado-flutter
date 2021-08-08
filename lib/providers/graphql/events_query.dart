import 'dart:async';

import 'package:whatado/graphql/queries_graphql_api.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/query_response.dart';
import 'package:whatado/services/service_provider.dart';

class EventsGqlQuery {
  Future<MyQueryResponse<List<Event>>> events(
      {required String email, required String password}) async {
    final query = EventsQuery();
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['events'];
    final data = (root?['nodes'] as List)
        .map((event) => Event.fromGqlData(event))
        .toList();
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<List<Event>>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }
}
