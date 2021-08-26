import 'package:whatado/services/service_provider.dart';

class LoginService {
  bool loggedIn;

  LoginService() : loggedIn = false;

  Future<bool> attemptAutoLogin() async {
    final response = await authenticationService.requestNewAccessToken();
    if (response != null) {
      loggedIn = true;
      return true;
    }
    return false;
  }
}
