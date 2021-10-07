import 'package:hive_flutter/hive_flutter.dart';

class LocalStorageService {
  Box? box;
  LocalStorageService() {
    Hive.openBox('whatado');
    box = Hive.box('whatado');
  }

  set flavor(String? flavor) => _set('flavor', flavor);
  String? get flavor => _fetch<String?>('flavor');

  set initialized(bool? initialized) => _set('initialized', initialized);
  bool? get initialized => _fetch<bool?>('initialized');

  set refreshToken(String? token) => _set('refreshToken', token);
  String? get refreshToken => _fetch<String?>('refreshToken');
  Future<void> deleteRefreshToken() async => await _delete('refreshToken');

  set accessToken(String? token) => _set('accessToken', token);
  String? get accessToken => _fetch<String?>('accessToken');
  Future<void> deleteAccessToken() async => await _delete('accessToken');

  T _fetch<T>(String name) => box?.get(name);
  Future<void> _set(String name, dynamic value) async =>
      await box?.put(name, value);
  Future<void> _delete(String name) async => await box?.delete(name);
}
