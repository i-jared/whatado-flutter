import 'package:injector/injector.dart';
import 'package:whatado/services/authentication_service.dart';
import 'package:whatado/services/graphql_client_service.dart';
import 'package:whatado/services/local_storage_service.dart';

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

// T _getInitialized<T>() {
  // if (!_injector.exists<T>()) {
    // StartUp.initDependencies(EnvironmentConfig.flavor);
  // }
  // return _injector.get<T>();
// }