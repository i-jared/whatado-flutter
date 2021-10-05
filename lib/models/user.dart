import 'dart:convert';

import 'package:whatado/models/interest.dart';

class User {
  int id;
  String email;
  String name;
  String imageUrl;
  String bio;
  String deviceId;
  List<Interest> interests;
  List<String> photoUrls;
  User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.deviceId,
    this.email = '',
    this.bio = '',
    this.photoUrls = const [],
    this.interests = const [],
  });

  factory User.fromGqlData(Map data) {
    return User(
        id: data['id'],
        email: data['email'] ?? '',
        imageUrl: data['profilePhotoUrl'] ?? '',
        deviceId: data['deviceId'] ?? '',
        name: data['username'] ?? '',
        bio: data['bio'] ?? '',
        photoUrls: List<String>.from(json.decode(data['photoUrls'] ?? '[]')),
        interests: List<Interest>.from(data['interests']
                ?.map((val) => Interest.fromGqlData(val))
                .toList() ??
            []));
  }
}
