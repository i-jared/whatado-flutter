import 'package:whatado/services/environment_config.dart';

String get whatadoGqlUrl => EnvironmentConfig.flavor == PROD
    ? 'https://api.whatado.io/graphql'
    : "http://192.168.86.148:4000/graphql";
String get whatadoWsUrl => EnvironmentConfig.flavor == PROD
    ? 'ws://api.whatado.io/ws'
    : "ws://192.168.86.148:4000/graphql";
String get whatadoRefreshUrl => EnvironmentConfig.flavor == PROD
    ? 'https://api.whatado.io/refresh_token'
    : "http://192.168.86.148:4000/refresh_token";

// ignore: non_constant_identifier_names
String get PROD => "PROD";
// ignore: non_constant_identifier_names
String get LOCAL_DEV => "LOCAL_DEV";


//TODO: implement chatnotifications
//TODO: implement pushNotifications to update users with new messages or new events invited to
//TODO: implement wannago selection
//TODO: make working calendar selector that defaults to a whole month
//TODO: change slidable forum to a little menu or long press popup
//TODO: finish post uploaded or failed pages
//TODO: finish forgot password support and email


//TODO: figure out how to update on one endpoint
//TODO: allow reporting and posts
//TODO: make myevents widgets look better
//TODO: populate customized feed
//TODO: implement registration email and verification

//TODO: create management console

//TODO: problems: users need post history
//TODO: problems: myevents look dumb. need different layout




