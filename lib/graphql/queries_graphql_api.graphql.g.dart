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

EventUserPreview$Query$UsersById$Errors
    _$EventUserPreview$Query$UsersById$ErrorsFromJson(
        Map<String, dynamic> json) {
  return EventUserPreview$Query$UsersById$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$EventUserPreview$Query$UsersById$ErrorsToJson(
        EventUserPreview$Query$UsersById$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

EventUserPreview$Query$UsersById$Nodes
    _$EventUserPreview$Query$UsersById$NodesFromJson(
        Map<String, dynamic> json) {
  return EventUserPreview$Query$UsersById$Nodes()
    ..id = json['id'] as int
    ..profilePhotoUrl = json['profilePhotoUrl'] as String
    ..username = json['username'] as String;
}

Map<String, dynamic> _$EventUserPreview$Query$UsersById$NodesToJson(
        EventUserPreview$Query$UsersById$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profilePhotoUrl': instance.profilePhotoUrl,
      'username': instance.username,
    };

EventUserPreview$Query$UsersById _$EventUserPreview$Query$UsersByIdFromJson(
    Map<String, dynamic> json) {
  return EventUserPreview$Query$UsersById()
    ..ok = json['ok'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => EventUserPreview$Query$UsersById$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..nodes = (json['nodes'] as List<dynamic>?)
        ?.map((e) => EventUserPreview$Query$UsersById$Nodes.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$EventUserPreview$Query$UsersByIdToJson(
        EventUserPreview$Query$UsersById instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
    };

EventUserPreview$Query _$EventUserPreview$QueryFromJson(
    Map<String, dynamic> json) {
  return EventUserPreview$Query()
    ..usersById = EventUserPreview$Query$UsersById.fromJson(
        json['usersById'] as Map<String, dynamic>);
}

Map<String, dynamic> _$EventUserPreview$QueryToJson(
        EventUserPreview$Query instance) =>
    <String, dynamic>{
      'usersById': instance.usersById.toJson(),
    };

ForumsByEventId$Query$ForumsByEventId$Errors
    _$ForumsByEventId$Query$ForumsByEventId$ErrorsFromJson(
        Map<String, dynamic> json) {
  return ForumsByEventId$Query$ForumsByEventId$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$ForumsByEventId$Query$ForumsByEventId$ErrorsToJson(
        ForumsByEventId$Query$ForumsByEventId$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

ForumsByEventId$Query$ForumsByEventId$Nodes$UserNotifications
    _$ForumsByEventId$Query$ForumsByEventId$Nodes$UserNotificationsFromJson(
        Map<String, dynamic> json) {
  return ForumsByEventId$Query$ForumsByEventId$Nodes$UserNotifications()
    ..id = json['id'] as int
    ..notifications = json['notifications'] as int
    ..muted = json['muted'] as bool;
}

Map<String, dynamic>
    _$ForumsByEventId$Query$ForumsByEventId$Nodes$UserNotificationsToJson(
            ForumsByEventId$Query$ForumsByEventId$Nodes$UserNotifications
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'notifications': instance.notifications,
          'muted': instance.muted,
        };

ForumsByEventId$Query$ForumsByEventId$Nodes$Event
    _$ForumsByEventId$Query$ForumsByEventId$Nodes$EventFromJson(
        Map<String, dynamic> json) {
  return ForumsByEventId$Query$ForumsByEventId$Nodes$Event()
    ..id = json['id'] as int;
}

Map<String, dynamic> _$ForumsByEventId$Query$ForumsByEventId$Nodes$EventToJson(
        ForumsByEventId$Query$ForumsByEventId$Nodes$Event instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ForumsByEventId$Query$ForumsByEventId$Nodes
    _$ForumsByEventId$Query$ForumsByEventId$NodesFromJson(
        Map<String, dynamic> json) {
  return ForumsByEventId$Query$ForumsByEventId$Nodes()
    ..id = json['id'] as int
    ..userNotifications = (json['userNotifications'] as List<dynamic>)
        .map((e) =>
            ForumsByEventId$Query$ForumsByEventId$Nodes$UserNotifications
                .fromJson(e as Map<String, dynamic>))
        .toList()
    ..event = ForumsByEventId$Query$ForumsByEventId$Nodes$Event.fromJson(
        json['event'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ForumsByEventId$Query$ForumsByEventId$NodesToJson(
        ForumsByEventId$Query$ForumsByEventId$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userNotifications':
          instance.userNotifications.map((e) => e.toJson()).toList(),
      'event': instance.event.toJson(),
    };

ForumsByEventId$Query$ForumsByEventId
    _$ForumsByEventId$Query$ForumsByEventIdFromJson(Map<String, dynamic> json) {
  return ForumsByEventId$Query$ForumsByEventId()
    ..ok = json['ok'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => ForumsByEventId$Query$ForumsByEventId$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..nodes = (json['nodes'] as List<dynamic>?)
        ?.map((e) => ForumsByEventId$Query$ForumsByEventId$Nodes.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$ForumsByEventId$Query$ForumsByEventIdToJson(
        ForumsByEventId$Query$ForumsByEventId instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
    };

ForumsByEventId$Query _$ForumsByEventId$QueryFromJson(
    Map<String, dynamic> json) {
  return ForumsByEventId$Query()
    ..forumsByEventId = ForumsByEventId$Query$ForumsByEventId.fromJson(
        json['forumsByEventId'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ForumsByEventId$QueryToJson(
        ForumsByEventId$Query instance) =>
    <String, dynamic>{
      'forumsByEventId': instance.forumsByEventId.toJson(),
    };

HelloQuery$Query _$HelloQuery$QueryFromJson(Map<String, dynamic> json) {
  return HelloQuery$Query()..hello = json['hello'] as String;
}

Map<String, dynamic> _$HelloQuery$QueryToJson(HelloQuery$Query instance) =>
    <String, dynamic>{
      'hello': instance.hello,
    };

LastChat$Query$LastChat$Errors _$LastChat$Query$LastChat$ErrorsFromJson(
    Map<String, dynamic> json) {
  return LastChat$Query$LastChat$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$LastChat$Query$LastChat$ErrorsToJson(
        LastChat$Query$LastChat$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

LastChat$Query$LastChat$Nodes$Author
    _$LastChat$Query$LastChat$Nodes$AuthorFromJson(Map<String, dynamic> json) {
  return LastChat$Query$LastChat$Nodes$Author()
    ..id = json['id'] as int
    ..username = json['username'] as String
    ..profilePhotoUrl = json['profilePhotoUrl'] as String;
}

Map<String, dynamic> _$LastChat$Query$LastChat$Nodes$AuthorToJson(
        LastChat$Query$LastChat$Nodes$Author instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profilePhotoUrl': instance.profilePhotoUrl,
    };

LastChat$Query$LastChat$Nodes _$LastChat$Query$LastChat$NodesFromJson(
    Map<String, dynamic> json) {
  return LastChat$Query$LastChat$Nodes()
    ..id = json['id'] as int
    ..text = json['text'] as String
    ..createdAt = fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
    ..author = LastChat$Query$LastChat$Nodes$Author.fromJson(
        json['author'] as Map<String, dynamic>);
}

Map<String, dynamic> _$LastChat$Query$LastChat$NodesToJson(
        LastChat$Query$LastChat$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'createdAt': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'author': instance.author.toJson(),
    };

LastChat$Query$LastChat _$LastChat$Query$LastChatFromJson(
    Map<String, dynamic> json) {
  return LastChat$Query$LastChat()
    ..ok = json['ok'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) =>
            LastChat$Query$LastChat$Errors.fromJson(e as Map<String, dynamic>))
        .toList()
    ..nodes = json['nodes'] == null
        ? null
        : LastChat$Query$LastChat$Nodes.fromJson(
            json['nodes'] as Map<String, dynamic>);
}

Map<String, dynamic> _$LastChat$Query$LastChatToJson(
        LastChat$Query$LastChat instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'nodes': instance.nodes?.toJson(),
    };

LastChat$Query _$LastChat$QueryFromJson(Map<String, dynamic> json) {
  return LastChat$Query()
    ..lastChat = LastChat$Query$LastChat.fromJson(
        json['lastChat'] as Map<String, dynamic>);
}

Map<String, dynamic> _$LastChat$QueryToJson(LastChat$Query instance) =>
    <String, dynamic>{
      'lastChat': instance.lastChat.toJson(),
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
    ..notifications = json['notifications'] as int
    ..muted = json['muted'] as bool;
}

Map<String, dynamic> _$Me$Query$Me$Nodes$ChatNotificationsToJson(
        Me$Query$Me$Nodes$ChatNotifications instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
      'muted': instance.muted,
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

MyEvents$Query$MyEvents$Nodes$Invited
    _$MyEvents$Query$MyEvents$Nodes$InvitedFromJson(Map<String, dynamic> json) {
  return MyEvents$Query$MyEvents$Nodes$Invited()..id = json['id'] as int;
}

Map<String, dynamic> _$MyEvents$Query$MyEvents$Nodes$InvitedToJson(
        MyEvents$Query$MyEvents$Nodes$Invited instance) =>
    <String, dynamic>{
      'id': instance.id,
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
    ..invited = (json['invited'] as List<dynamic>)
        .map((e) => MyEvents$Query$MyEvents$Nodes$Invited.fromJson(
            e as Map<String, dynamic>))
        .toList()
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

Chats$Query$Chats$Nodes$Author _$Chats$Query$Chats$Nodes$AuthorFromJson(
    Map<String, dynamic> json) {
  return Chats$Query$Chats$Nodes$Author()
    ..id = json['id'] as int
    ..profilePhotoUrl = json['profilePhotoUrl'] as String
    ..username = json['username'] as String;
}

Map<String, dynamic> _$Chats$Query$Chats$Nodes$AuthorToJson(
        Chats$Query$Chats$Nodes$Author instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profilePhotoUrl': instance.profilePhotoUrl,
      'username': instance.username,
    };

Chats$Query$Chats$Nodes _$Chats$Query$Chats$NodesFromJson(
    Map<String, dynamic> json) {
  return Chats$Query$Chats$Nodes()
    ..id = json['id'] as int
    ..createdAt = fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
    ..text = json['text'] as String
    ..author = Chats$Query$Chats$Nodes$Author.fromJson(
        json['author'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Chats$Query$Chats$NodesToJson(
        Chats$Query$Chats$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'text': instance.text,
      'author': instance.author.toJson(),
    };

Chats$Query$Chats$Errors _$Chats$Query$Chats$ErrorsFromJson(
    Map<String, dynamic> json) {
  return Chats$Query$Chats$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$Chats$Query$Chats$ErrorsToJson(
        Chats$Query$Chats$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

Chats$Query$Chats _$Chats$Query$ChatsFromJson(Map<String, dynamic> json) {
  return Chats$Query$Chats()
    ..ok = json['ok'] as bool?
    ..nodes = (json['nodes'] as List<dynamic>?)
        ?.map(
            (e) => Chats$Query$Chats$Nodes.fromJson(e as Map<String, dynamic>))
        .toList()
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map(
            (e) => Chats$Query$Chats$Errors.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$Chats$Query$ChatsToJson(Chats$Query$Chats instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

Chats$Query _$Chats$QueryFromJson(Map<String, dynamic> json) {
  return Chats$Query()
    ..chats = Chats$Query$Chats.fromJson(json['chats'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Chats$QueryToJson(Chats$Query instance) =>
    <String, dynamic>{
      'chats': instance.chats.toJson(),
    };

EventUserPreviewArguments _$EventUserPreviewArgumentsFromJson(
    Map<String, dynamic> json) {
  return EventUserPreviewArguments(
    userIds: (json['userIds'] as List<dynamic>).map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$EventUserPreviewArgumentsToJson(
        EventUserPreviewArguments instance) =>
    <String, dynamic>{
      'userIds': instance.userIds,
    };

ForumsByEventIdArguments _$ForumsByEventIdArgumentsFromJson(
    Map<String, dynamic> json) {
  return ForumsByEventIdArguments(
    eventIds: (json['eventIds'] as List<dynamic>).map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$ForumsByEventIdArgumentsToJson(
        ForumsByEventIdArguments instance) =>
    <String, dynamic>{
      'eventIds': instance.eventIds,
    };

LastChatArguments _$LastChatArgumentsFromJson(Map<String, dynamic> json) {
  return LastChatArguments(
    forumId: json['forumId'] as int,
  );
}

Map<String, dynamic> _$LastChatArgumentsToJson(LastChatArguments instance) =>
    <String, dynamic>{
      'forumId': instance.forumId,
    };

ChatsArguments _$ChatsArgumentsFromJson(Map<String, dynamic> json) {
  return ChatsArguments(
    forumId: json['forumId'] as int,
  );
}

Map<String, dynamic> _$ChatsArgumentsToJson(ChatsArguments instance) =>
    <String, dynamic>{
      'forumId': instance.forumId,
    };
