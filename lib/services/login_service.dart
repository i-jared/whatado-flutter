import 'package:whatado/services/service_provider.dart';

class LoginService {
  bool loggedIn;

  LoginService() : loggedIn = false;

  Future<bool> attemptAutoLogin() async {
    print('requesting');
    final response = await authenticationService.requestNewAccessToken();
    print('requested: ${response != null}');
    if (response != null) {
      loggedIn = true;
      return true;
    }
    return false;
  }
}
