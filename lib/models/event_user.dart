import 'dart:convert';

class EventUser {
  int id;
  String name;
  String bio;
  List<String> photoUrls;
  EventUser({
    required this.id,
    required this.name,
    required this.photoUrls,
    required this.bio,
  });

  factory EventUser.fromGqlData(Map data) {
    return EventUser(
      id: data['id'],
      photoUrls: List<String>.from(json.decode(data['photoUrls'] ?? '[]')),
      name: data['name'] ?? '',
      bio: data['bio'] ?? '',
    );
  }
}
