import 'dart:async';

import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/queries_graphql_api.dart';
import 'package:whatado/models/forum.dart';
import 'package:whatado/models/query_response.dart';
import 'package:whatado/services/service_provider.dart';

class ForumsGqlProvider {
  Future<MyQueryResponse<Forum?>> create({required int eventId}) async {
    final mutation = CreateForumMutation(
      variables: CreateForumArguments(eventId: eventId),
    );
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['createforum'];
    final data = Forum.fromGqlData(root['nodes']);
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<Forum?>(
      data: data,
      ok: ok,
      errors: errors,
    );
  }

  Future<MyQueryResponse<List<Forum>>> myForums(List<int> eventIds) async {
    final query = ForumsByEventIdQuery(
        variables: ForumsByEventIdArguments(eventIds: eventIds));
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['forumsByEventId'];
    final data = root != null && root['nodes'] != null
        ? List<Forum>.from((root?['nodes']).map((event) {
            return Forum.fromGqlData(event);
          }).toList())
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<List<Forum>>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }
}
