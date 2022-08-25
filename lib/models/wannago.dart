import 'package:whatado/models/event_user.dart';

class Wannago {
  int id;
  PublicUser user;
  bool declined;

  Wannago({
    required this.id,
    required this.user,
    required this.declined,
  });
  factory Wannago.fromGqlData(Map data) {
    return Wannago(
        id: data['id'], user: PublicUser.fromGqlData(data['user']), declined: data['declined']);
  }
}
