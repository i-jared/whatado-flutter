import 'package:whatado/services/environment_config.dart';

String get whatadoGqlUrl => EnvironmentConfig.flavor == PROD
    ? 'https://api.whatado.io/graphql'
    : "http://192.168.86.212:4000/graphql";
String get whatadoWsUrl => EnvironmentConfig.flavor == PROD
    ? 'wss://api.whatado.io/graphql'
    : "ws://192.168.86.212:4000/graphql";
String get whatadoRefreshUrl => EnvironmentConfig.flavor == PROD
    ? 'https://api.whatado.io/refresh_token'
    : "http://192.168.86.212:4000/refresh_token";

// ignore: non_constant_identifier_names
String get PROD => "PROD";
// ignore: non_constant_identifier_names
String get LOCAL_DEV => "LOCAL_DEV";

//TODO: populate customized feed

//TODO: create management console

//TODO: problems: users need post history




