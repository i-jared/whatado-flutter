//DateTime conversion
import 'dart:convert';

import 'package:geojson/geojson.dart';
import 'package:geopoint/geopoint.dart';

DateTime fromGraphQLDateTimeToDartDateTime(String date) => DateTime.parse(date).toLocal();
String fromDartDateTimeToGraphQLDateTime(DateTime date) => date.toUtc().toIso8601String();
List<DateTime> fromGraphQLListDateTimeToDartListDateTime(List<String> dates) =>
    dates.map(fromGraphQLDateTimeToDartDateTime).toList();
List<String> fromDartListDateTimeToGraphQLListDateTime(List<DateTime> dates) =>
    dates.map(fromDartDateTimeToGraphQLDateTime).toList();

//GeoPoint conversion
GeoJsonPoint fromGraphQLPointToDartGeoJsonPoint(String point) {
  Map<String, double> longlat = json.decode(point);
  return GeoJsonPoint(
      geoPoint: GeoPoint(latitude: longlat['y']!, longitude: longlat['x']!));
}

String fromDartGeoJsonPointToGraphQLPoint(GeoJsonPoint point) =>
    '[${point.geoPoint.longitude},${point.geoPoint.latitude}]';
String? fromDartGeoJsonPointNullableToGraphQLPointNullable(GeoJsonPoint? point) {
  return point == null
      ? null
      : '[${point.geoPoint.longitude},${point.geoPoint.latitude}]';
}

GeoJsonPoint? fromGraphQLPointNullableToDartGeoJsonPointNullable(String? point) {
  if (point == null) return null;
  Map<String, double> longlat = json.decode(point);
  return GeoJsonPoint(
      geoPoint: GeoPoint(latitude: longlat['y']!, longitude: longlat['x']!));
}

String? fromDartGeoJsonPointToGraphQLPointNullable(GeoJsonPoint point) {
  return '[${point.geoPoint.longitude},${point.geoPoint.latitude}]';
}

GeoJsonPoint? fromGraphQLPointToDartGeoJsonPointNullable(String point) {
  Map<String, double> longlat = json.decode(point);
  return GeoJsonPoint(
      geoPoint: GeoPoint(latitude: longlat['y']!, longitude: longlat['x']!));
}

// Nullable DateTime conversion
DateTime? fromGraphQLDateTimeToDartDateTimeNullable(String date) =>
    DateTime.parse(date).toLocal();
DateTime? fromGraphQLDateTimeNullableToDartDateTimeNullable(String? date) =>
    date == null ? null : DateTime.parse(date).toLocal();
String? fromDartDateTimeToGraphQLDateTimeNullable(DateTime date) =>
    date.toUtc().toIso8601String();
String? fromDartDateTimeNullableToGraphQLDateTimeNullable(DateTime? date) =>
    date == null ? null : date.toUtc().toIso8601String();
List<DateTime?> fromGraphQLListDateTimeToDartListDateTimeNullable(List<String> dates) =>
    dates.map(fromGraphQLDateTimeToDartDateTimeNullable).toList();
List<DateTime?> fromGraphQLListNullableDateTimeToDartListDateTimeNullable(
        List<String>? dates) =>
    dates == null ? [] : dates.map(fromGraphQLDateTimeToDartDateTimeNullable).toList();
List<DateTime>? fromGraphQLListNullableDateTimeToDartListNullableDateTime(
        List<String>? dates) =>
    dates == null ? null : dates.map(fromGraphQLDateTimeToDartDateTime).toList();
List<DateTime?>?
    fromGraphQLListNullableDateTimeNullableToDartListNullableDateTimeNullable(
            List<String>? dates) =>
        dates == null
            ? null
            : dates.map(fromGraphQLDateTimeToDartDateTimeNullable).toList();
List<String?> fromDartListDateTimeToGraphQLListDateTimeNullable(List<DateTime> dates) =>
    dates.map(fromDartDateTimeToGraphQLDateTimeNullable).toList();
List<String>? fromDartListNullableDateTimeToGraphQLListNullableDateTime(
        List<DateTime>? dates) =>
    dates == null ? null : dates.map(fromDartDateTimeToGraphQLDateTime).toList();
List<String?>? fromDartListNullableDateTimeNullableToGraphQLListNullableDateTimeNullable(
        List<DateTime?>? dates) =>
    dates == null
        ? null
        : dates.map(fromDartDateTimeNullableToGraphQLDateTimeNullable).toList();
