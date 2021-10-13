import 'dart:convert';

class EventUser {
  int id;
  String name;
  List<String> photoUrls;
  EventUser({
    required this.id,
    required this.name,
    required this.photoUrls,
  });

  factory EventUser.fromGqlData(Map data) {
    return EventUser(
      id: data['id'],
      photoUrls: List<String>.from(json.decode(data['photoUrls'] ?? '[]')),
      name: data['name'] ?? '',
    );
  }
}
