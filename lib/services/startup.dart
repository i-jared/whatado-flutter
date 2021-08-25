import 'package:injector/injector.dart';
import 'package:whatado/services/authentication_service.dart';
import 'package:whatado/services/graphql_client_service.dart';
import 'package:whatado/services/http_client_service.dart';
import 'package:whatado/services/local_storage_service.dart';
import 'package:whatado/services/login_service.dart';

class Startup {
  static void initDependencies() {
    final injector = Injector.appInstance;
    injector
        .registerSingleton<LocalStorageService>(() => LocalStorageService());
    injector
        .registerSingleton<GraphqlClientService>(() => GraphqlClientService());
    injector.registerSingleton<AuthenticationService>(
        () => AuthenticationService());
    injector.registerSingleton<HttpClientService>(() => HttpClientService());
    injector.registerSingleton<LoginService>(() => LoginService());
  }
}
