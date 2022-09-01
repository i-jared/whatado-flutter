import 'dart:async';

import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/models/query_response.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/utils/logger.dart';

class RegisterGqlQuery {
  Future<MyQueryResponse<User?>> register({
    required String phone,
    required String password,
    required String name,
  }) async {
    final mutation = RegisterMutation(
      variables: RegisterArguments(
        userInput: UserInput(
            password: password,
            phone: phone,
            name: name,
            birthday: DateTime.now(),
            gender: Gender.both),
      ),
    );
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      logger.e('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        logger.e(element.message);
      });
    }

    final root = result.data?['register'];
    final data = root != null && root?['nodes'] != null ? User.fromGqlData(root?['nodes']) : null;
    final accessToken = root?['jwt']?['accessToken'];
    final refreshToken = root?['jwt']?['refreshToken'];
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<User?>(
      ok: ok,
      accessToken: accessToken,
      refreshToken: refreshToken,
      data: data,
      errors: errors,
    );
  }
}
