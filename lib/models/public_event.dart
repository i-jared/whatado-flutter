import 'dart:convert';

import 'package:geojson/geojson.dart';
import 'package:geopoint/geopoint.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/wannago.dart';

import '../graphql/queries_graphql_api.graphql.dart';

class PublicEvent {
  int id;
  Privacy privacy;
  DateTime createdAt;
  PublicUser creator;
  String title;
  String description;
  String? imageUrl;
  DateTime time;
  Gender filterGender;
  List<int> relatedInterestIds;
  List<Wannago> wannago;
  List<PublicUser> invited;
  bool screened;

  PublicEvent({
    required this.id,
    required this.privacy,
    required this.createdAt,
    required this.creator,
    required this.title,
    required this.description,
    required this.time,
    required this.relatedInterestIds,
    required this.filterGender,
    required this.screened,
    this.wannago = const [],
    this.invited = const [],
    this.imageUrl,
  });

  static PublicEvent fromGqlData(Map data) {
    return PublicEvent(
      id: data['id'],
      privacy: getPrivacy(data['privacy']),
      createdAt: DateTime.parse(data['createdAt']),
      creator: PublicUser.fromGqlData(data['creator']),
      title: data['title'] ?? '',
      imageUrl: data['pictureUrl'],
      screened: data['screened'] ?? true,
      time: DateTime.parse(data['time']).toLocal(),
      relatedInterestIds:
          List<int>.from(data['relatedInterests']?.map((obj) => obj['id']).toList() ?? []),
      description: data['description'],
      wannago: List<Wannago>.from(
          data['wannago']?.map((obj) => Wannago.fromGqlData(obj)).toList() ?? []),
      invited: List<PublicUser>.from(
          data['invited']?.map((obj) => PublicUser.fromGqlData(obj)).toList() ?? []),
      filterGender: Gender.values.firstWhere((val) {
        return val.toString() == 'Gender.' + data['filterGender'].toString().toLowerCase();
      }, orElse: () => Gender.both),
    );
  }

  static PublicEvent fromEvent(Event event) {
    return PublicEvent(
        createdAt: event.createdAt,
        creator: event.creator,
        description: event.description,
        filterGender: event.filterGender,
        id: event.id,
        privacy: event.privacy,
        relatedInterestIds: event.relatedInterestIds,
        screened: event.screened,
        time: event.time,
        title: event.title,
        imageUrl: event.imageUrl,
        invited: event.invited,
        wannago: event.wannago);
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
