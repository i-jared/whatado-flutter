import 'package:whatado/services/service_provider.dart';

class LoginService {
  bool loggedIn;
  int? userId;

  LoginService()
      : loggedIn = false,
        userId = null;

  Future<bool> attemptAutoLogin() async {
    final response = await authenticationService.requestUserId();
    print('response: $response');
    if (response != null) {
      loggedIn = true;
      userId = response;
      return true;
    }
    return false;
  }
}
