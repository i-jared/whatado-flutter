import 'package:geojson/geojson.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/group_icon.dart';

class Group {
  int id;
  int owner;
  String name;
  GroupIcon icon;
  bool screened;
  List<PublicUser> users;
  List<PublicUser> requested;
  GeoJsonPoint location;

  Group({
    required this.id,
    required this.owner,
    required this.name,
    required this.icon,
    required this.location,
    required this.screened,
    this.users = const [],
    this.requested = const [],
  });

  factory Group.fromGqlData(Map<String, dynamic> data) {
    return Group(
      id: data['id'],
      screened: data['screened'],
      owner: data['owner'],
      location: Event.parseCoordinates(data['location']),
      name: data['name'],
      icon: GroupIcon.fromGqlData(data['icon']),
      users: List<PublicUser>.from(
          data['users']?.map((user) => PublicUser.fromGqlData(user)).toList() ?? []),
      requested: List<PublicUser>.from(
          data['requested']?.map((user) => PublicUser.fromGqlData(user)).toList() ?? []),
    );
  }

  @override
  String toString() {
    return name;
  }
}
