import 'dart:convert';

import 'package:whatado/models/interest.dart';

class User {
  int id;
  String phone;
  String name;
  String bio;
  String deviceId;
  bool verified;
  List<Interest> interests;
  List<String> photoUrls;
  List<int> blockedUserIds;
  User({
    required this.id,
    required this.name,
    required this.deviceId,
    required this.verified,
    this.phone = '',
    this.bio = '',
    this.photoUrls = const [],
    this.interests = const [],
    this.blockedUserIds = const [],
  });

  factory User.fromGqlData(Map data) {
    return User(
      id: data['id'],
      phone: data['phone'] ?? '',
      deviceId: data['deviceId'] ?? '',
      name: data['name'] ?? '',
      bio: data['bio'] ?? '',
      verified: data['verified'] ?? false,
      photoUrls: List<String>.from(json.decode(data['photoUrls'] ?? '[]')),
      interests: List<Interest>.from(
          data['interests']?.map((val) => Interest.fromGqlData(val)).toList() ??
              []),
      blockedUserIds: List<int>.from(
          data['blockedUsers']?.map((user) => user.id).toList() ?? []),
    );
  }
}
