import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/wannago.dart';

class Event {
  int id;
  DateTime createdAt;
  EventUser creator;
  String title;
  String description;
  String? imageUrl;
  DateTime time;
  Gender filterGender;
  String location;
  List<int> relatedInterestIds;
  List<Wannago> wannago;
  List<EventUser> invited;

  Event({
    required this.id,
    required this.createdAt,
    required this.creator,
    required this.title,
    required this.description,
    required this.time,
    required this.relatedInterestIds,
    required this.location,
    required this.filterGender,
    this.wannago = const [],
    this.invited = const [],
    this.imageUrl,
  });

  static Event fromGqlData(Map data) {
    return Event(
      id: data['id'],
      createdAt: DateTime.parse(data['createdAt']),
      creator: EventUser.fromGqlData(data['creator']),
      title: data['title'] ?? '',
      imageUrl: data['pictureUrl'] ?? '',
      time: DateTime.parse(data['time']).toLocal(),
      relatedInterestIds: List<int>.from(
          data['relatedInterests']?.map((obj) => obj['id']).toList() ?? []),
      location: data['location'] ?? [],
      description: data['description'],
      wannago: List<Wannago>.from(
          data['wannago']?.map((obj) => Wannago.fromGqlData(obj)).toList() ??
              []),
      invited: List<EventUser>.from(
          data['invited']?.map((obj) => EventUser.fromGqlData(obj)).toList() ??
              []),
      filterGender: Gender.values.firstWhere((val) {
        return val.toString() ==
            'Gender.' + data['filterGender'].toString().toLowerCase();
      }, orElse: () => Gender.both),
      //filter gender
      //filter radius
      //filter age
      //filter age
    );
  }
}
