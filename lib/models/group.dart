import 'package:whatado/models/event_user.dart';

class Group {
  int id;
  int owner;
  String name;
  List<EventUser> users;

  Group(
      {required this.id,
      required this.owner,
      required this.name,
      this.users = const []});

  factory Group.fromGqlData(Map<String, dynamic> data) {
    print(data);
    return Group(
      id: data['id'],
      owner: data['owner'],
      name: data['name'],
      users: List<EventUser>.from(
          data['users']?.map((user) => EventUser.fromGqlData(user)).toList() ??
              []),
    );
  }

  @override
  String toString() {
    return name;
  }
}
