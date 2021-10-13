import 'dart:convert';

import 'package:whatado/models/interest.dart';

class User {
  int id;
  String phone;
  String name;
  String bio;
  String deviceId;
  List<Interest> interests;
  List<String> photoUrls;
  User({
    required this.id,
    required this.name,
    required this.deviceId,
    this.phone = '',
    this.bio = '',
    this.photoUrls = const [],
    this.interests = const [],
  });

  factory User.fromGqlData(Map data) {
    return User(
        id: data['id'],
        phone: data['phone'] ?? '',
        deviceId: data['deviceId'] ?? '',
        name: data['name'] ?? '',
        bio: data['bio'] ?? '',
        photoUrls: List<String>.from(json.decode(data['photoUrls'] ?? '[]')),
        interests: List<Interest>.from(data['interests']
                ?.map((val) => Interest.fromGqlData(val))
                .toList() ??
            []));
  }
}
