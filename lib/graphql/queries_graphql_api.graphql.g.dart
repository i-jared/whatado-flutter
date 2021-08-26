// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'queries_graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Events$Query$EventsApiResponse$Event$User
    _$Events$Query$EventsApiResponse$Event$UserFromJson(
        Map<String, dynamic> json) {
  return Events$Query$EventsApiResponse$Event$User()
    ..id = json['id'] as int
    ..profilePhotoUrl = json['profilePhotoUrl'] as String
    ..username = json['username'] as String;
}

Map<String, dynamic> _$Events$Query$EventsApiResponse$Event$UserToJson(
        Events$Query$EventsApiResponse$Event$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profilePhotoUrl': instance.profilePhotoUrl,
      'username': instance.username,
    };

Events$Query$EventsApiResponse$Event$Interest
    _$Events$Query$EventsApiResponse$Event$InterestFromJson(
        Map<String, dynamic> json) {
  return Events$Query$EventsApiResponse$Event$Interest()
    ..id = json['id'] as int;
}

Map<String, dynamic> _$Events$Query$EventsApiResponse$Event$InterestToJson(
        Events$Query$EventsApiResponse$Event$Interest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Events$Query$EventsApiResponse$Event
    _$Events$Query$EventsApiResponse$EventFromJson(Map<String, dynamic> json) {
  return Events$Query$EventsApiResponse$Event()
    ..id = json['id'] as int
    ..createdAt = fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
    ..updatedAt = fromGraphQLDateTimeToDartDateTime(json['updatedAt'] as String)
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..creator = Events$Query$EventsApiResponse$Event$User.fromJson(
        json['creator'] as Map<String, dynamic>)
    ..time = fromGraphQLDateTimeToDartDateTime(json['time'] as String)
    ..location = json['location'] as String
    ..pictureUrl = json['pictureUrl'] as String?
    ..relatedInterests = (json['relatedInterests'] as List<dynamic>)
        .map((e) => Events$Query$EventsApiResponse$Event$Interest.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..filterLocation = json['filterLocation'] as String
    ..filterRadius = (json['filterRadius'] as num).toDouble()
    ..filterGender = _$enumDecode(_$GenderEnumMap, json['filterGender'],
        unknownValue: Gender.artemisUnknown)
    ..filterAge = json['filterAge'] as String;
}

Map<String, dynamic> _$Events$Query$EventsApiResponse$EventToJson(
        Events$Query$EventsApiResponse$Event instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'updatedAt': fromDartDateTimeToGraphQLDateTime(instance.updatedAt),
      'title': instance.title,
      'description': instance.description,
      'creator': instance.creator.toJson(),
      'time': fromDartDateTimeToGraphQLDateTime(instance.time),
      'location': instance.location,
      'pictureUrl': instance.pictureUrl,
      'relatedInterests':
          instance.relatedInterests.map((e) => e.toJson()).toList(),
      'filterLocation': instance.filterLocation,
      'filterRadius': instance.filterRadius,
      'filterGender': _$GenderEnumMap[instance.filterGender],
      'filterAge': instance.filterAge,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$GenderEnumMap = {
  Gender.both: 'BOTH',
  Gender.female: 'FEMALE',
  Gender.male: 'MALE',
  Gender.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

Events$Query$EventsApiResponse$FieldError
    _$Events$Query$EventsApiResponse$FieldErrorFromJson(
        Map<String, dynamic> json) {
  return Events$Query$EventsApiResponse$FieldError()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$Events$Query$EventsApiResponse$FieldErrorToJson(
        Events$Query$EventsApiResponse$FieldError instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

Events$Query$EventsApiResponse _$Events$Query$EventsApiResponseFromJson(
    Map<String, dynamic> json) {
  return Events$Query$EventsApiResponse()
    ..ok = json['ok'] as bool?
    ..nodes = (json['nodes'] as List<dynamic>?)
        ?.map((e) => Events$Query$EventsApiResponse$Event.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => Events$Query$EventsApiResponse$FieldError.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$Events$Query$EventsApiResponseToJson(
        Events$Query$EventsApiResponse instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

Events$Query _$Events$QueryFromJson(Map<String, dynamic> json) {
  return Events$Query()
    ..events = Events$Query$EventsApiResponse.fromJson(
        json['events'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Events$QueryToJson(Events$Query instance) =>
    <String, dynamic>{
      'events': instance.events.toJson(),
    };

HelloQuery$Query _$HelloQuery$QueryFromJson(Map<String, dynamic> json) {
  return HelloQuery$Query()..hello = json['hello'] as String;
}

Map<String, dynamic> _$HelloQuery$QueryToJson(HelloQuery$Query instance) =>
    <String, dynamic>{
      'hello': instance.hello,
    };

Me$Query$UserApiResponse$User$Interest
    _$Me$Query$UserApiResponse$User$InterestFromJson(
        Map<String, dynamic> json) {
  return Me$Query$UserApiResponse$User$Interest()
    ..id = json['id'] as int
    ..title = json['title'] as String;
}

Map<String, dynamic> _$Me$Query$UserApiResponse$User$InterestToJson(
        Me$Query$UserApiResponse$User$Interest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

Me$Query$UserApiResponse$User$Event
    _$Me$Query$UserApiResponse$User$EventFromJson(Map<String, dynamic> json) {
  return Me$Query$UserApiResponse$User$Event()..id = json['id'] as int;
}

Map<String, dynamic> _$Me$Query$UserApiResponse$User$EventToJson(
        Me$Query$UserApiResponse$User$Event instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Me$Query$UserApiResponse$User$ChatNotification
    _$Me$Query$UserApiResponse$User$ChatNotificationFromJson(
        Map<String, dynamic> json) {
  return Me$Query$UserApiResponse$User$ChatNotification()
    ..notifications = json['notifications'] as int;
}

Map<String, dynamic> _$Me$Query$UserApiResponse$User$ChatNotificationToJson(
        Me$Query$UserApiResponse$User$ChatNotification instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
    };

Me$Query$UserApiResponse$User _$Me$Query$UserApiResponse$UserFromJson(
    Map<String, dynamic> json) {
  return Me$Query$UserApiResponse$User()
    ..id = json['id'] as int
    ..profilePhotoUrl = json['profilePhotoUrl'] as String
    ..email = json['email'] as String
    ..verified = json['verified'] as bool
    ..username = json['username'] as String
    ..birthday = fromGraphQLDateTimeToDartDateTime(json['birthday'] as String)
    ..interests = (json['interests'] as List<dynamic>)
        .map((e) => Me$Query$UserApiResponse$User$Interest.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..myEvents = (json['myEvents'] as List<dynamic>)
        .map((e) => Me$Query$UserApiResponse$User$Event.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..chatNotifications = (json['chatNotifications'] as List<dynamic>)
        .map((e) => Me$Query$UserApiResponse$User$ChatNotification.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$Me$Query$UserApiResponse$UserToJson(
        Me$Query$UserApiResponse$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profilePhotoUrl': instance.profilePhotoUrl,
      'email': instance.email,
      'verified': instance.verified,
      'username': instance.username,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
      'interests': instance.interests.map((e) => e.toJson()).toList(),
      'myEvents': instance.myEvents.map((e) => e.toJson()).toList(),
      'chatNotifications':
          instance.chatNotifications.map((e) => e.toJson()).toList(),
    };

Me$Query$UserApiResponse$FieldError
    _$Me$Query$UserApiResponse$FieldErrorFromJson(Map<String, dynamic> json) {
  return Me$Query$UserApiResponse$FieldError()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$Me$Query$UserApiResponse$FieldErrorToJson(
        Me$Query$UserApiResponse$FieldError instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

Me$Query$UserApiResponse _$Me$Query$UserApiResponseFromJson(
    Map<String, dynamic> json) {
  return Me$Query$UserApiResponse()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] == null
        ? null
        : Me$Query$UserApiResponse$User.fromJson(
            json['nodes'] as Map<String, dynamic>)
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => Me$Query$UserApiResponse$FieldError.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$Me$Query$UserApiResponseToJson(
        Me$Query$UserApiResponse instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

Me$Query _$Me$QueryFromJson(Map<String, dynamic> json) {
  return Me$Query()
    ..me =
        Me$Query$UserApiResponse.fromJson(json['me'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Me$QueryToJson(Me$Query instance) => <String, dynamic>{
      'me': instance.me.toJson(),
    };
