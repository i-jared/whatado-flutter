import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/group_icon.dart';

class Group {
  int id;
  int owner;
  String name;
  GroupIcon icon;
  List<EventUser> users;

  Group(
      {required this.id,
      required this.owner,
      required this.name,
      required this.icon,
      this.users = const []});

  factory Group.fromGqlData(Map<String, dynamic> data) {
    print(data);
    return Group(
      id: data['id'],
      owner: data['owner'],
      name: data['name'],
      icon: GroupIcon.fromGqlData(data['icon']),
      users: List<EventUser>.from(
          data['users']?.map((user) => EventUser.fromGqlData(user)).toList() ?? []),
    );
  }

  @override
  String toString() {
    return name;
  }
}
