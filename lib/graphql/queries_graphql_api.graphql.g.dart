// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'queries_graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Events$Query$Events$Nodes$Creator _$Events$Query$Events$Nodes$CreatorFromJson(
    Map<String, dynamic> json) {
  return Events$Query$Events$Nodes$Creator()
    ..id = json['id'] as int
    ..profilePhotoUrl = json['profilePhotoUrl'] as String
    ..username = json['username'] as String;
}

Map<String, dynamic> _$Events$Query$Events$Nodes$CreatorToJson(
        Events$Query$Events$Nodes$Creator instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profilePhotoUrl': instance.profilePhotoUrl,
      'username': instance.username,
    };

Events$Query$Events$Nodes$Wannago _$Events$Query$Events$Nodes$WannagoFromJson(
    Map<String, dynamic> json) {
  return Events$Query$Events$Nodes$Wannago()..id = json['id'] as int;
}

Map<String, dynamic> _$Events$Query$Events$Nodes$WannagoToJson(
        Events$Query$Events$Nodes$Wannago instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Events$Query$Events$Nodes$Invited _$Events$Query$Events$Nodes$InvitedFromJson(
    Map<String, dynamic> json) {
  return Events$Query$Events$Nodes$Invited()..id = json['id'] as int;
}

Map<String, dynamic> _$Events$Query$Events$Nodes$InvitedToJson(
        Events$Query$Events$Nodes$Invited instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Events$Query$Events$Nodes$RelatedInterests
    _$Events$Query$Events$Nodes$RelatedInterestsFromJson(
        Map<String, dynamic> json) {
  return Events$Query$Events$Nodes$RelatedInterests()..id = json['id'] as int;
}

Map<String, dynamic> _$Events$Query$Events$Nodes$RelatedInterestsToJson(
        Events$Query$Events$Nodes$RelatedInterests instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Events$Query$Events$Nodes _$Events$Query$Events$NodesFromJson(
    Map<String, dynamic> json) {
  return Events$Query$Events$Nodes()
    ..id = json['id'] as int
    ..createdAt = fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
    ..updatedAt = fromGraphQLDateTimeToDartDateTime(json['updatedAt'] as String)
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..creator = Events$Query$Events$Nodes$Creator.fromJson(
        json['creator'] as Map<String, dynamic>)
    ..wannago = (json['wannago'] as List<dynamic>)
        .map((e) => Events$Query$Events$Nodes$Wannago.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..invited = (json['invited'] as List<dynamic>)
        .map((e) => Events$Query$Events$Nodes$Invited.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..time = fromGraphQLDateTimeToDartDateTime(json['time'] as String)
    ..location = json['location'] as String
    ..pictureUrl = json['pictureUrl'] as String?
    ..relatedInterests = (json['relatedInterests'] as List<dynamic>)
        .map((e) => Events$Query$Events$Nodes$RelatedInterests.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..filterLocation = json['filterLocation'] as String
    ..filterRadius = (json['filterRadius'] as num).toDouble()
    ..filterGender = _$enumDecode(_$GenderEnumMap, json['filterGender'],
        unknownValue: Gender.artemisUnknown)
    ..filterAge = json['filterAge'] as String;
}

Map<String, dynamic> _$Events$Query$Events$NodesToJson(
        Events$Query$Events$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'updatedAt': fromDartDateTimeToGraphQLDateTime(instance.updatedAt),
      'title': instance.title,
      'description': instance.description,
      'creator': instance.creator.toJson(),
      'wannago': instance.wannago.map((e) => e.toJson()).toList(),
      'invited': instance.invited.map((e) => e.toJson()).toList(),
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

Events$Query$Events$Errors _$Events$Query$Events$ErrorsFromJson(
    Map<String, dynamic> json) {
  return Events$Query$Events$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$Events$Query$Events$ErrorsToJson(
        Events$Query$Events$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

Events$Query$Events _$Events$Query$EventsFromJson(Map<String, dynamic> json) {
  return Events$Query$Events()
    ..ok = json['ok'] as bool?
    ..nodes = (json['nodes'] as List<dynamic>?)
        ?.map((e) =>
            Events$Query$Events$Nodes.fromJson(e as Map<String, dynamic>))
        .toList()
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) =>
            Events$Query$Events$Errors.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$Events$Query$EventsToJson(
        Events$Query$Events instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

Events$Query _$Events$QueryFromJson(Map<String, dynamic> json) {
  return Events$Query()
    ..events =
        Events$Query$Events.fromJson(json['events'] as Map<String, dynamic>);
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

Me$Query$Me$Nodes$Interests _$Me$Query$Me$Nodes$InterestsFromJson(
    Map<String, dynamic> json) {
  return Me$Query$Me$Nodes$Interests()
    ..id = json['id'] as int
    ..title = json['title'] as String;
}

Map<String, dynamic> _$Me$Query$Me$Nodes$InterestsToJson(
        Me$Query$Me$Nodes$Interests instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

Me$Query$Me$Nodes$MyEvents _$Me$Query$Me$Nodes$MyEventsFromJson(
    Map<String, dynamic> json) {
  return Me$Query$Me$Nodes$MyEvents()..id = json['id'] as int;
}

Map<String, dynamic> _$Me$Query$Me$Nodes$MyEventsToJson(
        Me$Query$Me$Nodes$MyEvents instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Me$Query$Me$Nodes$ChatNotifications
    _$Me$Query$Me$Nodes$ChatNotificationsFromJson(Map<String, dynamic> json) {
  return Me$Query$Me$Nodes$ChatNotifications()
    ..notifications = json['notifications'] as int;
}

Map<String, dynamic> _$Me$Query$Me$Nodes$ChatNotificationsToJson(
        Me$Query$Me$Nodes$ChatNotifications instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
    };

Me$Query$Me$Nodes _$Me$Query$Me$NodesFromJson(Map<String, dynamic> json) {
  return Me$Query$Me$Nodes()
    ..id = json['id'] as int
    ..profilePhotoUrl = json['profilePhotoUrl'] as String
    ..email = json['email'] as String
    ..verified = json['verified'] as bool
    ..username = json['username'] as String
    ..birthday = fromGraphQLDateTimeToDartDateTime(json['birthday'] as String)
    ..interests = (json['interests'] as List<dynamic>)
        .map((e) =>
            Me$Query$Me$Nodes$Interests.fromJson(e as Map<String, dynamic>))
        .toList()
    ..myEvents = (json['myEvents'] as List<dynamic>)
        .map((e) =>
            Me$Query$Me$Nodes$MyEvents.fromJson(e as Map<String, dynamic>))
        .toList()
    ..chatNotifications = (json['chatNotifications'] as List<dynamic>)
        .map((e) => Me$Query$Me$Nodes$ChatNotifications.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$Me$Query$Me$NodesToJson(Me$Query$Me$Nodes instance) =>
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

Me$Query$Me$Errors _$Me$Query$Me$ErrorsFromJson(Map<String, dynamic> json) {
  return Me$Query$Me$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$Me$Query$Me$ErrorsToJson(Me$Query$Me$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

Me$Query$Me _$Me$Query$MeFromJson(Map<String, dynamic> json) {
  return Me$Query$Me()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] == null
        ? null
        : Me$Query$Me$Nodes.fromJson(json['nodes'] as Map<String, dynamic>)
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => Me$Query$Me$Errors.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$Me$Query$MeToJson(Me$Query$Me instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

Me$Query _$Me$QueryFromJson(Map<String, dynamic> json) {
  return Me$Query()
    ..me = Me$Query$Me.fromJson(json['me'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Me$QueryToJson(Me$Query instance) => <String, dynamic>{
      'me': instance.me.toJson(),
    };

MyEvents$Query$MyEvents$Nodes$Creator
    _$MyEvents$Query$MyEvents$Nodes$CreatorFromJson(Map<String, dynamic> json) {
  return MyEvents$Query$MyEvents$Nodes$Creator()
    ..id = json['id'] as int
    ..profilePhotoUrl = json['profilePhotoUrl'] as String
    ..username = json['username'] as String;
}

Map<String, dynamic> _$MyEvents$Query$MyEvents$Nodes$CreatorToJson(
        MyEvents$Query$MyEvents$Nodes$Creator instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profilePhotoUrl': instance.profilePhotoUrl,
      'username': instance.username,
    };

MyEvents$Query$MyEvents$Nodes$RelatedInterests
    _$MyEvents$Query$MyEvents$Nodes$RelatedInterestsFromJson(
        Map<String, dynamic> json) {
  return MyEvents$Query$MyEvents$Nodes$RelatedInterests()
    ..id = json['id'] as int;
}

Map<String, dynamic> _$MyEvents$Query$MyEvents$Nodes$RelatedInterestsToJson(
        MyEvents$Query$MyEvents$Nodes$RelatedInterests instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

MyEvents$Query$MyEvents$Nodes _$MyEvents$Query$MyEvents$NodesFromJson(
    Map<String, dynamic> json) {
  return MyEvents$Query$MyEvents$Nodes()
    ..id = json['id'] as int
    ..createdAt = fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
    ..updatedAt = fromGraphQLDateTimeToDartDateTime(json['updatedAt'] as String)
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..creator = MyEvents$Query$MyEvents$Nodes$Creator.fromJson(
        json['creator'] as Map<String, dynamic>)
    ..time = fromGraphQLDateTimeToDartDateTime(json['time'] as String)
    ..location = json['location'] as String
    ..pictureUrl = json['pictureUrl'] as String?
    ..relatedInterests = (json['relatedInterests'] as List<dynamic>)
        .map((e) => MyEvents$Query$MyEvents$Nodes$RelatedInterests.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..filterLocation = json['filterLocation'] as String
    ..filterRadius = (json['filterRadius'] as num).toDouble()
    ..filterGender = _$enumDecode(_$GenderEnumMap, json['filterGender'],
        unknownValue: Gender.artemisUnknown)
    ..filterAge = json['filterAge'] as String;
}

Map<String, dynamic> _$MyEvents$Query$MyEvents$NodesToJson(
        MyEvents$Query$MyEvents$Nodes instance) =>
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

MyEvents$Query$MyEvents$Errors _$MyEvents$Query$MyEvents$ErrorsFromJson(
    Map<String, dynamic> json) {
  return MyEvents$Query$MyEvents$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$MyEvents$Query$MyEvents$ErrorsToJson(
        MyEvents$Query$MyEvents$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

MyEvents$Query$MyEvents _$MyEvents$Query$MyEventsFromJson(
    Map<String, dynamic> json) {
  return MyEvents$Query$MyEvents()
    ..ok = json['ok'] as bool?
    ..nodes = (json['nodes'] as List<dynamic>?)
        ?.map((e) =>
            MyEvents$Query$MyEvents$Nodes.fromJson(e as Map<String, dynamic>))
        .toList()
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) =>
            MyEvents$Query$MyEvents$Errors.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$MyEvents$Query$MyEventsToJson(
        MyEvents$Query$MyEvents instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

MyEvents$Query _$MyEvents$QueryFromJson(Map<String, dynamic> json) {
  return MyEvents$Query()
    ..myEvents = MyEvents$Query$MyEvents.fromJson(
        json['myEvents'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MyEvents$QueryToJson(MyEvents$Query instance) =>
    <String, dynamic>{
      'myEvents': instance.myEvents.toJson(),
    };
