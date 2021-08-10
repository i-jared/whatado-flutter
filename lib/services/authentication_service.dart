import 'dart:convert';

import 'package:whatado/constants.dart';
import 'package:whatado/services/service_provider.dart';

class AuthenticationService {
  void forgetTokens() async {
    await localStorageService.deleteRefreshToken();
    await localStorageService.deleteAccessToken();
  }

  void updateTokens(String accessToken, String refreshToken) {
    localStorageService.refreshToken = refreshToken;
    localStorageService.accessToken = accessToken;
    graphqlClientService.updateAuth(accessToken);
  }

  String? getRefreshToken() => localStorageService.refreshToken;
  String? getAccessToken() => localStorageService.accessToken;
  Future<String?> requestNewAccessToken() async {
    final response = await httpClientService.postAuthenticated(
        whatadoRefreshUrl, getRefreshToken() ?? '');
    final responseJson = jsonDecode(response.body);
    if (responseJson['ok'] == false) {
      return null;
    }
    final refreshToken = responseJson['refreshToken'];
    final accessToken = responseJson['accessToken'];
    graphqlClientService.updateAuth(accessToken);
    localStorageService.refreshToken = refreshToken;
    localStorageService.accessToken = accessToken;
    return accessToken;
  }
}
