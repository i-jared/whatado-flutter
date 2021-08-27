import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/models/event_user.dart';

// TODO: make events just hold ids... extend class for models with full member data
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
  List<int> wannagoIds;
  List<int> invitedIds;

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
    this.wannagoIds = const [],
    this.invitedIds = const [],
    this.imageUrl,
  });

  static Event fromGqlData(Map data) {
    return Event(
      id: data['id'],
      createdAt: DateTime.parse(data['createdAt']),
      creator: EventUser.fromGqlData(data['creator']),
      title: data['title'] ?? '',
      imageUrl: data['pictureUrl'] ?? '',
      time: DateTime.parse(data['time']),
      relatedInterestIds: List<int>.from(
          data['relatedInterests']?.map((obj) => obj['id']).toList() ?? []),
      location: data['location'] ?? [],
      description: data['description'],
      wannagoIds: List<int>.from(
          data['wannago']?.map((obj) => obj['id']).toList() ?? []),
      invitedIds: List<int>.from(
          data['invited']?.map((obj) => obj['id']).toList() ?? []),
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
