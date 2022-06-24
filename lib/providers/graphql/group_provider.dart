import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/queries_graphql_api.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/models/query_response.dart';
import 'package:whatado/services/service_provider.dart';

class GroupGqlProvider {
  Future<MyQueryResponse<Group>> myGroups() async {
    final query = MyGroupsQuery();
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['myGroups'];
    final data = root != null && root['nodes'] != null
        ? Group.fromGqlData(root['nodes'])
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<Group>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<Group>> updateGroup(
      GroupFilterInput groupInput) async {
    final mutation = UpdateGroupMutation(
        variables: UpdateGroupArguments(groupInput: groupInput));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }
    print('jcl $result');
    final root = result.data?['updateGroup'];
    final data =
        root?['nodes'] == null ? null : Group.fromGqlData(root?['nodes']);
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<Group>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<Group>> createGroup(GroupInput groupInput) async {
    print(groupInput);
    final mutation = CreateGroupMutation(
        variables: CreateGroupArguments(groupInput: groupInput));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }
    print(result);
    final root = result.data?['createGroup'];
    final data =
        root?['nodes'] == null ? null : Group.fromGqlData(root?['nodes']);
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<Group>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }
}
