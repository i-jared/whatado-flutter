import 'package:injector/injector.dart';
import 'package:whatado/services/authentication_service.dart';
import 'package:whatado/services/graphql_client_service.dart';
import 'package:whatado/services/local_storage_service.dart';

class Startup {
  static void initDependencies() {
    final injector = Injector.appInstance;
    injector
        .registerSingleton<GraphqlClientService>(() => GraphqlClientService());
    injector
        .registerSingleton<LocalStorageService>(() => LocalStorageService());
    injector.registerSingleton<AuthenticationService>(
        () => AuthenticationService());
  }
}
