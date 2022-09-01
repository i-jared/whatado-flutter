import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/queries_graphql_api.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/models/group_icon.dart';
import 'package:whatado/models/query_response.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/utils/logger.dart';

class GroupGqlProvider {
  Future<MyQueryResponse<Group>> myGroups() async {
    final query = MyGroupsQuery();
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      logger.e('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        logger.e(element.message);
      });
    }

    final root = result.data?['myGroups'];
    final data = root != null && root['nodes'] != null ? Group.fromGqlData(root['nodes']) : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<Group>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<List<GroupIcon>>> groupIcons() async {
    final query = GroupIconsQuery();
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      logger.e('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        logger.e(element.message);
      });
    }

    final root = result.data?['groupIcons'];
    final data = root != null && root['nodes'] != null
        ? (root['nodes'] as List).map((val) => GroupIcon.fromGqlData(val)).toList()
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<List<GroupIcon>>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<List<Group>>> suggestedGroups() async {
    final query = SuggestedGroupsQuery();
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      logger.e('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        logger.e(element.message);
      });
    }

    final root = result.data?['suggestedGroups'];
    final data = root != null && root['nodes'] != null
        ? (root['nodes'] as List).map((val) => Group.fromGqlData(val)).toList()
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<List<Group>>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<List<Group>>> searchGroups(String partial) async {
    final query = SearchGroupsQuery(variables: SearchGroupsArguments(partial: partial));
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      logger.e('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        logger.e(element.message);
      });
    }

    final root = result.data?['searchGroups'];
    final data = root != null && root['nodes'] != null
        ? (root['nodes'] as List).map((val) => Group.fromGqlData(val)).toList()
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<List<Group>>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<Group>> updateGroup(GroupFilterInput groupInput) async {
    final mutation = UpdateGroupMutation(variables: UpdateGroupArguments(groupInput: groupInput));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      logger.e('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        logger.e(element.message);
      });
    }

    final root = result.data?['updateGroup'];
    final data = root?['nodes'] == null ? null : Group.fromGqlData(root?['nodes']);
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<Group>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> requestGroup(int id) async {
    final mutation = RequestGroupMutation(variables: RequestGroupArguments(id: id));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      logger.e('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        logger.e(element.message);
      });
    }
    final root = result.data?['requestGroup'];
    final data = root?['nodes'];
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<Group>> createGroup(GroupInput groupInput) async {
    final mutation = CreateGroupMutation(variables: CreateGroupArguments(groupInput: groupInput));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      logger.e('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        logger.e(element.message);
      });
    }
    final root = result.data?['createGroup'];
    final data = root?['nodes'] == null ? null : Group.fromGqlData(root?['nodes']);
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<Group>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }
}
