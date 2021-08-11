import 'dart:async';

import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/queries_graphql_api.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/query_response.dart';
import 'package:whatado/services/service_provider.dart';

class EventsGqlQuery {
  Future<MyQueryResponse<List<Event>>> events() async {
    final query = EventsQuery();
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['events'];
    final data = root != null && root['nodes'] != null
        ? List<Event>.from(
            (root?['nodes']).map((event) => Event.fromGqlData(event)).toList())
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<List<Event>>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<Event>> createEvent(EventInput eventInput) async {
    final mutation = CreateEventMutation(
        variables: CreateEventArguments(eventInput: eventInput));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['event'];
    final data = root != null && root['nodes'] != null
        ? Event.fromGqlData(root?['nodes'])
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<Event>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }
}
