import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:geojson/geojson.dart';
import 'package:geopoint/geopoint.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/utils/logger.dart';

import '../graphql/mutations_graphql_api.graphql.dart';

class User {
  int id;
  String phone;
  String name;
  String bio;
  String deviceId;
  bool verified;
  DateTime birthday;
  List<Interest> interests;
  List<String> photoUrls;
  List<PublicUser> blockedUsers;
  List<PublicUser> friends;
  List<PublicUser> sentFriendRequests;
  List<PublicUser> receivedFriendRequests;
  List<Group> groups;
  List<Group> requestedGroups;
  Gender gender;
  GeoJsonPoint? location;
  User({
    required this.id,
    required this.name,
    required this.deviceId,
    required this.verified,
    required this.birthday,
    required this.phone,
    required this.bio,
    required this.photoUrls,
    required this.interests,
    required this.blockedUsers,
    required this.friends,
    required this.receivedFriendRequests,
    required this.sentFriendRequests,
    required this.groups,
    required this.requestedGroups,
    required this.gender,
    this.location,
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
          data['interests']?.map((val) => Interest.fromGqlData(val)).toList() ?? []),
      blockedUsers: List<PublicUser>.from(
          data['blockedUsers']?.map((user) => PublicUser.fromGqlData(user)).toList() ?? []),
      friends: List<PublicUser>.from([
        ...(data['inverseFriends']?.map((user) => PublicUser.fromGqlData(user)) ?? []),
        ...(data['friends']?.map((user) => PublicUser.fromGqlData(user)).toList() ?? [])
      ]),
      receivedFriendRequests: List<PublicUser>.from((data['receivedFriendRequests'] as List?)
              ?.map((item) => PublicUser.fromGqlData(item['requester']))
              .toList() ??
          []),
      sentFriendRequests: List<PublicUser>.from((data['sentFriendRequests'] as List?)
              ?.map((item) => PublicUser.fromGqlData(item['requested']))
              .toList() ??
          []),
      birthday: data['birthday'] == null ? DateTime.now() : DateTime.parse(data['birthday']),
      groups:
          List<Group>.from(data['groups']?.map((group) => Group.fromGqlData(group)).toList() ?? []),
      requestedGroups: List<Group>.from(
          data['requestedGroups']?.map((group) => Group.fromGqlData(group)).toList() ?? []),
      gender: getGender(data['gender']),
      location: getLocation(data['location']),
    );
  }

  static GeoJsonPoint? getLocation(String? data) {
    if (data == null) {
      return null;
    }
    Map<String, dynamic> location = json.decode(data);
    if (location['x'] == null || location['y'] == null) return null;
    return GeoJsonPoint(geoPoint: GeoPoint(latitude: location['y'], longitude: location['x']));
  }

  @override
  String toString() {
    return '{id: $id, phone: $phone, name: $name, group: $groups}';
  }

  static Gender getGender(String data) {
    if (data == 'MALE') {
      return Gender.male;
    }
    if (data == 'FEMALE') {
      return Gender.female;
    }
    return Gender.both;
  }

  static String genderToString(Gender data) {
    if (data == Gender.male) {
      return 'Male';
    }
    if (data == Gender.female) {
      return 'Female';
    }
    return 'Other';
  }

  static String interestsToString(List<Interest> interests) {
    return json.encode(interests.map((i) => i.title).toList());
  }
}
