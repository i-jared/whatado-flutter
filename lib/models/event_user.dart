import 'dart:convert';

import 'package:whatado/models/user.dart';

class PublicUser {
  int id;
  String name;
  String bio;
  List<String> photoUrls;
  DateTime birthday;
  PublicUser({
    required this.id,
    required this.name,
    required this.photoUrls,
    required this.bio,
    required this.birthday,
  });

  factory PublicUser.fromGqlData(Map data) {
    return PublicUser(
      id: data['id'],
      photoUrls: List<String>.from(json.decode(data['photoUrls'] ?? '[]')),
      name: data['name'] ?? '',
      bio: data['bio'] ?? '',
      birthday: data['birthday'] == null ? DateTime.now() : DateTime.parse(data['birthday']),
    );
  }

  factory PublicUser.fromUser(User user) {
    return PublicUser(
      id: user.id,
      photoUrls: user.photoUrls,
      name: user.name,
      bio: user.bio,
      birthday: user.birthday,
    );
  }

  @override
  bool operator ==(o) => o is PublicUser && o.id == id;

  @override
  int get hashCode => id.hashCode;
}
