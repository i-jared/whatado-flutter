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
    print(data);
    return Event(
      id: data['id'],
      createdAt: DateTime.parse(data['createdAt']),
      creator: EventUser.fromGqlData(data['creator']),
      title: data['title'] ?? '',
      imageUrl: data['pictureUrl'] ?? '',
      time: DateTime.parse(data['time']),
      relatedInterestIds: List<int>.from(
          data['relatedInterests'].map((obj) => obj['id']).toList() ?? []),
      location: data['location'] ?? [],
      description: data['description'],
      //filter gender
      //filter radius
      //filter age
      //filter age
    );
  }
}
