import 'dart:convert';

import 'package:geojson/geojson.dart';
import 'package:geopoint/geopoint.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/models/interest.dart';

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
  List<EventUser> blockedUsers;
  List<EventUser> friends;
  List<EventUser> requestedFriends;
  List<EventUser> friendRequests;
  List<Group> groups;
  List<Group> requestedGroups;
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
    required this.friendRequests,
    required this.requestedFriends,
    required this.groups,
    required this.requestedGroups,
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
      blockedUsers: List<EventUser>.from(
          data['blockedUsers']?.map((user) => EventUser.fromGqlData(user)).toList() ??
              []),
      friends: List<EventUser>.from([
        ...(data['inverseFriends']?.map((user) => EventUser.fromGqlData(user)) ?? []),
        ...(data['friends']?.map((user) => EventUser.fromGqlData(user)).toList() ?? [])
      ]),
      friendRequests: List<EventUser>.from(
          data['friendRequests']?.map((user) => EventUser.fromGqlData(user)).toList() ??
              []),
      requestedFriends: List<EventUser>.from(
          data['requestedFriends']?.map((user) => EventUser.fromGqlData(user)).toList() ??
              []),
      birthday:
          data['birthday'] == null ? DateTime.now() : DateTime.parse(data['birthday']),
      groups: List<Group>.from(
          data['groups']?.map((group) => Group.fromGqlData(group)).toList() ?? []),
      requestedGroups: List<Group>.from(
          data['requestedGroups']?.map((group) => Group.fromGqlData(group)).toList() ??
              []),
      location: getLocation(data['location']),
    );
  }

  static GeoJsonPoint? getLocation(String? data) {
    if (data == null) {
      return null;
    }
    Map<String, dynamic> location = json.decode(data);
    if (location['x'] == null || location['y'] == null) return null;
    return GeoJsonPoint(
        geoPoint: GeoPoint(latitude: location['y'], longitude: location['x']));
  }

  @override
  String toString() {
    return '{id: $id, phone: $phone, name: $name}';
  }
}
