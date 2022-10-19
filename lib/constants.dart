import 'package:flutter/material.dart';
import 'package:whatado/services/environment_config.dart';

String get whatadoGqlUrl => EnvironmentConfig.flavor == PROD
    ? 'https://api.whatado.io/graphql'
    : "http://192.168.82.8:4000/graphql";
String get whatadoWsUrl => EnvironmentConfig.flavor == PROD
    ? 'wss://api.whatado.io/graphql'
    : "ws://192.168.82.8:4000/graphql";
String get whatadoRefreshUrl => EnvironmentConfig.flavor == PROD
    ? 'https://api.whatado.io/refresh_token'
    : "http://192.168.82.8:4000/refresh_token";
String get whatadoAutocompleteUrl => EnvironmentConfig.flavor == PROD
    ? 'https://api.whatado.io/autocomplete'
    : "http://192.168.82.8:4000/autocomplete";
String get whatadoPlaceDetailsUrl => EnvironmentConfig.flavor == PROD
    ? 'https://api.whatado.io/place_details'
    : "http://192.168.82.8:4000/place_details";

// ignore: non_constant_identifier_names
String get PROD => "PROD";
// ignore: non_constant_identifier_names
String get LOCAL_DEV => "LOCAL_DEV";

class AppColors {
  static Color primary = Color(0xfff7941d);
  static Color secondary = Color(0xff0073ab);
  static Color background = Colors.grey[50]!;
  static Color unfocused = Colors.grey;
  static Color disabled = Colors.grey[300]!;
  static Color darkAccent = Color.fromARGB(255, 81, 81, 92);
}

class AppRadii {
  static double button = 15.0;
}
