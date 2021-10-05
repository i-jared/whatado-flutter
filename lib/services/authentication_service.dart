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

  Future<String?> requestNewAccessToken() async {
    final response = await httpClientService.postAuthenticated(
        whatadoRefreshUrl, localStorageService.refreshToken ?? '');
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

  Future<int?> requestUserId() async {
    final response = await httpClientService.postAuthenticated(
        whatadoRefreshUrl, localStorageService.refreshToken ?? '');
    final responseJson = jsonDecode(response.body);
    print(whatadoRefreshUrl);
    print('raw response');
    print(responseJson);
    if (responseJson['ok'] == false) {
      return null;
    }
    final refreshToken = responseJson['refreshToken'];
    final accessToken = responseJson['accessToken'];
    final userId = responseJson['userId'];
    graphqlClientService.updateAuth(accessToken);
    localStorageService.refreshToken = refreshToken;
    localStorageService.accessToken = accessToken;
    return userId;
  }
}
