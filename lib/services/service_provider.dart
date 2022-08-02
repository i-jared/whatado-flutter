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

final _injector = Injector.appInstance;

LocalStorageService get localStorageService {
  return _injector.get<LocalStorageService>();
}

GraphqlClientService get graphqlClientService {
  return _injector.get<GraphqlClientService>();
}

AuthenticationService get authenticationService {
  return _injector.get<AuthenticationService>();
}

HttpClientService get httpClientService {
  return _injector.get<HttpClientService>();
}

LoginService get loginService {
  return _injector.get<LoginService>();
}

CloudStorageService get cloudStorageService {
  return _injector.get<CloudStorageService>();
}

PlacesService get placesService {
  return _injector.get<PlacesService>();
}

LocalNotificationService get localNotificationService {
  return _injector.get<LocalNotificationService>();
}

LocationService get locationService {
  return _injector.get<LocationService>();
}
// T _getInitialized<T>() {
  // if (!_injector.exists<T>()) {
    // StartUp.initDependencies(EnvironmentConfig.flavor);
  // }
  // return _injector.get<T>();
// }