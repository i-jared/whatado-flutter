import 'dart:async';

import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/query_response.dart';
import 'package:whatado/services/service_provider.dart';

class CreateEventGqlQuery {
  Future<MyQueryResponse<Event?>> create(
      {required EventInput eventInput}) async {
    final mutation = CreateEventMutation(
      variables: CreateEventArguments(eventInput: eventInput),
    );
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['createEvent'];
    final data = Event.fromGqlData(root['nodes']);
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<Event?>(
      data: data,
      ok: ok,
      errors: errors,
    );
  }
}
