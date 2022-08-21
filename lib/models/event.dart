import 'dart:convert';

import 'package:geojson/geojson.dart';
import 'package:geopoint/geopoint.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/wannago.dart';

import '../graphql/queries_graphql_api.graphql.dart';

class Event {
  int id;
  Privacy privacy;
  DateTime createdAt;
  EventUser creator;
  String title;
  String description;
  String? imageUrl;
  DateTime time;
  Gender filterGender;
  String location;
  GeoJsonPoint coordinates;
  List<int> relatedInterestIds;
  List<Wannago> wannago;
  List<EventUser> invited;
  bool screened;

  Event({
    required this.id,
    required this.privacy,
    required this.createdAt,
    required this.creator,
    required this.title,
    required this.description,
    required this.time,
    required this.relatedInterestIds,
    required this.location,
    required this.coordinates,
    required this.filterGender,
    required this.screened,
    this.wannago = const [],
    this.invited = const [],
    this.imageUrl,
  });

  static Event fromGqlData(Map data) {
    return Event(
      id: data['id'],
      privacy: getPrivacy(data['privacy']),
      createdAt: DateTime.parse(data['createdAt']),
      creator: EventUser.fromGqlData(data['creator']),
      title: data['title'] ?? '',
      imageUrl: data['pictureUrl'],
      screened: data['screened'] ?? true,
      time: DateTime.parse(data['time']).toLocal(),
      relatedInterestIds: List<int>.from(
          data['relatedInterests']?.map((obj) => obj['id']).toList() ?? []),
      location: data['location'] ?? [],
      coordinates: parseCoordinates(data['coordinates']),
      description: data['description'],
      wannago: List<Wannago>.from(
          data['wannago']?.map((obj) => Wannago.fromGqlData(obj)).toList() ?? []),
      invited: List<EventUser>.from(
          data['invited']?.map((obj) => EventUser.fromGqlData(obj)).toList() ?? []),
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

  static GeoJsonPoint parseCoordinates(String? coordinates) {
    GeoJsonPoint defaultReturn =
        GeoJsonPoint(geoPoint: GeoPoint(latitude: 41.7370, longitude: -111.8338));
    if (coordinates == null) {
      return defaultReturn;
    }
    Map<String, dynamic> geojson = Map<String, dynamic>.from(json.decode(coordinates));
    if (geojson['coordinates'] == null || geojson['coordinates'].length < 2) {
      return defaultReturn;
    }
    return GeoJsonPoint(
        geoPoint: GeoPoint(
            latitude: geojson['coordinates'][1] * 1.0,
            longitude: geojson['coordinates'][0] * 1.0));
  }

  static Privacy getPrivacy(String? data) {
    if (data == 'PUBLIC') {
      return Privacy.public;
    }
    if (data == 'PRIVATE') {
      return Privacy.private;
    }
    return Privacy.group;
  }
}
