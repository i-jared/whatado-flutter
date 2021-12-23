import 'dart:convert';

import 'package:whatado/models/user.dart';

class EventUser {
  int id;
  String name;
  String bio;
  List<String> photoUrls;
  DateTime birthday;
  EventUser({
    required this.id,
    required this.name,
    required this.photoUrls,
    required this.bio,
    required this.birthday,
  });

  factory EventUser.fromGqlData(Map data) {
    return EventUser(
      id: data['id'],
      photoUrls: List<String>.from(json.decode(data['photoUrls'] ?? '[]')),
      name: data['name'] ?? '',
      bio: data['bio'] ?? '',
      birthday: data['birthday'] == null
          ? DateTime.now()
          : DateTime.parse(data['birthday']),
    );
  }

  factory EventUser.fromUser(User user) {
    return EventUser(
      id: user.id,
      photoUrls: user.photoUrls,
      name: user.name,
      bio: user.bio,
      birthday: user.birthday,
    );
  }
}
