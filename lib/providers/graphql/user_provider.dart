import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/graphql/queries_graphql_api.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/query_response.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/services/service_provider.dart';

class UserGqlProvider {
  Future<MyQueryResponse<User>> me() async {
    final query = MeQuery();
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      print(result);
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }
    print(result);
    final root = result.data?['me'];
    final data =
        root != null && root['nodes'] != null ? User.fromGqlData(root['nodes']) : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<User>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<EventUser>> user(int id) async {
    final query = UserQuery(variables: UserArguments(id: id));
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['user'];
    final data = root != null && root['nodes'] != null
        ? EventUser.fromGqlData(root['nodes'])
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<EventUser>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<List<EventUser>>> eventUserPreview(List<int> ids) async {
    final query =
        EventUserPreviewQuery(variables: EventUserPreviewArguments(userIds: ids));
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['usersById'];
    final data = root != null && root['nodes'] != null
        ? (root['nodes'] as List).map((val) => EventUser.fromGqlData(val)).toList()
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<List<EventUser>>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<User>> updateUser(UserFilterInput userInput) async {
    final mutation =
        UpdateUserMutation(variables: UpdateUserArguments(userInput: userInput));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['updateUser'];
    final data = root?['nodes'] == null ? null : User.fromGqlData(root?['nodes']);
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<User>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> removeAccount() async {
    final mutation = RemoveAccountMutation();
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['removeAccount'];
    final data = root?['nodes'] ?? false;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<List<User>>> flaggedUsers() async {
    final query = FlaggedUsersQuery();
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['flaggedUsers'];
    final data = root != null && root['nodes'] != null
        ? List<User>.from(root['nodes'].map((val) => User.fromGqlData(val)).toList())
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<List<User>>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> updatePhotos(List<String> urls) async {
    final mutation = UpdatePhotosMutation(variables: UpdatePhotosArguments(urls: urls));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['updatePhotos'];
    final data = root?['nodes'] ?? false;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> checkValidationLogin(String code, String phone) async {
    final mutation = CheckValidationLoginMutation(
        variables: CheckValidationLoginArguments(code: code, phone: phone));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['checkValidationLogin'];
    final data = root?['ok'] ?? false;
    final accessToken = root?['jwt']?['accessToken'];
    final refreshToken = root?['jwt']?['refreshToken'];
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      accessToken: accessToken,
      refreshToken: refreshToken,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> checkValidation(String code) async {
    final mutation =
        CheckValidationMutation(variables: CheckValidationArguments(code: code));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['checkValidation'];
    final data = root?['ok'] ?? false;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> sendCode() async {
    final mutation = SendCodeMutation();
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['sendCode'];
    final data = root?['ok'] ?? false;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> flagUser(int userId) async {
    final mutation = FlagUserMutation(variables: FlagUserArguments(userId: userId));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['flagUser'];
    final data = root?['ok'] ?? false;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> blockUser(int userId) async {
    final mutation = BlockUserMutation(variables: BlockUserArguments(userId: userId));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['blockUser'];
    final data = root?['ok'] ?? false;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> unblockUser(int userId) async {
    final mutation = UnblockUserMutation(variables: UnblockUserArguments(userId: userId));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['unblockUser'];
    final data = root?['ok'] ?? false;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> addInterests(List<String> interestsText) async {
    final mutation = AddInterestsMutation(
        variables: AddInterestsArguments(interestsText: interestsText));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['addInterests'];
    final data = root?['nodes'] ?? false;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<List<EventUser>>> friendsById(int id) async {
    final query = FriendsByIdQuery(variables: FriendsByIdArguments(id: id));
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['friendsById'];
    final data = root != null && root['nodes'] != null
        ? (root['nodes'] as List).map((val) => EventUser.fromGqlData(val)).toList()
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<List<EventUser>>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<List<EventUser>>> searchUsers(String partial) async {
    final query = SearchUsersQuery(variables: SearchUsersArguments(partial: partial));
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['searchUsers'];
    final data = root != null && root['nodes'] != null
        ? (root['nodes'] as List).map((val) => EventUser.fromGqlData(val)).toList()
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<List<EventUser>>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> acceptFriend(int id) async {
    final query = AcceptFriendMutation(variables: AcceptFriendArguments(id: id));
    final result = await graphqlClientService.mutate(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['acceptFriend'];
    final data = root != null ? root['nodes'] : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> unrequestFriend(int id) async {
    final query = UnrequestFriendMutation(variables: UnrequestFriendArguments(id: id));
    final result = await graphqlClientService.mutate(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['unrequestFriend'];
    final data = root != null ? root['nodes'] : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> requestFriend(int id) async {
    final query = RequestFriendMutation(variables: RequestFriendArguments(id: id));
    final result = await graphqlClientService.mutate(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['requestFriend'];
    final data = root != null ? root['nodes'] : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> unfriend(int id) async {
    final query = UnfriendMutation(variables: UnfriendArguments(id: id));
    final result = await graphqlClientService.mutate(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['unfriend'];
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
