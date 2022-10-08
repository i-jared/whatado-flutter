import 'package:geojson/geojson.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/group_icon.dart';
import 'package:whatado/models/interest.dart';

class Group {
  int id;
  int owner;
  String name;
  String displayLocation;
  GroupIcon icon;
  bool screened;
  bool private;
  List<PublicUser> users;
  List<PublicUser> requested;
  // List<PublicUser> invited;
  List<Interest> relatedInterests;
  GeoJsonPoint location;

  Group({
    required this.id,
    required this.owner,
    required this.name,
    required this.icon,
    required this.location,
    required this.displayLocation,
    required this.screened,
    required this.private,
    this.relatedInterests = const [],
    this.users = const [],
    this.requested = const [],
    // this.invited = const [],
  });

  factory Group.fromGqlData(Map<String, dynamic> data) {
    return Group(
      id: data['id'],
      screened: data['screened'],
      private: data['private'],
      owner: data['owner'],
      displayLocation: data['displayLocation'],
      location: Event.parseCoordinates(data['location']),
      name: data['name'],
      icon: GroupIcon.fromGqlData(data['icon']),
      relatedInterests: List<Interest>.from(
          data['relatedInterests']?.map((interest) => Interest.fromGqlData(interest)).toList() ??
              []),
      users: List<PublicUser>.from(
          data['users']?.map((user) => PublicUser.fromGqlData(user)).toList() ?? []),
      requested: List<PublicUser>.from(
          data['requested']?.map((user) => PublicUser.fromGqlData(user)).toList() ?? []),
      // invited: List<PublicUser>.from(
      //     data['invited']?.map((user) => PublicUser.fromGqlData(user)).toList() ?? []),
    );
  }

  @override
  String toString() {
    return '$name $icon';
  }
}
