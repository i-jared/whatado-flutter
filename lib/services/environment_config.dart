import 'package:whatado/services/service_provider.dart';

class EnvironmentConfig {
  static String? flavor;

  static initFlavor(String _flavor) {
    flavor = _flavor;
    localStorageService.flavor = flavor;
  }
}
