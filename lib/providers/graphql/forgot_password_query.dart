import 'dart:async';

import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/models/query_response.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/services/service_provider.dart';

class ForgotPasswordGqlQuery {
  Future<MyQueryResponse<User?>> forgotPassword({required String phone}) async {
    final mutation = ForgotPasswordMutation(
      variables: ForgotPasswordArguments(
        phone: phone,
      ),
    );
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['forgotPassword'];
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<User?>(
      ok: ok,
      errors: errors,
    );
  }
}
