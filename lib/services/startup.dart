import 'package:injector/injector.dart';
import 'package:whatado/services/authentication_service.dart';
import 'package:whatado/services/cloud_storage_service.dart';
import 'package:whatado/services/graphql_client_service.dart';
import 'package:whatado/services/http_client_service.dart';
import 'package:whatado/services/local_notification_service.dart';
import 'package:whatado/services/local_storage_service.dart';
import 'package:whatado/services/location_service.dart';
import 'package:whatado/services/login_service.dart';
import 'package:whatado/services/places_service.dart';

class Startup {
  static void initDependencies() {
    final injector = Injector.appInstance;
    injector.registerSingleton<LocalStorageService>(() => LocalStorageService());
    injector.registerSingleton<GraphqlClientService>(() => GraphqlClientService());
    injector.registerSingleton<AuthenticationService>(() => AuthenticationService());
    injector.registerSingleton<HttpClientService>(() => HttpClientService());
    injector.registerSingleton<LoginService>(() => LoginService());
    injector.registerSingleton<CloudStorageService>(() => CloudStorageService());
    injector
        .registerSingleton<LocalNotificationService>(() => LocalNotificationService());
    injector.registerSingleton<PlacesService>(() => PlacesService());
    injector.registerSingleton<LocationService>(() => LocationService());
  }
}
