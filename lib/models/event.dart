import 'package:whatado/models/event_user.dart';

class Event {
  int id;
  DateTime createdAt;
  EventUser creator;
  String title;
  String description;
  String imageUrl;
  DateTime time;
  String location;
  List<int> relatedInterestIds;

  Event(
      {required this.id,
      required this.createdAt,
      required this.creator,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.time,
      required this.relatedInterestIds,
      required this.location});

  static Event fromGqlData(Map data) {
    return Event(
      id: data['id'],
      createdAt: DateTime.parse(data['createdAt']),
      creator: EventUser.fromGqlData(data['creator']),
      title: data['title'] ?? '',
      imageUrl: data['profilePhotoUrl'] ?? '',
      time: DateTime.parse(data['time']),
      relatedInterestIds: data['relatedInterests'] ?? '',
      location: data['location'] ?? [],
      description: data['description'],
    );
  }
}
