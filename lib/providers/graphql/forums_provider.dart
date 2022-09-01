import 'dart:async';

import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/graphql/queries_graphql_api.dart';
import 'package:whatado/models/forum.dart';
import 'package:whatado/models/query_response.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/utils/logger.dart';

class ForumsGqlProvider {
  Future<MyQueryResponse<Forum?>> create({required int eventId}) async {
    final mutation = CreateForumMutation(
      variables: CreateForumArguments(eventId: eventId),
    );
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      logger.e('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        logger.e(element.message);
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
    final query = ForumsByEventIdQuery(variables: ForumsByEventIdArguments(eventIds: eventIds));
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      logger.e('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        logger.e(element.message);
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

  Future<MyQueryResponse<Forum>> forum(int forumId) async {
    final query = ForumQuery(variables: ForumArguments(forumId: forumId));
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      logger.e('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        logger.e(element.message);
      });
    }

    final root = result.data?['forum'];
    final data = root != null && root['nodes'] != null ? Forum.fromGqlData(root?['nodes']) : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<Forum>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<Forum>> updateForum(ForumFilterInput options) async {
    final query = UpdateForumMutation(variables: UpdateForumArguments(options: options));
    final result = await graphqlClientService.mutate(query);
    if (result.hasException) {
      logger.e('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        logger.e(element.message);
      });
    }

    final root = result.data?['updateForum'];
    final data = root != null
        ? root['nodes'] != null
            ? Forum.fromGqlData(root['nodes'])
            : null
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<Forum>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> access(int forumId) async {
    final query = AccessMutation(variables: AccessArguments(id: forumId));
    final result = await graphqlClientService.mutate(query);
    if (result.hasException) {
      logger.e('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        logger.e(element.message);
      });
    }

    final root = result.data?['access'];
    final data = root != null ? root['nodes'] : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> unmute(int cnId) async {
    final query = UnmuteMutation(variables: UnmuteArguments(id: cnId));
    final result = await graphqlClientService.mutate(query);
    if (result.hasException) {
      logger.e('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        logger.e(element.message);
      });
    }

    final root = result.data?['unmute'];
    final data = root != null ? root['nodes'] : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> mute(int cnId) async {
    final query = MuteMutation(variables: MuteArguments(id: cnId));
    final result = await graphqlClientService.mutate(query);
    if (result.hasException) {
      logger.e('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        logger.e(element.message);
      });
    }

    final root = result.data?['mute'];
    final data = root != null ? root['nodes'] : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }
}
