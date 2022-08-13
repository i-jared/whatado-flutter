// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'queries_graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlaggedChats$Query$FlaggedChats$Nodes$Author
    _$FlaggedChats$Query$FlaggedChats$Nodes$AuthorFromJson(
            Map<String, dynamic> json) =>
        FlaggedChats$Query$FlaggedChats$Nodes$Author()
          ..id = json['id'] as int
          ..name = json['name'] as String
          ..photoUrls = json['photoUrls'] as String
          ..bio = json['bio'] as String
          ..birthday =
              fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic> _$FlaggedChats$Query$FlaggedChats$Nodes$AuthorToJson(
        FlaggedChats$Query$FlaggedChats$Nodes$Author instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

FlaggedChats$Query$FlaggedChats$Nodes
    _$FlaggedChats$Query$FlaggedChats$NodesFromJson(
            Map<String, dynamic> json) =>
        FlaggedChats$Query$FlaggedChats$Nodes()
          ..id = json['id'] as int
          ..createdAt =
              fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
          ..text = json['text'] as String
          ..author = FlaggedChats$Query$FlaggedChats$Nodes$Author.fromJson(
              json['author'] as Map<String, dynamic>);

Map<String, dynamic> _$FlaggedChats$Query$FlaggedChats$NodesToJson(
        FlaggedChats$Query$FlaggedChats$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'text': instance.text,
      'author': instance.author.toJson(),
    };

FlaggedChats$Query$FlaggedChats$Errors
    _$FlaggedChats$Query$FlaggedChats$ErrorsFromJson(
            Map<String, dynamic> json) =>
        FlaggedChats$Query$FlaggedChats$Errors()
          ..field = json['field'] as String?
          ..message = json['message'] as String;

Map<String, dynamic> _$FlaggedChats$Query$FlaggedChats$ErrorsToJson(
        FlaggedChats$Query$FlaggedChats$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

FlaggedChats$Query$FlaggedChats _$FlaggedChats$Query$FlaggedChatsFromJson(
        Map<String, dynamic> json) =>
    FlaggedChats$Query$FlaggedChats()
      ..ok = json['ok'] as bool?
      ..nodes = (json['nodes'] as List<dynamic>?)
          ?.map((e) => FlaggedChats$Query$FlaggedChats$Nodes.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map((e) => FlaggedChats$Query$FlaggedChats$Errors.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FlaggedChats$Query$FlaggedChatsToJson(
        FlaggedChats$Query$FlaggedChats instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

FlaggedChats$Query _$FlaggedChats$QueryFromJson(Map<String, dynamic> json) =>
    FlaggedChats$Query()
      ..flaggedChats = FlaggedChats$Query$FlaggedChats.fromJson(
          json['flaggedChats'] as Map<String, dynamic>);

Map<String, dynamic> _$FlaggedChats$QueryToJson(FlaggedChats$Query instance) =>
    <String, dynamic>{
      'flaggedChats': instance.flaggedChats.toJson(),
    };

User$Query$User$Nodes _$User$Query$User$NodesFromJson(
        Map<String, dynamic> json) =>
    User$Query$User$Nodes()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..photoUrls = json['photoUrls'] as String
      ..bio = json['bio'] as String
      ..birthday =
          fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic> _$User$Query$User$NodesToJson(
        User$Query$User$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

User$Query$User$Errors _$User$Query$User$ErrorsFromJson(
        Map<String, dynamic> json) =>
    User$Query$User$Errors()
      ..field = json['field'] as String?
      ..message = json['message'] as String;

Map<String, dynamic> _$User$Query$User$ErrorsToJson(
        User$Query$User$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

User$Query$User _$User$Query$UserFromJson(Map<String, dynamic> json) =>
    User$Query$User()
      ..ok = json['ok'] as bool?
      ..nodes = json['nodes'] == null
          ? null
          : User$Query$User$Nodes.fromJson(
              json['nodes'] as Map<String, dynamic>)
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map(
              (e) => User$Query$User$Errors.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$User$Query$UserToJson(User$Query$User instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

User$Query _$User$QueryFromJson(Map<String, dynamic> json) => User$Query()
  ..user = User$Query$User.fromJson(json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$User$QueryToJson(User$Query instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

Events$Query$Events$Nodes _$Events$Query$Events$NodesFromJson(
        Map<String, dynamic> json) =>
    Events$Query$Events$Nodes()
      ..id = json['id'] as int
      ..createdAt =
          fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
      ..updatedAt =
          fromGraphQLDateTimeToDartDateTime(json['updatedAt'] as String)
      ..title = json['title'] as String
      ..description = json['description'] as String
      ..creator = EventFieldsMixin$Creator.fromJson(
          json['creator'] as Map<String, dynamic>)
      ..invited = (json['invited'] as List<dynamic>)
          .map((e) =>
              EventFieldsMixin$Invited.fromJson(e as Map<String, dynamic>))
          .toList()
      ..wannago = (json['wannago'] as List<dynamic>)
          .map((e) =>
              EventFieldsMixin$Wannago.fromJson(e as Map<String, dynamic>))
          .toList()
      ..time = fromGraphQLDateTimeToDartDateTime(json['time'] as String)
      ..location = json['location'] as String
      ..coordinates =
          fromGraphQLPointToDartGeoJsonPoint(json['coordinates'] as String)
      ..pictureUrl = json['pictureUrl'] as String?
      ..relatedInterests = (json['relatedInterests'] as List<dynamic>)
          .map((e) => EventFieldsMixin$RelatedInterests.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..privacy = $enumDecode(_$PrivacyEnumMap, json['privacy'],
          unknownValue: Privacy.artemisUnknown)
      ..screened = json['screened'] as bool?
      ..filterLocation = json['filterLocation'] as String
      ..filterRadius = (json['filterRadius'] as num).toDouble()
      ..filterGender = $enumDecode(_$GenderEnumMap, json['filterGender'],
          unknownValue: Gender.artemisUnknown)
      ..filterMinAge = json['filterMinAge'] as int
      ..filterMaxAge = json['filterMaxAge'] as int;

Map<String, dynamic> _$Events$Query$Events$NodesToJson(
        Events$Query$Events$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'updatedAt': fromDartDateTimeToGraphQLDateTime(instance.updatedAt),
      'title': instance.title,
      'description': instance.description,
      'creator': instance.creator.toJson(),
      'invited': instance.invited.map((e) => e.toJson()).toList(),
      'wannago': instance.wannago.map((e) => e.toJson()).toList(),
      'time': fromDartDateTimeToGraphQLDateTime(instance.time),
      'location': instance.location,
      'coordinates': fromDartGeoJsonPointToGraphQLPoint(instance.coordinates),
      'pictureUrl': instance.pictureUrl,
      'relatedInterests':
          instance.relatedInterests.map((e) => e.toJson()).toList(),
      'privacy': _$PrivacyEnumMap[instance.privacy],
      'screened': instance.screened,
      'filterLocation': instance.filterLocation,
      'filterRadius': instance.filterRadius,
      'filterGender': _$GenderEnumMap[instance.filterGender],
      'filterMinAge': instance.filterMinAge,
      'filterMaxAge': instance.filterMaxAge,
    };

const _$PrivacyEnumMap = {
  Privacy.group: 'GROUP',
  Privacy.private: 'PRIVATE',
  Privacy.public: 'PUBLIC',
  Privacy.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$GenderEnumMap = {
  Gender.both: 'BOTH',
  Gender.female: 'FEMALE',
  Gender.male: 'MALE',
  Gender.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

Events$Query$Events$Errors _$Events$Query$Events$ErrorsFromJson(
        Map<String, dynamic> json) =>
    Events$Query$Events$Errors()
      ..field = json['field'] as String?
      ..message = json['message'] as String;

Map<String, dynamic> _$Events$Query$Events$ErrorsToJson(
        Events$Query$Events$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

Events$Query$Events _$Events$Query$EventsFromJson(Map<String, dynamic> json) =>
    Events$Query$Events()
      ..ok = json['ok'] as bool?
      ..nodes = (json['nodes'] as List<dynamic>?)
          ?.map((e) =>
              Events$Query$Events$Nodes.fromJson(e as Map<String, dynamic>))
          .toList()
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map((e) =>
              Events$Query$Events$Errors.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Events$Query$EventsToJson(
        Events$Query$Events instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

Events$Query _$Events$QueryFromJson(Map<String, dynamic> json) => Events$Query()
  ..events =
      Events$Query$Events.fromJson(json['events'] as Map<String, dynamic>);

Map<String, dynamic> _$Events$QueryToJson(Events$Query instance) =>
    <String, dynamic>{
      'events': instance.events.toJson(),
    };

EventFieldsMixin$Creator _$EventFieldsMixin$CreatorFromJson(
        Map<String, dynamic> json) =>
    EventFieldsMixin$Creator()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..photoUrls = json['photoUrls'] as String
      ..bio = json['bio'] as String
      ..birthday =
          fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic> _$EventFieldsMixin$CreatorToJson(
        EventFieldsMixin$Creator instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

EventFieldsMixin$Invited _$EventFieldsMixin$InvitedFromJson(
        Map<String, dynamic> json) =>
    EventFieldsMixin$Invited()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..photoUrls = json['photoUrls'] as String
      ..bio = json['bio'] as String
      ..birthday =
          fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic> _$EventFieldsMixin$InvitedToJson(
        EventFieldsMixin$Invited instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

EventFieldsMixin$Wannago$User _$EventFieldsMixin$Wannago$UserFromJson(
        Map<String, dynamic> json) =>
    EventFieldsMixin$Wannago$User()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..photoUrls = json['photoUrls'] as String
      ..bio = json['bio'] as String
      ..birthday =
          fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic> _$EventFieldsMixin$Wannago$UserToJson(
        EventFieldsMixin$Wannago$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

EventFieldsMixin$Wannago _$EventFieldsMixin$WannagoFromJson(
        Map<String, dynamic> json) =>
    EventFieldsMixin$Wannago()
      ..id = json['id'] as int
      ..declined = json['declined'] as bool
      ..user = EventFieldsMixin$Wannago$User.fromJson(
          json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$EventFieldsMixin$WannagoToJson(
        EventFieldsMixin$Wannago instance) =>
    <String, dynamic>{
      'id': instance.id,
      'declined': instance.declined,
      'user': instance.user.toJson(),
    };

EventFieldsMixin$RelatedInterests _$EventFieldsMixin$RelatedInterestsFromJson(
        Map<String, dynamic> json) =>
    EventFieldsMixin$RelatedInterests()..id = json['id'] as int;

Map<String, dynamic> _$EventFieldsMixin$RelatedInterestsToJson(
        EventFieldsMixin$RelatedInterests instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

DateRangeInput _$DateRangeInputFromJson(Map<String, dynamic> json) =>
    DateRangeInput(
      endDate: fromGraphQLDateTimeToDartDateTime(json['endDate'] as String),
      startDate: fromGraphQLDateTimeToDartDateTime(json['startDate'] as String),
    );

Map<String, dynamic> _$DateRangeInputToJson(DateRangeInput instance) =>
    <String, dynamic>{
      'endDate': fromDartDateTimeToGraphQLDateTime(instance.endDate),
      'startDate': fromDartDateTimeToGraphQLDateTime(instance.startDate),
    };

EventUserPreview$Query$UsersById$Errors
    _$EventUserPreview$Query$UsersById$ErrorsFromJson(
            Map<String, dynamic> json) =>
        EventUserPreview$Query$UsersById$Errors()
          ..field = json['field'] as String?
          ..message = json['message'] as String;

Map<String, dynamic> _$EventUserPreview$Query$UsersById$ErrorsToJson(
        EventUserPreview$Query$UsersById$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

EventUserPreview$Query$UsersById$Nodes
    _$EventUserPreview$Query$UsersById$NodesFromJson(
            Map<String, dynamic> json) =>
        EventUserPreview$Query$UsersById$Nodes()
          ..id = json['id'] as int
          ..name = json['name'] as String
          ..photoUrls = json['photoUrls'] as String
          ..bio = json['bio'] as String
          ..birthday =
              fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic> _$EventUserPreview$Query$UsersById$NodesToJson(
        EventUserPreview$Query$UsersById$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

EventUserPreview$Query$UsersById _$EventUserPreview$Query$UsersByIdFromJson(
        Map<String, dynamic> json) =>
    EventUserPreview$Query$UsersById()
      ..ok = json['ok'] as bool?
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map((e) => EventUserPreview$Query$UsersById$Errors.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..nodes = (json['nodes'] as List<dynamic>?)
          ?.map((e) => EventUserPreview$Query$UsersById$Nodes.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$EventUserPreview$Query$UsersByIdToJson(
        EventUserPreview$Query$UsersById instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
    };

EventUserPreview$Query _$EventUserPreview$QueryFromJson(
        Map<String, dynamic> json) =>
    EventUserPreview$Query()
      ..usersById = EventUserPreview$Query$UsersById.fromJson(
          json['usersById'] as Map<String, dynamic>);

Map<String, dynamic> _$EventUserPreview$QueryToJson(
        EventUserPreview$Query instance) =>
    <String, dynamic>{
      'usersById': instance.usersById.toJson(),
    };

OtherEvents$Query$OtherEvents$Nodes
    _$OtherEvents$Query$OtherEvents$NodesFromJson(Map<String, dynamic> json) =>
        OtherEvents$Query$OtherEvents$Nodes()
          ..id = json['id'] as int
          ..createdAt =
              fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
          ..updatedAt =
              fromGraphQLDateTimeToDartDateTime(json['updatedAt'] as String)
          ..title = json['title'] as String
          ..description = json['description'] as String
          ..creator = EventFieldsMixin$Creator.fromJson(
              json['creator'] as Map<String, dynamic>)
          ..invited = (json['invited'] as List<dynamic>)
              .map((e) =>
                  EventFieldsMixin$Invited.fromJson(e as Map<String, dynamic>))
              .toList()
          ..wannago = (json['wannago'] as List<dynamic>)
              .map((e) =>
                  EventFieldsMixin$Wannago.fromJson(e as Map<String, dynamic>))
              .toList()
          ..time = fromGraphQLDateTimeToDartDateTime(json['time'] as String)
          ..location = json['location'] as String
          ..coordinates =
              fromGraphQLPointToDartGeoJsonPoint(json['coordinates'] as String)
          ..pictureUrl = json['pictureUrl'] as String?
          ..relatedInterests = (json['relatedInterests'] as List<dynamic>)
              .map((e) => EventFieldsMixin$RelatedInterests.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..privacy = $enumDecode(_$PrivacyEnumMap, json['privacy'],
              unknownValue: Privacy.artemisUnknown)
          ..screened = json['screened'] as bool?
          ..filterLocation = json['filterLocation'] as String
          ..filterRadius = (json['filterRadius'] as num).toDouble()
          ..filterGender = $enumDecode(_$GenderEnumMap, json['filterGender'],
              unknownValue: Gender.artemisUnknown)
          ..filterMinAge = json['filterMinAge'] as int
          ..filterMaxAge = json['filterMaxAge'] as int;

Map<String, dynamic> _$OtherEvents$Query$OtherEvents$NodesToJson(
        OtherEvents$Query$OtherEvents$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'updatedAt': fromDartDateTimeToGraphQLDateTime(instance.updatedAt),
      'title': instance.title,
      'description': instance.description,
      'creator': instance.creator.toJson(),
      'invited': instance.invited.map((e) => e.toJson()).toList(),
      'wannago': instance.wannago.map((e) => e.toJson()).toList(),
      'time': fromDartDateTimeToGraphQLDateTime(instance.time),
      'location': instance.location,
      'coordinates': fromDartGeoJsonPointToGraphQLPoint(instance.coordinates),
      'pictureUrl': instance.pictureUrl,
      'relatedInterests':
          instance.relatedInterests.map((e) => e.toJson()).toList(),
      'privacy': _$PrivacyEnumMap[instance.privacy],
      'screened': instance.screened,
      'filterLocation': instance.filterLocation,
      'filterRadius': instance.filterRadius,
      'filterGender': _$GenderEnumMap[instance.filterGender],
      'filterMinAge': instance.filterMinAge,
      'filterMaxAge': instance.filterMaxAge,
    };

OtherEvents$Query$OtherEvents$Errors
    _$OtherEvents$Query$OtherEvents$ErrorsFromJson(Map<String, dynamic> json) =>
        OtherEvents$Query$OtherEvents$Errors()
          ..field = json['field'] as String?
          ..message = json['message'] as String;

Map<String, dynamic> _$OtherEvents$Query$OtherEvents$ErrorsToJson(
        OtherEvents$Query$OtherEvents$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

OtherEvents$Query$OtherEvents _$OtherEvents$Query$OtherEventsFromJson(
        Map<String, dynamic> json) =>
    OtherEvents$Query$OtherEvents()
      ..ok = json['ok'] as bool?
      ..nodes = (json['nodes'] as List<dynamic>?)
          ?.map((e) => OtherEvents$Query$OtherEvents$Nodes.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map((e) => OtherEvents$Query$OtherEvents$Errors.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$OtherEvents$Query$OtherEventsToJson(
        OtherEvents$Query$OtherEvents instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

OtherEvents$Query _$OtherEvents$QueryFromJson(Map<String, dynamic> json) =>
    OtherEvents$Query()
      ..otherEvents = OtherEvents$Query$OtherEvents.fromJson(
          json['otherEvents'] as Map<String, dynamic>);

Map<String, dynamic> _$OtherEvents$QueryToJson(OtherEvents$Query instance) =>
    <String, dynamic>{
      'otherEvents': instance.otherEvents.toJson(),
    };

Event$Query$Event$Nodes _$Event$Query$Event$NodesFromJson(
        Map<String, dynamic> json) =>
    Event$Query$Event$Nodes()
      ..id = json['id'] as int
      ..createdAt =
          fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
      ..updatedAt =
          fromGraphQLDateTimeToDartDateTime(json['updatedAt'] as String)
      ..title = json['title'] as String
      ..description = json['description'] as String
      ..creator = EventFieldsMixin$Creator.fromJson(
          json['creator'] as Map<String, dynamic>)
      ..invited = (json['invited'] as List<dynamic>)
          .map((e) =>
              EventFieldsMixin$Invited.fromJson(e as Map<String, dynamic>))
          .toList()
      ..wannago = (json['wannago'] as List<dynamic>)
          .map((e) =>
              EventFieldsMixin$Wannago.fromJson(e as Map<String, dynamic>))
          .toList()
      ..time = fromGraphQLDateTimeToDartDateTime(json['time'] as String)
      ..location = json['location'] as String
      ..coordinates =
          fromGraphQLPointToDartGeoJsonPoint(json['coordinates'] as String)
      ..pictureUrl = json['pictureUrl'] as String?
      ..relatedInterests = (json['relatedInterests'] as List<dynamic>)
          .map((e) => EventFieldsMixin$RelatedInterests.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..privacy = $enumDecode(_$PrivacyEnumMap, json['privacy'],
          unknownValue: Privacy.artemisUnknown)
      ..screened = json['screened'] as bool?
      ..filterLocation = json['filterLocation'] as String
      ..filterRadius = (json['filterRadius'] as num).toDouble()
      ..filterGender = $enumDecode(_$GenderEnumMap, json['filterGender'],
          unknownValue: Gender.artemisUnknown)
      ..filterMinAge = json['filterMinAge'] as int
      ..filterMaxAge = json['filterMaxAge'] as int;

Map<String, dynamic> _$Event$Query$Event$NodesToJson(
        Event$Query$Event$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'updatedAt': fromDartDateTimeToGraphQLDateTime(instance.updatedAt),
      'title': instance.title,
      'description': instance.description,
      'creator': instance.creator.toJson(),
      'invited': instance.invited.map((e) => e.toJson()).toList(),
      'wannago': instance.wannago.map((e) => e.toJson()).toList(),
      'time': fromDartDateTimeToGraphQLDateTime(instance.time),
      'location': instance.location,
      'coordinates': fromDartGeoJsonPointToGraphQLPoint(instance.coordinates),
      'pictureUrl': instance.pictureUrl,
      'relatedInterests':
          instance.relatedInterests.map((e) => e.toJson()).toList(),
      'privacy': _$PrivacyEnumMap[instance.privacy],
      'screened': instance.screened,
      'filterLocation': instance.filterLocation,
      'filterRadius': instance.filterRadius,
      'filterGender': _$GenderEnumMap[instance.filterGender],
      'filterMinAge': instance.filterMinAge,
      'filterMaxAge': instance.filterMaxAge,
    };

Event$Query$Event$Errors _$Event$Query$Event$ErrorsFromJson(
        Map<String, dynamic> json) =>
    Event$Query$Event$Errors()
      ..field = json['field'] as String?
      ..message = json['message'] as String;

Map<String, dynamic> _$Event$Query$Event$ErrorsToJson(
        Event$Query$Event$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

Event$Query$Event _$Event$Query$EventFromJson(Map<String, dynamic> json) =>
    Event$Query$Event()
      ..ok = json['ok'] as bool?
      ..nodes = json['nodes'] == null
          ? null
          : Event$Query$Event$Nodes.fromJson(
              json['nodes'] as Map<String, dynamic>)
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map((e) =>
              Event$Query$Event$Errors.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Event$Query$EventToJson(Event$Query$Event instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

Event$Query _$Event$QueryFromJson(Map<String, dynamic> json) => Event$Query()
  ..event = Event$Query$Event.fromJson(json['event'] as Map<String, dynamic>);

Map<String, dynamic> _$Event$QueryToJson(Event$Query instance) =>
    <String, dynamic>{
      'event': instance.event.toJson(),
    };

HelloQuery$Query _$HelloQuery$QueryFromJson(Map<String, dynamic> json) =>
    HelloQuery$Query()..hello = json['hello'] as String;

Map<String, dynamic> _$HelloQuery$QueryToJson(HelloQuery$Query instance) =>
    <String, dynamic>{
      'hello': instance.hello,
    };

Me$Query$Me$Nodes _$Me$Query$Me$NodesFromJson(Map<String, dynamic> json) =>
    Me$Query$Me$Nodes()
      ..id = json['id'] as int
      ..photoUrls = json['photoUrls'] as String
      ..phone = json['phone'] as String
      ..verified = json['verified'] as bool
      ..name = json['name'] as String
      ..birthday = fromGraphQLDateTimeToDartDateTime(json['birthday'] as String)
      ..bio = json['bio'] as String
      ..blockedUsers = (json['blockedUsers'] as List<dynamic>)
          .map((e) =>
              UserFieldsMixin$BlockedUsers.fromJson(e as Map<String, dynamic>))
          .toList()
      ..inverseFriends = (json['inverseFriends'] as List<dynamic>)
          .map((e) => UserFieldsMixin$InverseFriends.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..friends = (json['friends'] as List<dynamic>)
          .map((e) =>
              UserFieldsMixin$Friends.fromJson(e as Map<String, dynamic>))
          .toList()
      ..requestedFriends = (json['requestedFriends'] as List<dynamic>)
          .map((e) => UserFieldsMixin$RequestedFriends.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..friendRequests = (json['friendRequests'] as List<dynamic>)
          .map((e) => UserFieldsMixin$FriendRequests.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..groups = (json['groups'] as List<dynamic>)
          .map(
              (e) => UserFieldsMixin$Groups.fromJson(e as Map<String, dynamic>))
          .toList()
      ..requestedGroups = (json['requestedGroups'] as List<dynamic>)
          .map((e) => UserFieldsMixin$RequestedGroups.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..interests = (json['interests'] as List<dynamic>)
          .map((e) =>
              UserFieldsMixin$Interests.fromJson(e as Map<String, dynamic>))
          .toList()
      ..myEvents = (json['myEvents'] as List<dynamic>)
          .map((e) =>
              UserFieldsMixin$MyEvents.fromJson(e as Map<String, dynamic>))
          .toList()
      ..chatNotifications = (json['chatNotifications'] as List<dynamic>)
          .map((e) => UserFieldsMixin$ChatNotifications.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..location = fromGraphQLPointNullableToDartGeoJsonPointNullable(
          json['location'] as String?);

Map<String, dynamic> _$Me$Query$Me$NodesToJson(Me$Query$Me$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photoUrls': instance.photoUrls,
      'phone': instance.phone,
      'verified': instance.verified,
      'name': instance.name,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
      'bio': instance.bio,
      'blockedUsers': instance.blockedUsers.map((e) => e.toJson()).toList(),
      'inverseFriends': instance.inverseFriends.map((e) => e.toJson()).toList(),
      'friends': instance.friends.map((e) => e.toJson()).toList(),
      'requestedFriends':
          instance.requestedFriends.map((e) => e.toJson()).toList(),
      'friendRequests': instance.friendRequests.map((e) => e.toJson()).toList(),
      'groups': instance.groups.map((e) => e.toJson()).toList(),
      'requestedGroups':
          instance.requestedGroups.map((e) => e.toJson()).toList(),
      'interests': instance.interests.map((e) => e.toJson()).toList(),
      'myEvents': instance.myEvents.map((e) => e.toJson()).toList(),
      'chatNotifications':
          instance.chatNotifications.map((e) => e.toJson()).toList(),
      'location':
          fromDartGeoJsonPointNullableToGraphQLPointNullable(instance.location),
    };

Me$Query$Me$Errors _$Me$Query$Me$ErrorsFromJson(Map<String, dynamic> json) =>
    Me$Query$Me$Errors()
      ..field = json['field'] as String?
      ..message = json['message'] as String;

Map<String, dynamic> _$Me$Query$Me$ErrorsToJson(Me$Query$Me$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

Me$Query$Me _$Me$Query$MeFromJson(Map<String, dynamic> json) => Me$Query$Me()
  ..ok = json['ok'] as bool?
  ..nodes = json['nodes'] == null
      ? null
      : Me$Query$Me$Nodes.fromJson(json['nodes'] as Map<String, dynamic>)
  ..errors = (json['errors'] as List<dynamic>?)
      ?.map((e) => Me$Query$Me$Errors.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$Me$Query$MeToJson(Me$Query$Me instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

Me$Query _$Me$QueryFromJson(Map<String, dynamic> json) =>
    Me$Query()..me = Me$Query$Me.fromJson(json['me'] as Map<String, dynamic>);

Map<String, dynamic> _$Me$QueryToJson(Me$Query instance) => <String, dynamic>{
      'me': instance.me.toJson(),
    };

UserFieldsMixin$BlockedUsers _$UserFieldsMixin$BlockedUsersFromJson(
        Map<String, dynamic> json) =>
    UserFieldsMixin$BlockedUsers()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..photoUrls = json['photoUrls'] as String
      ..bio = json['bio'] as String
      ..birthday =
          fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic> _$UserFieldsMixin$BlockedUsersToJson(
        UserFieldsMixin$BlockedUsers instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

UserFieldsMixin$InverseFriends _$UserFieldsMixin$InverseFriendsFromJson(
        Map<String, dynamic> json) =>
    UserFieldsMixin$InverseFriends()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..photoUrls = json['photoUrls'] as String
      ..bio = json['bio'] as String
      ..birthday =
          fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic> _$UserFieldsMixin$InverseFriendsToJson(
        UserFieldsMixin$InverseFriends instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

UserFieldsMixin$Friends _$UserFieldsMixin$FriendsFromJson(
        Map<String, dynamic> json) =>
    UserFieldsMixin$Friends()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..photoUrls = json['photoUrls'] as String
      ..bio = json['bio'] as String
      ..birthday =
          fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic> _$UserFieldsMixin$FriendsToJson(
        UserFieldsMixin$Friends instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

UserFieldsMixin$RequestedFriends _$UserFieldsMixin$RequestedFriendsFromJson(
        Map<String, dynamic> json) =>
    UserFieldsMixin$RequestedFriends()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..photoUrls = json['photoUrls'] as String
      ..bio = json['bio'] as String
      ..birthday =
          fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic> _$UserFieldsMixin$RequestedFriendsToJson(
        UserFieldsMixin$RequestedFriends instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

UserFieldsMixin$FriendRequests _$UserFieldsMixin$FriendRequestsFromJson(
        Map<String, dynamic> json) =>
    UserFieldsMixin$FriendRequests()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..photoUrls = json['photoUrls'] as String
      ..bio = json['bio'] as String
      ..birthday =
          fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic> _$UserFieldsMixin$FriendRequestsToJson(
        UserFieldsMixin$FriendRequests instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

UserFieldsMixin$Groups _$UserFieldsMixin$GroupsFromJson(
        Map<String, dynamic> json) =>
    UserFieldsMixin$Groups()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..owner = json['owner'] as int
      ..users = (json['users'] as List<dynamic>)
          .map(
              (e) => GroupFieldsMixin$Users.fromJson(e as Map<String, dynamic>))
          .toList()
      ..screened = json['screened'] as bool
      ..location = fromGraphQLPointNullableToDartGeoJsonPointNullable(
          json['location'] as String?)
      ..icon =
          GroupFieldsMixin$Icon.fromJson(json['icon'] as Map<String, dynamic>);

Map<String, dynamic> _$UserFieldsMixin$GroupsToJson(
        UserFieldsMixin$Groups instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'owner': instance.owner,
      'users': instance.users.map((e) => e.toJson()).toList(),
      'screened': instance.screened,
      'location':
          fromDartGeoJsonPointNullableToGraphQLPointNullable(instance.location),
      'icon': instance.icon.toJson(),
    };

UserFieldsMixin$RequestedGroups _$UserFieldsMixin$RequestedGroupsFromJson(
        Map<String, dynamic> json) =>
    UserFieldsMixin$RequestedGroups()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..owner = json['owner'] as int
      ..users = (json['users'] as List<dynamic>)
          .map(
              (e) => GroupFieldsMixin$Users.fromJson(e as Map<String, dynamic>))
          .toList()
      ..screened = json['screened'] as bool
      ..location = fromGraphQLPointNullableToDartGeoJsonPointNullable(
          json['location'] as String?)
      ..icon =
          GroupFieldsMixin$Icon.fromJson(json['icon'] as Map<String, dynamic>);

Map<String, dynamic> _$UserFieldsMixin$RequestedGroupsToJson(
        UserFieldsMixin$RequestedGroups instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'owner': instance.owner,
      'users': instance.users.map((e) => e.toJson()).toList(),
      'screened': instance.screened,
      'location':
          fromDartGeoJsonPointNullableToGraphQLPointNullable(instance.location),
      'icon': instance.icon.toJson(),
    };

UserFieldsMixin$Interests _$UserFieldsMixin$InterestsFromJson(
        Map<String, dynamic> json) =>
    UserFieldsMixin$Interests()
      ..id = json['id'] as int
      ..title = json['title'] as String;

Map<String, dynamic> _$UserFieldsMixin$InterestsToJson(
        UserFieldsMixin$Interests instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

UserFieldsMixin$MyEvents _$UserFieldsMixin$MyEventsFromJson(
        Map<String, dynamic> json) =>
    UserFieldsMixin$MyEvents()..id = json['id'] as int;

Map<String, dynamic> _$UserFieldsMixin$MyEventsToJson(
        UserFieldsMixin$MyEvents instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UserFieldsMixin$ChatNotifications _$UserFieldsMixin$ChatNotificationsFromJson(
        Map<String, dynamic> json) =>
    UserFieldsMixin$ChatNotifications()
      ..lastAccessed =
          fromGraphQLDateTimeToDartDateTime(json['lastAccessed'] as String)
      ..muted = json['muted'] as bool;

Map<String, dynamic> _$UserFieldsMixin$ChatNotificationsToJson(
        UserFieldsMixin$ChatNotifications instance) =>
    <String, dynamic>{
      'lastAccessed': fromDartDateTimeToGraphQLDateTime(instance.lastAccessed),
      'muted': instance.muted,
    };

GroupFieldsMixin$Users _$GroupFieldsMixin$UsersFromJson(
        Map<String, dynamic> json) =>
    GroupFieldsMixin$Users()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..photoUrls = json['photoUrls'] as String
      ..bio = json['bio'] as String
      ..birthday =
          fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic> _$GroupFieldsMixin$UsersToJson(
        GroupFieldsMixin$Users instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

GroupFieldsMixin$Icon _$GroupFieldsMixin$IconFromJson(
        Map<String, dynamic> json) =>
    GroupFieldsMixin$Icon()
      ..id = json['id'] as int
      ..url = json['url'] as String;

Map<String, dynamic> _$GroupFieldsMixin$IconToJson(
        GroupFieldsMixin$Icon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };

ForumsByEventId$Query$ForumsByEventId$Errors
    _$ForumsByEventId$Query$ForumsByEventId$ErrorsFromJson(
            Map<String, dynamic> json) =>
        ForumsByEventId$Query$ForumsByEventId$Errors()
          ..field = json['field'] as String?
          ..message = json['message'] as String;

Map<String, dynamic> _$ForumsByEventId$Query$ForumsByEventId$ErrorsToJson(
        ForumsByEventId$Query$ForumsByEventId$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

ForumsByEventId$Query$ForumsByEventId$Nodes
    _$ForumsByEventId$Query$ForumsByEventId$NodesFromJson(
            Map<String, dynamic> json) =>
        ForumsByEventId$Query$ForumsByEventId$Nodes()
          ..id = json['id'] as int
          ..updatedAt =
              fromGraphQLDateTimeToDartDateTime(json['updatedAt'] as String)
          ..chatDisabled = json['chatDisabled'] as bool?
          ..ownerId = json['ownerId'] as int?
          ..userNotifications = (json['userNotifications'] as List<dynamic>)
              .map((e) => ForumFieldsMixin$UserNotifications.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..chats = (json['chats'] as List<dynamic>)
              .map((e) =>
                  ForumFieldsMixin$Chats.fromJson(e as Map<String, dynamic>))
              .toList()
          ..event = ForumFieldsMixin$Event.fromJson(
              json['event'] as Map<String, dynamic>);

Map<String, dynamic> _$ForumsByEventId$Query$ForumsByEventId$NodesToJson(
        ForumsByEventId$Query$ForumsByEventId$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updatedAt': fromDartDateTimeToGraphQLDateTime(instance.updatedAt),
      'chatDisabled': instance.chatDisabled,
      'ownerId': instance.ownerId,
      'userNotifications':
          instance.userNotifications.map((e) => e.toJson()).toList(),
      'chats': instance.chats.map((e) => e.toJson()).toList(),
      'event': instance.event.toJson(),
    };

ForumsByEventId$Query$ForumsByEventId
    _$ForumsByEventId$Query$ForumsByEventIdFromJson(
            Map<String, dynamic> json) =>
        ForumsByEventId$Query$ForumsByEventId()
          ..ok = json['ok'] as bool?
          ..errors = (json['errors'] as List<dynamic>?)
              ?.map((e) =>
                  ForumsByEventId$Query$ForumsByEventId$Errors.fromJson(
                      e as Map<String, dynamic>))
              .toList()
          ..nodes = (json['nodes'] as List<dynamic>?)
              ?.map((e) => ForumsByEventId$Query$ForumsByEventId$Nodes.fromJson(
                  e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$ForumsByEventId$Query$ForumsByEventIdToJson(
        ForumsByEventId$Query$ForumsByEventId instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
    };

ForumsByEventId$Query _$ForumsByEventId$QueryFromJson(
        Map<String, dynamic> json) =>
    ForumsByEventId$Query()
      ..forumsByEventId = ForumsByEventId$Query$ForumsByEventId.fromJson(
          json['forumsByEventId'] as Map<String, dynamic>);

Map<String, dynamic> _$ForumsByEventId$QueryToJson(
        ForumsByEventId$Query instance) =>
    <String, dynamic>{
      'forumsByEventId': instance.forumsByEventId.toJson(),
    };

ForumFieldsMixin$UserNotifications _$ForumFieldsMixin$UserNotificationsFromJson(
        Map<String, dynamic> json) =>
    ForumFieldsMixin$UserNotifications()
      ..id = json['id'] as int
      ..lastAccessed =
          fromGraphQLDateTimeToDartDateTime(json['lastAccessed'] as String)
      ..muted = json['muted'] as bool;

Map<String, dynamic> _$ForumFieldsMixin$UserNotificationsToJson(
        ForumFieldsMixin$UserNotifications instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lastAccessed': fromDartDateTimeToGraphQLDateTime(instance.lastAccessed),
      'muted': instance.muted,
    };

ForumFieldsMixin$Chats _$ForumFieldsMixin$ChatsFromJson(
        Map<String, dynamic> json) =>
    ForumFieldsMixin$Chats()
      ..id = json['id'] as int
      ..createdAt =
          fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
      ..text = json['text'] as String;

Map<String, dynamic> _$ForumFieldsMixin$ChatsToJson(
        ForumFieldsMixin$Chats instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'text': instance.text,
    };

ForumFieldsMixin$Event _$ForumFieldsMixin$EventFromJson(
        Map<String, dynamic> json) =>
    ForumFieldsMixin$Event()..id = json['id'] as int;

Map<String, dynamic> _$ForumFieldsMixin$EventToJson(
        ForumFieldsMixin$Event instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

GroupEvents$Query$GroupEvents$Nodes
    _$GroupEvents$Query$GroupEvents$NodesFromJson(Map<String, dynamic> json) =>
        GroupEvents$Query$GroupEvents$Nodes()
          ..id = json['id'] as int
          ..createdAt =
              fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
          ..updatedAt =
              fromGraphQLDateTimeToDartDateTime(json['updatedAt'] as String)
          ..title = json['title'] as String
          ..description = json['description'] as String
          ..creator = EventFieldsMixin$Creator.fromJson(
              json['creator'] as Map<String, dynamic>)
          ..invited = (json['invited'] as List<dynamic>)
              .map((e) =>
                  EventFieldsMixin$Invited.fromJson(e as Map<String, dynamic>))
              .toList()
          ..wannago = (json['wannago'] as List<dynamic>)
              .map((e) =>
                  EventFieldsMixin$Wannago.fromJson(e as Map<String, dynamic>))
              .toList()
          ..time = fromGraphQLDateTimeToDartDateTime(json['time'] as String)
          ..location = json['location'] as String
          ..coordinates =
              fromGraphQLPointToDartGeoJsonPoint(json['coordinates'] as String)
          ..pictureUrl = json['pictureUrl'] as String?
          ..relatedInterests = (json['relatedInterests'] as List<dynamic>)
              .map((e) => EventFieldsMixin$RelatedInterests.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..privacy = $enumDecode(_$PrivacyEnumMap, json['privacy'],
              unknownValue: Privacy.artemisUnknown)
          ..screened = json['screened'] as bool?
          ..filterLocation = json['filterLocation'] as String
          ..filterRadius = (json['filterRadius'] as num).toDouble()
          ..filterGender = $enumDecode(_$GenderEnumMap, json['filterGender'],
              unknownValue: Gender.artemisUnknown)
          ..filterMinAge = json['filterMinAge'] as int
          ..filterMaxAge = json['filterMaxAge'] as int;

Map<String, dynamic> _$GroupEvents$Query$GroupEvents$NodesToJson(
        GroupEvents$Query$GroupEvents$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'updatedAt': fromDartDateTimeToGraphQLDateTime(instance.updatedAt),
      'title': instance.title,
      'description': instance.description,
      'creator': instance.creator.toJson(),
      'invited': instance.invited.map((e) => e.toJson()).toList(),
      'wannago': instance.wannago.map((e) => e.toJson()).toList(),
      'time': fromDartDateTimeToGraphQLDateTime(instance.time),
      'location': instance.location,
      'coordinates': fromDartGeoJsonPointToGraphQLPoint(instance.coordinates),
      'pictureUrl': instance.pictureUrl,
      'relatedInterests':
          instance.relatedInterests.map((e) => e.toJson()).toList(),
      'privacy': _$PrivacyEnumMap[instance.privacy],
      'screened': instance.screened,
      'filterLocation': instance.filterLocation,
      'filterRadius': instance.filterRadius,
      'filterGender': _$GenderEnumMap[instance.filterGender],
      'filterMinAge': instance.filterMinAge,
      'filterMaxAge': instance.filterMaxAge,
    };

GroupEvents$Query$GroupEvents$Errors
    _$GroupEvents$Query$GroupEvents$ErrorsFromJson(Map<String, dynamic> json) =>
        GroupEvents$Query$GroupEvents$Errors()
          ..field = json['field'] as String?
          ..message = json['message'] as String;

Map<String, dynamic> _$GroupEvents$Query$GroupEvents$ErrorsToJson(
        GroupEvents$Query$GroupEvents$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

GroupEvents$Query$GroupEvents _$GroupEvents$Query$GroupEventsFromJson(
        Map<String, dynamic> json) =>
    GroupEvents$Query$GroupEvents()
      ..ok = json['ok'] as bool?
      ..nodes = (json['nodes'] as List<dynamic>?)
          ?.map((e) => GroupEvents$Query$GroupEvents$Nodes.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map((e) => GroupEvents$Query$GroupEvents$Errors.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GroupEvents$Query$GroupEventsToJson(
        GroupEvents$Query$GroupEvents instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

GroupEvents$Query _$GroupEvents$QueryFromJson(Map<String, dynamic> json) =>
    GroupEvents$Query()
      ..groupEvents = GroupEvents$Query$GroupEvents.fromJson(
          json['groupEvents'] as Map<String, dynamic>);

Map<String, dynamic> _$GroupEvents$QueryToJson(GroupEvents$Query instance) =>
    <String, dynamic>{
      'groupEvents': instance.groupEvents.toJson(),
    };

SearchUsers$Query$SearchUsers$Nodes
    _$SearchUsers$Query$SearchUsers$NodesFromJson(Map<String, dynamic> json) =>
        SearchUsers$Query$SearchUsers$Nodes()
          ..id = json['id'] as int
          ..name = json['name'] as String
          ..photoUrls = json['photoUrls'] as String
          ..bio = json['bio'] as String
          ..birthday =
              fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic> _$SearchUsers$Query$SearchUsers$NodesToJson(
        SearchUsers$Query$SearchUsers$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

SearchUsers$Query$SearchUsers$Errors
    _$SearchUsers$Query$SearchUsers$ErrorsFromJson(Map<String, dynamic> json) =>
        SearchUsers$Query$SearchUsers$Errors()
          ..field = json['field'] as String?
          ..message = json['message'] as String;

Map<String, dynamic> _$SearchUsers$Query$SearchUsers$ErrorsToJson(
        SearchUsers$Query$SearchUsers$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

SearchUsers$Query$SearchUsers _$SearchUsers$Query$SearchUsersFromJson(
        Map<String, dynamic> json) =>
    SearchUsers$Query$SearchUsers()
      ..ok = json['ok'] as bool?
      ..nodes = (json['nodes'] as List<dynamic>?)
          ?.map((e) => SearchUsers$Query$SearchUsers$Nodes.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map((e) => SearchUsers$Query$SearchUsers$Errors.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SearchUsers$Query$SearchUsersToJson(
        SearchUsers$Query$SearchUsers instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

SearchUsers$Query _$SearchUsers$QueryFromJson(Map<String, dynamic> json) =>
    SearchUsers$Query()
      ..searchUsers = SearchUsers$Query$SearchUsers.fromJson(
          json['searchUsers'] as Map<String, dynamic>);

Map<String, dynamic> _$SearchUsers$QueryToJson(SearchUsers$Query instance) =>
    <String, dynamic>{
      'searchUsers': instance.searchUsers.toJson(),
    };

FlaggedEvents$Query$FlaggedEvents$Nodes
    _$FlaggedEvents$Query$FlaggedEvents$NodesFromJson(
            Map<String, dynamic> json) =>
        FlaggedEvents$Query$FlaggedEvents$Nodes()
          ..id = json['id'] as int
          ..createdAt =
              fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
          ..updatedAt =
              fromGraphQLDateTimeToDartDateTime(json['updatedAt'] as String)
          ..title = json['title'] as String
          ..description = json['description'] as String
          ..creator = EventFieldsMixin$Creator.fromJson(
              json['creator'] as Map<String, dynamic>)
          ..invited = (json['invited'] as List<dynamic>)
              .map((e) =>
                  EventFieldsMixin$Invited.fromJson(e as Map<String, dynamic>))
              .toList()
          ..wannago = (json['wannago'] as List<dynamic>)
              .map((e) =>
                  EventFieldsMixin$Wannago.fromJson(e as Map<String, dynamic>))
              .toList()
          ..time = fromGraphQLDateTimeToDartDateTime(json['time'] as String)
          ..location = json['location'] as String
          ..coordinates =
              fromGraphQLPointToDartGeoJsonPoint(json['coordinates'] as String)
          ..pictureUrl = json['pictureUrl'] as String?
          ..relatedInterests = (json['relatedInterests'] as List<dynamic>)
              .map((e) => EventFieldsMixin$RelatedInterests.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..privacy = $enumDecode(_$PrivacyEnumMap, json['privacy'],
              unknownValue: Privacy.artemisUnknown)
          ..screened = json['screened'] as bool?
          ..filterLocation = json['filterLocation'] as String
          ..filterRadius = (json['filterRadius'] as num).toDouble()
          ..filterGender = $enumDecode(_$GenderEnumMap, json['filterGender'],
              unknownValue: Gender.artemisUnknown)
          ..filterMinAge = json['filterMinAge'] as int
          ..filterMaxAge = json['filterMaxAge'] as int;

Map<String, dynamic> _$FlaggedEvents$Query$FlaggedEvents$NodesToJson(
        FlaggedEvents$Query$FlaggedEvents$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'updatedAt': fromDartDateTimeToGraphQLDateTime(instance.updatedAt),
      'title': instance.title,
      'description': instance.description,
      'creator': instance.creator.toJson(),
      'invited': instance.invited.map((e) => e.toJson()).toList(),
      'wannago': instance.wannago.map((e) => e.toJson()).toList(),
      'time': fromDartDateTimeToGraphQLDateTime(instance.time),
      'location': instance.location,
      'coordinates': fromDartGeoJsonPointToGraphQLPoint(instance.coordinates),
      'pictureUrl': instance.pictureUrl,
      'relatedInterests':
          instance.relatedInterests.map((e) => e.toJson()).toList(),
      'privacy': _$PrivacyEnumMap[instance.privacy],
      'screened': instance.screened,
      'filterLocation': instance.filterLocation,
      'filterRadius': instance.filterRadius,
      'filterGender': _$GenderEnumMap[instance.filterGender],
      'filterMinAge': instance.filterMinAge,
      'filterMaxAge': instance.filterMaxAge,
    };

FlaggedEvents$Query$FlaggedEvents$Errors
    _$FlaggedEvents$Query$FlaggedEvents$ErrorsFromJson(
            Map<String, dynamic> json) =>
        FlaggedEvents$Query$FlaggedEvents$Errors()
          ..field = json['field'] as String?
          ..message = json['message'] as String;

Map<String, dynamic> _$FlaggedEvents$Query$FlaggedEvents$ErrorsToJson(
        FlaggedEvents$Query$FlaggedEvents$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

FlaggedEvents$Query$FlaggedEvents _$FlaggedEvents$Query$FlaggedEventsFromJson(
        Map<String, dynamic> json) =>
    FlaggedEvents$Query$FlaggedEvents()
      ..ok = json['ok'] as bool?
      ..nodes = (json['nodes'] as List<dynamic>?)
          ?.map((e) => FlaggedEvents$Query$FlaggedEvents$Nodes.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map((e) => FlaggedEvents$Query$FlaggedEvents$Errors.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FlaggedEvents$Query$FlaggedEventsToJson(
        FlaggedEvents$Query$FlaggedEvents instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

FlaggedEvents$Query _$FlaggedEvents$QueryFromJson(Map<String, dynamic> json) =>
    FlaggedEvents$Query()
      ..flaggedEvents = FlaggedEvents$Query$FlaggedEvents.fromJson(
          json['flaggedEvents'] as Map<String, dynamic>);

Map<String, dynamic> _$FlaggedEvents$QueryToJson(
        FlaggedEvents$Query instance) =>
    <String, dynamic>{
      'flaggedEvents': instance.flaggedEvents.toJson(),
    };

MyGroups$Query$MyGroups$Nodes _$MyGroups$Query$MyGroups$NodesFromJson(
        Map<String, dynamic> json) =>
    MyGroups$Query$MyGroups$Nodes()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..owner = json['owner'] as int
      ..users = (json['users'] as List<dynamic>)
          .map(
              (e) => GroupFieldsMixin$Users.fromJson(e as Map<String, dynamic>))
          .toList()
      ..screened = json['screened'] as bool
      ..location = fromGraphQLPointNullableToDartGeoJsonPointNullable(
          json['location'] as String?)
      ..icon =
          GroupFieldsMixin$Icon.fromJson(json['icon'] as Map<String, dynamic>);

Map<String, dynamic> _$MyGroups$Query$MyGroups$NodesToJson(
        MyGroups$Query$MyGroups$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'owner': instance.owner,
      'users': instance.users.map((e) => e.toJson()).toList(),
      'screened': instance.screened,
      'location':
          fromDartGeoJsonPointNullableToGraphQLPointNullable(instance.location),
      'icon': instance.icon.toJson(),
    };

MyGroups$Query$MyGroups$Errors _$MyGroups$Query$MyGroups$ErrorsFromJson(
        Map<String, dynamic> json) =>
    MyGroups$Query$MyGroups$Errors()
      ..field = json['field'] as String?
      ..message = json['message'] as String;

Map<String, dynamic> _$MyGroups$Query$MyGroups$ErrorsToJson(
        MyGroups$Query$MyGroups$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

MyGroups$Query$MyGroups _$MyGroups$Query$MyGroupsFromJson(
        Map<String, dynamic> json) =>
    MyGroups$Query$MyGroups()
      ..ok = json['ok'] as bool?
      ..nodes = (json['nodes'] as List<dynamic>?)
          ?.map((e) =>
              MyGroups$Query$MyGroups$Nodes.fromJson(e as Map<String, dynamic>))
          .toList()
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map((e) => MyGroups$Query$MyGroups$Errors.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$MyGroups$Query$MyGroupsToJson(
        MyGroups$Query$MyGroups instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

MyGroups$Query _$MyGroups$QueryFromJson(Map<String, dynamic> json) =>
    MyGroups$Query()
      ..myGroups = MyGroups$Query$MyGroups.fromJson(
          json['myGroups'] as Map<String, dynamic>);

Map<String, dynamic> _$MyGroups$QueryToJson(MyGroups$Query instance) =>
    <String, dynamic>{
      'myGroups': instance.myGroups.toJson(),
    };

MyEvents$Query$MyEvents$Nodes _$MyEvents$Query$MyEvents$NodesFromJson(
        Map<String, dynamic> json) =>
    MyEvents$Query$MyEvents$Nodes()
      ..id = json['id'] as int
      ..createdAt =
          fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
      ..updatedAt =
          fromGraphQLDateTimeToDartDateTime(json['updatedAt'] as String)
      ..title = json['title'] as String
      ..description = json['description'] as String
      ..creator = EventFieldsMixin$Creator.fromJson(
          json['creator'] as Map<String, dynamic>)
      ..invited = (json['invited'] as List<dynamic>)
          .map((e) =>
              EventFieldsMixin$Invited.fromJson(e as Map<String, dynamic>))
          .toList()
      ..wannago = (json['wannago'] as List<dynamic>)
          .map((e) =>
              EventFieldsMixin$Wannago.fromJson(e as Map<String, dynamic>))
          .toList()
      ..time = fromGraphQLDateTimeToDartDateTime(json['time'] as String)
      ..location = json['location'] as String
      ..coordinates =
          fromGraphQLPointToDartGeoJsonPoint(json['coordinates'] as String)
      ..pictureUrl = json['pictureUrl'] as String?
      ..relatedInterests = (json['relatedInterests'] as List<dynamic>)
          .map((e) => EventFieldsMixin$RelatedInterests.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..privacy = $enumDecode(_$PrivacyEnumMap, json['privacy'],
          unknownValue: Privacy.artemisUnknown)
      ..screened = json['screened'] as bool?
      ..filterLocation = json['filterLocation'] as String
      ..filterRadius = (json['filterRadius'] as num).toDouble()
      ..filterGender = $enumDecode(_$GenderEnumMap, json['filterGender'],
          unknownValue: Gender.artemisUnknown)
      ..filterMinAge = json['filterMinAge'] as int
      ..filterMaxAge = json['filterMaxAge'] as int;

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
      'wannago': instance.wannago.map((e) => e.toJson()).toList(),
      'time': fromDartDateTimeToGraphQLDateTime(instance.time),
      'location': instance.location,
      'coordinates': fromDartGeoJsonPointToGraphQLPoint(instance.coordinates),
      'pictureUrl': instance.pictureUrl,
      'relatedInterests':
          instance.relatedInterests.map((e) => e.toJson()).toList(),
      'privacy': _$PrivacyEnumMap[instance.privacy],
      'screened': instance.screened,
      'filterLocation': instance.filterLocation,
      'filterRadius': instance.filterRadius,
      'filterGender': _$GenderEnumMap[instance.filterGender],
      'filterMinAge': instance.filterMinAge,
      'filterMaxAge': instance.filterMaxAge,
    };

MyEvents$Query$MyEvents$Errors _$MyEvents$Query$MyEvents$ErrorsFromJson(
        Map<String, dynamic> json) =>
    MyEvents$Query$MyEvents$Errors()
      ..field = json['field'] as String?
      ..message = json['message'] as String;

Map<String, dynamic> _$MyEvents$Query$MyEvents$ErrorsToJson(
        MyEvents$Query$MyEvents$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

MyEvents$Query$MyEvents _$MyEvents$Query$MyEventsFromJson(
        Map<String, dynamic> json) =>
    MyEvents$Query$MyEvents()
      ..ok = json['ok'] as bool?
      ..nodes = (json['nodes'] as List<dynamic>?)
          ?.map((e) =>
              MyEvents$Query$MyEvents$Nodes.fromJson(e as Map<String, dynamic>))
          .toList()
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map((e) => MyEvents$Query$MyEvents$Errors.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$MyEvents$Query$MyEventsToJson(
        MyEvents$Query$MyEvents instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

MyEvents$Query _$MyEvents$QueryFromJson(Map<String, dynamic> json) =>
    MyEvents$Query()
      ..myEvents = MyEvents$Query$MyEvents.fromJson(
          json['myEvents'] as Map<String, dynamic>);

Map<String, dynamic> _$MyEvents$QueryToJson(MyEvents$Query instance) =>
    <String, dynamic>{
      'myEvents': instance.myEvents.toJson(),
    };

SearchInterests$Query$SearchInterests$Nodes
    _$SearchInterests$Query$SearchInterests$NodesFromJson(
            Map<String, dynamic> json) =>
        SearchInterests$Query$SearchInterests$Nodes()
          ..id = json['id'] as int
          ..title = json['title'] as String;

Map<String, dynamic> _$SearchInterests$Query$SearchInterests$NodesToJson(
        SearchInterests$Query$SearchInterests$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

SearchInterests$Query$SearchInterests$Errors
    _$SearchInterests$Query$SearchInterests$ErrorsFromJson(
            Map<String, dynamic> json) =>
        SearchInterests$Query$SearchInterests$Errors()
          ..field = json['field'] as String?
          ..message = json['message'] as String;

Map<String, dynamic> _$SearchInterests$Query$SearchInterests$ErrorsToJson(
        SearchInterests$Query$SearchInterests$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

SearchInterests$Query$SearchInterests
    _$SearchInterests$Query$SearchInterestsFromJson(
            Map<String, dynamic> json) =>
        SearchInterests$Query$SearchInterests()
          ..ok = json['ok'] as bool?
          ..nodes = (json['nodes'] as List<dynamic>?)
              ?.map((e) => SearchInterests$Query$SearchInterests$Nodes.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..errors = (json['errors'] as List<dynamic>?)
              ?.map((e) =>
                  SearchInterests$Query$SearchInterests$Errors.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$SearchInterests$Query$SearchInterestsToJson(
        SearchInterests$Query$SearchInterests instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

SearchInterests$Query _$SearchInterests$QueryFromJson(
        Map<String, dynamic> json) =>
    SearchInterests$Query()
      ..searchInterests = SearchInterests$Query$SearchInterests.fromJson(
          json['searchInterests'] as Map<String, dynamic>);

Map<String, dynamic> _$SearchInterests$QueryToJson(
        SearchInterests$Query instance) =>
    <String, dynamic>{
      'searchInterests': instance.searchInterests.toJson(),
    };

FriendsById$Query$FriendsById$Errors
    _$FriendsById$Query$FriendsById$ErrorsFromJson(Map<String, dynamic> json) =>
        FriendsById$Query$FriendsById$Errors()
          ..field = json['field'] as String?
          ..message = json['message'] as String;

Map<String, dynamic> _$FriendsById$Query$FriendsById$ErrorsToJson(
        FriendsById$Query$FriendsById$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

FriendsById$Query$FriendsById$Nodes
    _$FriendsById$Query$FriendsById$NodesFromJson(Map<String, dynamic> json) =>
        FriendsById$Query$FriendsById$Nodes()
          ..id = json['id'] as int
          ..name = json['name'] as String
          ..photoUrls = json['photoUrls'] as String
          ..bio = json['bio'] as String
          ..birthday =
              fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic> _$FriendsById$Query$FriendsById$NodesToJson(
        FriendsById$Query$FriendsById$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

FriendsById$Query$FriendsById _$FriendsById$Query$FriendsByIdFromJson(
        Map<String, dynamic> json) =>
    FriendsById$Query$FriendsById()
      ..ok = json['ok'] as bool?
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map((e) => FriendsById$Query$FriendsById$Errors.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..nodes = (json['nodes'] as List<dynamic>?)
          ?.map((e) => FriendsById$Query$FriendsById$Nodes.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FriendsById$Query$FriendsByIdToJson(
        FriendsById$Query$FriendsById instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
    };

FriendsById$Query _$FriendsById$QueryFromJson(Map<String, dynamic> json) =>
    FriendsById$Query()
      ..friendsById = FriendsById$Query$FriendsById.fromJson(
          json['friendsById'] as Map<String, dynamic>);

Map<String, dynamic> _$FriendsById$QueryToJson(FriendsById$Query instance) =>
    <String, dynamic>{
      'friendsById': instance.friendsById.toJson(),
    };

LastChat$Query$LastChat$Errors _$LastChat$Query$LastChat$ErrorsFromJson(
        Map<String, dynamic> json) =>
    LastChat$Query$LastChat$Errors()
      ..field = json['field'] as String?
      ..message = json['message'] as String;

Map<String, dynamic> _$LastChat$Query$LastChat$ErrorsToJson(
        LastChat$Query$LastChat$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

LastChat$Query$LastChat$Nodes$Author
    _$LastChat$Query$LastChat$Nodes$AuthorFromJson(Map<String, dynamic> json) =>
        LastChat$Query$LastChat$Nodes$Author()
          ..id = json['id'] as int
          ..name = json['name'] as String
          ..photoUrls = json['photoUrls'] as String
          ..bio = json['bio'] as String
          ..birthday =
              fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic> _$LastChat$Query$LastChat$Nodes$AuthorToJson(
        LastChat$Query$LastChat$Nodes$Author instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

LastChat$Query$LastChat$Nodes _$LastChat$Query$LastChat$NodesFromJson(
        Map<String, dynamic> json) =>
    LastChat$Query$LastChat$Nodes()
      ..id = json['id'] as int
      ..text = json['text'] as String
      ..createdAt =
          fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
      ..author = LastChat$Query$LastChat$Nodes$Author.fromJson(
          json['author'] as Map<String, dynamic>);

Map<String, dynamic> _$LastChat$Query$LastChat$NodesToJson(
        LastChat$Query$LastChat$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'createdAt': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'author': instance.author.toJson(),
    };

LastChat$Query$LastChat _$LastChat$Query$LastChatFromJson(
        Map<String, dynamic> json) =>
    LastChat$Query$LastChat()
      ..ok = json['ok'] as bool?
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map((e) => LastChat$Query$LastChat$Errors.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..nodes = json['nodes'] == null
          ? null
          : LastChat$Query$LastChat$Nodes.fromJson(
              json['nodes'] as Map<String, dynamic>);

Map<String, dynamic> _$LastChat$Query$LastChatToJson(
        LastChat$Query$LastChat instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'nodes': instance.nodes?.toJson(),
    };

LastChat$Query _$LastChat$QueryFromJson(Map<String, dynamic> json) =>
    LastChat$Query()
      ..lastChat = LastChat$Query$LastChat.fromJson(
          json['lastChat'] as Map<String, dynamic>);

Map<String, dynamic> _$LastChat$QueryToJson(LastChat$Query instance) =>
    <String, dynamic>{
      'lastChat': instance.lastChat.toJson(),
    };

Chats$Query$Chats$Nodes$Author _$Chats$Query$Chats$Nodes$AuthorFromJson(
        Map<String, dynamic> json) =>
    Chats$Query$Chats$Nodes$Author()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..photoUrls = json['photoUrls'] as String
      ..bio = json['bio'] as String
      ..birthday =
          fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic> _$Chats$Query$Chats$Nodes$AuthorToJson(
        Chats$Query$Chats$Nodes$Author instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

Chats$Query$Chats$Nodes$Survey$Answers$Votes
    _$Chats$Query$Chats$Nodes$Survey$Answers$VotesFromJson(
            Map<String, dynamic> json) =>
        Chats$Query$Chats$Nodes$Survey$Answers$Votes()
          ..id = json['id'] as int
          ..name = json['name'] as String
          ..photoUrls = json['photoUrls'] as String
          ..bio = json['bio'] as String
          ..birthday =
              fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic> _$Chats$Query$Chats$Nodes$Survey$Answers$VotesToJson(
        Chats$Query$Chats$Nodes$Survey$Answers$Votes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

Chats$Query$Chats$Nodes$Survey$Answers
    _$Chats$Query$Chats$Nodes$Survey$AnswersFromJson(
            Map<String, dynamic> json) =>
        Chats$Query$Chats$Nodes$Survey$Answers()
          ..id = json['id'] as int
          ..text = json['text'] as String
          ..votes = (json['votes'] as List<dynamic>)
              .map((e) => Chats$Query$Chats$Nodes$Survey$Answers$Votes.fromJson(
                  e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$Chats$Query$Chats$Nodes$Survey$AnswersToJson(
        Chats$Query$Chats$Nodes$Survey$Answers instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'votes': instance.votes.map((e) => e.toJson()).toList(),
    };

Chats$Query$Chats$Nodes$Survey _$Chats$Query$Chats$Nodes$SurveyFromJson(
        Map<String, dynamic> json) =>
    Chats$Query$Chats$Nodes$Survey()
      ..id = json['id'] as int
      ..question = json['question'] as String
      ..answers = (json['answers'] as List<dynamic>)
          .map((e) => Chats$Query$Chats$Nodes$Survey$Answers.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Chats$Query$Chats$Nodes$SurveyToJson(
        Chats$Query$Chats$Nodes$Survey instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answers': instance.answers.map((e) => e.toJson()).toList(),
    };

Chats$Query$Chats$Nodes _$Chats$Query$Chats$NodesFromJson(
        Map<String, dynamic> json) =>
    Chats$Query$Chats$Nodes()
      ..id = json['id'] as int
      ..createdAt =
          fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
      ..text = json['text'] as String
      ..author = Chats$Query$Chats$Nodes$Author.fromJson(
          json['author'] as Map<String, dynamic>)
      ..survey = json['survey'] == null
          ? null
          : Chats$Query$Chats$Nodes$Survey.fromJson(
              json['survey'] as Map<String, dynamic>);

Map<String, dynamic> _$Chats$Query$Chats$NodesToJson(
        Chats$Query$Chats$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'text': instance.text,
      'author': instance.author.toJson(),
      'survey': instance.survey?.toJson(),
    };

Chats$Query$Chats$Errors _$Chats$Query$Chats$ErrorsFromJson(
        Map<String, dynamic> json) =>
    Chats$Query$Chats$Errors()
      ..field = json['field'] as String?
      ..message = json['message'] as String;

Map<String, dynamic> _$Chats$Query$Chats$ErrorsToJson(
        Chats$Query$Chats$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

Chats$Query$Chats _$Chats$Query$ChatsFromJson(Map<String, dynamic> json) =>
    Chats$Query$Chats()
      ..ok = json['ok'] as bool?
      ..nodes = (json['nodes'] as List<dynamic>?)
          ?.map((e) =>
              Chats$Query$Chats$Nodes.fromJson(e as Map<String, dynamic>))
          .toList()
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map((e) =>
              Chats$Query$Chats$Errors.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Chats$Query$ChatsToJson(Chats$Query$Chats instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

Chats$Query _$Chats$QueryFromJson(Map<String, dynamic> json) => Chats$Query()
  ..chats = Chats$Query$Chats.fromJson(json['chats'] as Map<String, dynamic>);

Map<String, dynamic> _$Chats$QueryToJson(Chats$Query instance) =>
    <String, dynamic>{
      'chats': instance.chats.toJson(),
    };

PopularInterests$Query$PopularInterests$Nodes
    _$PopularInterests$Query$PopularInterests$NodesFromJson(
            Map<String, dynamic> json) =>
        PopularInterests$Query$PopularInterests$Nodes()
          ..id = json['id'] as int
          ..title = json['title'] as String;

Map<String, dynamic> _$PopularInterests$Query$PopularInterests$NodesToJson(
        PopularInterests$Query$PopularInterests$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

PopularInterests$Query$PopularInterests$Errors
    _$PopularInterests$Query$PopularInterests$ErrorsFromJson(
            Map<String, dynamic> json) =>
        PopularInterests$Query$PopularInterests$Errors()
          ..field = json['field'] as String?
          ..message = json['message'] as String;

Map<String, dynamic> _$PopularInterests$Query$PopularInterests$ErrorsToJson(
        PopularInterests$Query$PopularInterests$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

PopularInterests$Query$PopularInterests
    _$PopularInterests$Query$PopularInterestsFromJson(
            Map<String, dynamic> json) =>
        PopularInterests$Query$PopularInterests()
          ..ok = json['ok'] as bool?
          ..nodes = (json['nodes'] as List<dynamic>?)
              ?.map((e) =>
                  PopularInterests$Query$PopularInterests$Nodes.fromJson(
                      e as Map<String, dynamic>))
              .toList()
          ..errors = (json['errors'] as List<dynamic>?)
              ?.map((e) =>
                  PopularInterests$Query$PopularInterests$Errors.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$PopularInterests$Query$PopularInterestsToJson(
        PopularInterests$Query$PopularInterests instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

PopularInterests$Query _$PopularInterests$QueryFromJson(
        Map<String, dynamic> json) =>
    PopularInterests$Query()
      ..popularInterests = PopularInterests$Query$PopularInterests.fromJson(
          json['popularInterests'] as Map<String, dynamic>);

Map<String, dynamic> _$PopularInterests$QueryToJson(
        PopularInterests$Query instance) =>
    <String, dynamic>{
      'popularInterests': instance.popularInterests.toJson(),
    };

Forum$Query$Forum$Errors _$Forum$Query$Forum$ErrorsFromJson(
        Map<String, dynamic> json) =>
    Forum$Query$Forum$Errors()
      ..field = json['field'] as String?
      ..message = json['message'] as String;

Map<String, dynamic> _$Forum$Query$Forum$ErrorsToJson(
        Forum$Query$Forum$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

Forum$Query$Forum$Nodes _$Forum$Query$Forum$NodesFromJson(
        Map<String, dynamic> json) =>
    Forum$Query$Forum$Nodes()
      ..id = json['id'] as int
      ..updatedAt =
          fromGraphQLDateTimeToDartDateTime(json['updatedAt'] as String)
      ..chatDisabled = json['chatDisabled'] as bool?
      ..ownerId = json['ownerId'] as int?
      ..userNotifications = (json['userNotifications'] as List<dynamic>)
          .map((e) => ForumFieldsMixin$UserNotifications.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..chats = (json['chats'] as List<dynamic>)
          .map(
              (e) => ForumFieldsMixin$Chats.fromJson(e as Map<String, dynamic>))
          .toList()
      ..event = ForumFieldsMixin$Event.fromJson(
          json['event'] as Map<String, dynamic>);

Map<String, dynamic> _$Forum$Query$Forum$NodesToJson(
        Forum$Query$Forum$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updatedAt': fromDartDateTimeToGraphQLDateTime(instance.updatedAt),
      'chatDisabled': instance.chatDisabled,
      'ownerId': instance.ownerId,
      'userNotifications':
          instance.userNotifications.map((e) => e.toJson()).toList(),
      'chats': instance.chats.map((e) => e.toJson()).toList(),
      'event': instance.event.toJson(),
    };

Forum$Query$Forum _$Forum$Query$ForumFromJson(Map<String, dynamic> json) =>
    Forum$Query$Forum()
      ..ok = json['ok'] as bool?
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map((e) =>
              Forum$Query$Forum$Errors.fromJson(e as Map<String, dynamic>))
          .toList()
      ..nodes = json['nodes'] == null
          ? null
          : Forum$Query$Forum$Nodes.fromJson(
              json['nodes'] as Map<String, dynamic>);

Map<String, dynamic> _$Forum$Query$ForumToJson(Forum$Query$Forum instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'nodes': instance.nodes?.toJson(),
    };

Forum$Query _$Forum$QueryFromJson(Map<String, dynamic> json) => Forum$Query()
  ..forum = Forum$Query$Forum.fromJson(json['forum'] as Map<String, dynamic>);

Map<String, dynamic> _$Forum$QueryToJson(Forum$Query instance) =>
    <String, dynamic>{
      'forum': instance.forum.toJson(),
    };

FlaggedUsers$Query$FlaggedUsers$Nodes
    _$FlaggedUsers$Query$FlaggedUsers$NodesFromJson(
            Map<String, dynamic> json) =>
        FlaggedUsers$Query$FlaggedUsers$Nodes()
          ..id = json['id'] as int
          ..photoUrls = json['photoUrls'] as String
          ..phone = json['phone'] as String
          ..verified = json['verified'] as bool
          ..name = json['name'] as String
          ..birthday =
              fromGraphQLDateTimeToDartDateTime(json['birthday'] as String)
          ..bio = json['bio'] as String
          ..blockedUsers = (json['blockedUsers'] as List<dynamic>)
              .map((e) => UserFieldsMixin$BlockedUsers.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..inverseFriends = (json['inverseFriends'] as List<dynamic>)
              .map((e) => UserFieldsMixin$InverseFriends.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..friends = (json['friends'] as List<dynamic>)
              .map((e) =>
                  UserFieldsMixin$Friends.fromJson(e as Map<String, dynamic>))
              .toList()
          ..requestedFriends = (json['requestedFriends'] as List<dynamic>)
              .map((e) => UserFieldsMixin$RequestedFriends.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..friendRequests = (json['friendRequests'] as List<dynamic>)
              .map((e) => UserFieldsMixin$FriendRequests.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..groups = (json['groups'] as List<dynamic>)
              .map((e) =>
                  UserFieldsMixin$Groups.fromJson(e as Map<String, dynamic>))
              .toList()
          ..requestedGroups = (json['requestedGroups'] as List<dynamic>)
              .map((e) => UserFieldsMixin$RequestedGroups.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..interests = (json['interests'] as List<dynamic>)
              .map((e) =>
                  UserFieldsMixin$Interests.fromJson(e as Map<String, dynamic>))
              .toList()
          ..myEvents = (json['myEvents'] as List<dynamic>)
              .map((e) =>
                  UserFieldsMixin$MyEvents.fromJson(e as Map<String, dynamic>))
              .toList()
          ..chatNotifications = (json['chatNotifications'] as List<dynamic>)
              .map((e) => UserFieldsMixin$ChatNotifications.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..location = fromGraphQLPointNullableToDartGeoJsonPointNullable(
              json['location'] as String?);

Map<String, dynamic> _$FlaggedUsers$Query$FlaggedUsers$NodesToJson(
        FlaggedUsers$Query$FlaggedUsers$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photoUrls': instance.photoUrls,
      'phone': instance.phone,
      'verified': instance.verified,
      'name': instance.name,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
      'bio': instance.bio,
      'blockedUsers': instance.blockedUsers.map((e) => e.toJson()).toList(),
      'inverseFriends': instance.inverseFriends.map((e) => e.toJson()).toList(),
      'friends': instance.friends.map((e) => e.toJson()).toList(),
      'requestedFriends':
          instance.requestedFriends.map((e) => e.toJson()).toList(),
      'friendRequests': instance.friendRequests.map((e) => e.toJson()).toList(),
      'groups': instance.groups.map((e) => e.toJson()).toList(),
      'requestedGroups':
          instance.requestedGroups.map((e) => e.toJson()).toList(),
      'interests': instance.interests.map((e) => e.toJson()).toList(),
      'myEvents': instance.myEvents.map((e) => e.toJson()).toList(),
      'chatNotifications':
          instance.chatNotifications.map((e) => e.toJson()).toList(),
      'location':
          fromDartGeoJsonPointNullableToGraphQLPointNullable(instance.location),
    };

FlaggedUsers$Query$FlaggedUsers$Errors
    _$FlaggedUsers$Query$FlaggedUsers$ErrorsFromJson(
            Map<String, dynamic> json) =>
        FlaggedUsers$Query$FlaggedUsers$Errors()
          ..field = json['field'] as String?
          ..message = json['message'] as String;

Map<String, dynamic> _$FlaggedUsers$Query$FlaggedUsers$ErrorsToJson(
        FlaggedUsers$Query$FlaggedUsers$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

FlaggedUsers$Query$FlaggedUsers _$FlaggedUsers$Query$FlaggedUsersFromJson(
        Map<String, dynamic> json) =>
    FlaggedUsers$Query$FlaggedUsers()
      ..ok = json['ok'] as bool?
      ..nodes = (json['nodes'] as List<dynamic>?)
          ?.map((e) => FlaggedUsers$Query$FlaggedUsers$Nodes.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map((e) => FlaggedUsers$Query$FlaggedUsers$Errors.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FlaggedUsers$Query$FlaggedUsersToJson(
        FlaggedUsers$Query$FlaggedUsers instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

FlaggedUsers$Query _$FlaggedUsers$QueryFromJson(Map<String, dynamic> json) =>
    FlaggedUsers$Query()
      ..flaggedUsers = FlaggedUsers$Query$FlaggedUsers.fromJson(
          json['flaggedUsers'] as Map<String, dynamic>);

Map<String, dynamic> _$FlaggedUsers$QueryToJson(FlaggedUsers$Query instance) =>
    <String, dynamic>{
      'flaggedUsers': instance.flaggedUsers.toJson(),
    };

UsersFromContacts$Query$UsersFromContacts$Nodes
    _$UsersFromContacts$Query$UsersFromContacts$NodesFromJson(
            Map<String, dynamic> json) =>
        UsersFromContacts$Query$UsersFromContacts$Nodes()
          ..id = json['id'] as int
          ..name = json['name'] as String
          ..photoUrls = json['photoUrls'] as String
          ..bio = json['bio'] as String
          ..birthday =
              fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic> _$UsersFromContacts$Query$UsersFromContacts$NodesToJson(
        UsersFromContacts$Query$UsersFromContacts$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

UsersFromContacts$Query$UsersFromContacts$Errors
    _$UsersFromContacts$Query$UsersFromContacts$ErrorsFromJson(
            Map<String, dynamic> json) =>
        UsersFromContacts$Query$UsersFromContacts$Errors()
          ..field = json['field'] as String?
          ..message = json['message'] as String;

Map<String, dynamic> _$UsersFromContacts$Query$UsersFromContacts$ErrorsToJson(
        UsersFromContacts$Query$UsersFromContacts$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

UsersFromContacts$Query$UsersFromContacts
    _$UsersFromContacts$Query$UsersFromContactsFromJson(
            Map<String, dynamic> json) =>
        UsersFromContacts$Query$UsersFromContacts()
          ..ok = json['ok'] as bool?
          ..nodes = (json['nodes'] as List<dynamic>?)
              ?.map((e) =>
                  UsersFromContacts$Query$UsersFromContacts$Nodes.fromJson(
                      e as Map<String, dynamic>))
              .toList()
          ..errors = (json['errors'] as List<dynamic>?)
              ?.map((e) =>
                  UsersFromContacts$Query$UsersFromContacts$Errors.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$UsersFromContacts$Query$UsersFromContactsToJson(
        UsersFromContacts$Query$UsersFromContacts instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

UsersFromContacts$Query _$UsersFromContacts$QueryFromJson(
        Map<String, dynamic> json) =>
    UsersFromContacts$Query()
      ..usersFromContacts = UsersFromContacts$Query$UsersFromContacts.fromJson(
          json['usersFromContacts'] as Map<String, dynamic>);

Map<String, dynamic> _$UsersFromContacts$QueryToJson(
        UsersFromContacts$Query instance) =>
    <String, dynamic>{
      'usersFromContacts': instance.usersFromContacts.toJson(),
    };

NumbersNotUsers$Query$NumbersNotUsers$Errors
    _$NumbersNotUsers$Query$NumbersNotUsers$ErrorsFromJson(
            Map<String, dynamic> json) =>
        NumbersNotUsers$Query$NumbersNotUsers$Errors()
          ..field = json['field'] as String?
          ..message = json['message'] as String;

Map<String, dynamic> _$NumbersNotUsers$Query$NumbersNotUsers$ErrorsToJson(
        NumbersNotUsers$Query$NumbersNotUsers$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

NumbersNotUsers$Query$NumbersNotUsers
    _$NumbersNotUsers$Query$NumbersNotUsersFromJson(
            Map<String, dynamic> json) =>
        NumbersNotUsers$Query$NumbersNotUsers()
          ..ok = json['ok'] as bool?
          ..nodes = (json['nodes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList()
          ..errors = (json['errors'] as List<dynamic>?)
              ?.map((e) =>
                  NumbersNotUsers$Query$NumbersNotUsers$Errors.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$NumbersNotUsers$Query$NumbersNotUsersToJson(
        NumbersNotUsers$Query$NumbersNotUsers instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

NumbersNotUsers$Query _$NumbersNotUsers$QueryFromJson(
        Map<String, dynamic> json) =>
    NumbersNotUsers$Query()
      ..numbersNotUsers = NumbersNotUsers$Query$NumbersNotUsers.fromJson(
          json['numbersNotUsers'] as Map<String, dynamic>);

Map<String, dynamic> _$NumbersNotUsers$QueryToJson(
        NumbersNotUsers$Query instance) =>
    <String, dynamic>{
      'numbersNotUsers': instance.numbersNotUsers.toJson(),
    };

MyReferrals$Query$MyReferrals$Errors
    _$MyReferrals$Query$MyReferrals$ErrorsFromJson(Map<String, dynamic> json) =>
        MyReferrals$Query$MyReferrals$Errors()
          ..field = json['field'] as String?
          ..message = json['message'] as String;

Map<String, dynamic> _$MyReferrals$Query$MyReferrals$ErrorsToJson(
        MyReferrals$Query$MyReferrals$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

MyReferrals$Query$MyReferrals _$MyReferrals$Query$MyReferralsFromJson(
        Map<String, dynamic> json) =>
    MyReferrals$Query$MyReferrals()
      ..ok = json['ok'] as bool?
      ..nodes =
          (json['nodes'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map((e) => MyReferrals$Query$MyReferrals$Errors.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$MyReferrals$Query$MyReferralsToJson(
        MyReferrals$Query$MyReferrals instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

MyReferrals$Query _$MyReferrals$QueryFromJson(Map<String, dynamic> json) =>
    MyReferrals$Query()
      ..myReferrals = MyReferrals$Query$MyReferrals.fromJson(
          json['myReferrals'] as Map<String, dynamic>);

Map<String, dynamic> _$MyReferrals$QueryToJson(MyReferrals$Query instance) =>
    <String, dynamic>{
      'myReferrals': instance.myReferrals.toJson(),
    };

SearchGroups$Query$SearchGroups$Nodes
    _$SearchGroups$Query$SearchGroups$NodesFromJson(
            Map<String, dynamic> json) =>
        SearchGroups$Query$SearchGroups$Nodes()
          ..id = json['id'] as int
          ..name = json['name'] as String
          ..owner = json['owner'] as int
          ..users = (json['users'] as List<dynamic>)
              .map((e) =>
                  GroupFieldsMixin$Users.fromJson(e as Map<String, dynamic>))
              .toList()
          ..screened = json['screened'] as bool
          ..location = fromGraphQLPointNullableToDartGeoJsonPointNullable(
              json['location'] as String?)
          ..icon = GroupFieldsMixin$Icon.fromJson(
              json['icon'] as Map<String, dynamic>);

Map<String, dynamic> _$SearchGroups$Query$SearchGroups$NodesToJson(
        SearchGroups$Query$SearchGroups$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'owner': instance.owner,
      'users': instance.users.map((e) => e.toJson()).toList(),
      'screened': instance.screened,
      'location':
          fromDartGeoJsonPointNullableToGraphQLPointNullable(instance.location),
      'icon': instance.icon.toJson(),
    };

SearchGroups$Query$SearchGroups$Errors
    _$SearchGroups$Query$SearchGroups$ErrorsFromJson(
            Map<String, dynamic> json) =>
        SearchGroups$Query$SearchGroups$Errors()
          ..field = json['field'] as String?
          ..message = json['message'] as String;

Map<String, dynamic> _$SearchGroups$Query$SearchGroups$ErrorsToJson(
        SearchGroups$Query$SearchGroups$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

SearchGroups$Query$SearchGroups _$SearchGroups$Query$SearchGroupsFromJson(
        Map<String, dynamic> json) =>
    SearchGroups$Query$SearchGroups()
      ..ok = json['ok'] as bool?
      ..nodes = (json['nodes'] as List<dynamic>?)
          ?.map((e) => SearchGroups$Query$SearchGroups$Nodes.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map((e) => SearchGroups$Query$SearchGroups$Errors.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SearchGroups$Query$SearchGroupsToJson(
        SearchGroups$Query$SearchGroups instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

SearchGroups$Query _$SearchGroups$QueryFromJson(Map<String, dynamic> json) =>
    SearchGroups$Query()
      ..searchGroups = SearchGroups$Query$SearchGroups.fromJson(
          json['searchGroups'] as Map<String, dynamic>);

Map<String, dynamic> _$SearchGroups$QueryToJson(SearchGroups$Query instance) =>
    <String, dynamic>{
      'searchGroups': instance.searchGroups.toJson(),
    };

SearchEvents$Query$SearchEvents$Nodes
    _$SearchEvents$Query$SearchEvents$NodesFromJson(
            Map<String, dynamic> json) =>
        SearchEvents$Query$SearchEvents$Nodes()
          ..id = json['id'] as int
          ..createdAt =
              fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
          ..updatedAt =
              fromGraphQLDateTimeToDartDateTime(json['updatedAt'] as String)
          ..title = json['title'] as String
          ..description = json['description'] as String
          ..creator = EventFieldsMixin$Creator.fromJson(
              json['creator'] as Map<String, dynamic>)
          ..invited = (json['invited'] as List<dynamic>)
              .map((e) =>
                  EventFieldsMixin$Invited.fromJson(e as Map<String, dynamic>))
              .toList()
          ..wannago = (json['wannago'] as List<dynamic>)
              .map((e) =>
                  EventFieldsMixin$Wannago.fromJson(e as Map<String, dynamic>))
              .toList()
          ..time = fromGraphQLDateTimeToDartDateTime(json['time'] as String)
          ..location = json['location'] as String
          ..coordinates =
              fromGraphQLPointToDartGeoJsonPoint(json['coordinates'] as String)
          ..pictureUrl = json['pictureUrl'] as String?
          ..relatedInterests = (json['relatedInterests'] as List<dynamic>)
              .map((e) => EventFieldsMixin$RelatedInterests.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..privacy = $enumDecode(_$PrivacyEnumMap, json['privacy'],
              unknownValue: Privacy.artemisUnknown)
          ..screened = json['screened'] as bool?
          ..filterLocation = json['filterLocation'] as String
          ..filterRadius = (json['filterRadius'] as num).toDouble()
          ..filterGender = $enumDecode(_$GenderEnumMap, json['filterGender'],
              unknownValue: Gender.artemisUnknown)
          ..filterMinAge = json['filterMinAge'] as int
          ..filterMaxAge = json['filterMaxAge'] as int;

Map<String, dynamic> _$SearchEvents$Query$SearchEvents$NodesToJson(
        SearchEvents$Query$SearchEvents$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'updatedAt': fromDartDateTimeToGraphQLDateTime(instance.updatedAt),
      'title': instance.title,
      'description': instance.description,
      'creator': instance.creator.toJson(),
      'invited': instance.invited.map((e) => e.toJson()).toList(),
      'wannago': instance.wannago.map((e) => e.toJson()).toList(),
      'time': fromDartDateTimeToGraphQLDateTime(instance.time),
      'location': instance.location,
      'coordinates': fromDartGeoJsonPointToGraphQLPoint(instance.coordinates),
      'pictureUrl': instance.pictureUrl,
      'relatedInterests':
          instance.relatedInterests.map((e) => e.toJson()).toList(),
      'privacy': _$PrivacyEnumMap[instance.privacy],
      'screened': instance.screened,
      'filterLocation': instance.filterLocation,
      'filterRadius': instance.filterRadius,
      'filterGender': _$GenderEnumMap[instance.filterGender],
      'filterMinAge': instance.filterMinAge,
      'filterMaxAge': instance.filterMaxAge,
    };

SearchEvents$Query$SearchEvents$Errors
    _$SearchEvents$Query$SearchEvents$ErrorsFromJson(
            Map<String, dynamic> json) =>
        SearchEvents$Query$SearchEvents$Errors()
          ..field = json['field'] as String?
          ..message = json['message'] as String;

Map<String, dynamic> _$SearchEvents$Query$SearchEvents$ErrorsToJson(
        SearchEvents$Query$SearchEvents$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

SearchEvents$Query$SearchEvents _$SearchEvents$Query$SearchEventsFromJson(
        Map<String, dynamic> json) =>
    SearchEvents$Query$SearchEvents()
      ..ok = json['ok'] as bool?
      ..nodes = (json['nodes'] as List<dynamic>?)
          ?.map((e) => SearchEvents$Query$SearchEvents$Nodes.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map((e) => SearchEvents$Query$SearchEvents$Errors.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SearchEvents$Query$SearchEventsToJson(
        SearchEvents$Query$SearchEvents instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

SearchEvents$Query _$SearchEvents$QueryFromJson(Map<String, dynamic> json) =>
    SearchEvents$Query()
      ..searchEvents = SearchEvents$Query$SearchEvents.fromJson(
          json['searchEvents'] as Map<String, dynamic>);

Map<String, dynamic> _$SearchEvents$QueryToJson(SearchEvents$Query instance) =>
    <String, dynamic>{
      'searchEvents': instance.searchEvents.toJson(),
    };

GroupIcons$Query$GroupIcons$Nodes _$GroupIcons$Query$GroupIcons$NodesFromJson(
        Map<String, dynamic> json) =>
    GroupIcons$Query$GroupIcons$Nodes()
      ..url = json['url'] as String
      ..id = json['id'] as int;

Map<String, dynamic> _$GroupIcons$Query$GroupIcons$NodesToJson(
        GroupIcons$Query$GroupIcons$Nodes instance) =>
    <String, dynamic>{
      'url': instance.url,
      'id': instance.id,
    };

GroupIcons$Query$GroupIcons$Errors _$GroupIcons$Query$GroupIcons$ErrorsFromJson(
        Map<String, dynamic> json) =>
    GroupIcons$Query$GroupIcons$Errors()
      ..field = json['field'] as String?
      ..message = json['message'] as String;

Map<String, dynamic> _$GroupIcons$Query$GroupIcons$ErrorsToJson(
        GroupIcons$Query$GroupIcons$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

GroupIcons$Query$GroupIcons _$GroupIcons$Query$GroupIconsFromJson(
        Map<String, dynamic> json) =>
    GroupIcons$Query$GroupIcons()
      ..ok = json['ok'] as bool?
      ..nodes = (json['nodes'] as List<dynamic>?)
          ?.map((e) => GroupIcons$Query$GroupIcons$Nodes.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..errors = (json['errors'] as List<dynamic>?)
          ?.map((e) => GroupIcons$Query$GroupIcons$Errors.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GroupIcons$Query$GroupIconsToJson(
        GroupIcons$Query$GroupIcons instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

GroupIcons$Query _$GroupIcons$QueryFromJson(Map<String, dynamic> json) =>
    GroupIcons$Query()
      ..groupIcons = GroupIcons$Query$GroupIcons.fromJson(
          json['groupIcons'] as Map<String, dynamic>);

Map<String, dynamic> _$GroupIcons$QueryToJson(GroupIcons$Query instance) =>
    <String, dynamic>{
      'groupIcons': instance.groupIcons.toJson(),
    };

UserArguments _$UserArgumentsFromJson(Map<String, dynamic> json) =>
    UserArguments(
      id: json['id'] as int,
    );

Map<String, dynamic> _$UserArgumentsToJson(UserArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

EventsArguments _$EventsArgumentsFromJson(Map<String, dynamic> json) =>
    EventsArguments(
      dateRange:
          DateRangeInput.fromJson(json['dateRange'] as Map<String, dynamic>),
      take: json['take'] as int,
      skip: json['skip'] as int,
      sortType: $enumDecode(_$SortTypeEnumMap, json['sortType'],
          unknownValue: SortType.artemisUnknown),
    );

Map<String, dynamic> _$EventsArgumentsToJson(EventsArguments instance) =>
    <String, dynamic>{
      'dateRange': instance.dateRange.toJson(),
      'take': instance.take,
      'skip': instance.skip,
      'sortType': _$SortTypeEnumMap[instance.sortType],
    };

const _$SortTypeEnumMap = {
  SortType.newest: 'NEWEST',
  SortType.soonest: 'SOONEST',
  SortType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

EventUserPreviewArguments _$EventUserPreviewArgumentsFromJson(
        Map<String, dynamic> json) =>
    EventUserPreviewArguments(
      userIds: (json['userIds'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$EventUserPreviewArgumentsToJson(
        EventUserPreviewArguments instance) =>
    <String, dynamic>{
      'userIds': instance.userIds,
    };

OtherEventsArguments _$OtherEventsArgumentsFromJson(
        Map<String, dynamic> json) =>
    OtherEventsArguments(
      dateRange:
          DateRangeInput.fromJson(json['dateRange'] as Map<String, dynamic>),
      take: json['take'] as int,
      skip: json['skip'] as int,
      sortType: $enumDecode(_$SortTypeEnumMap, json['sortType'],
          unknownValue: SortType.artemisUnknown),
    );

Map<String, dynamic> _$OtherEventsArgumentsToJson(
        OtherEventsArguments instance) =>
    <String, dynamic>{
      'dateRange': instance.dateRange.toJson(),
      'take': instance.take,
      'skip': instance.skip,
      'sortType': _$SortTypeEnumMap[instance.sortType],
    };

EventArguments _$EventArgumentsFromJson(Map<String, dynamic> json) =>
    EventArguments(
      eventId: json['eventId'] as int,
    );

Map<String, dynamic> _$EventArgumentsToJson(EventArguments instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
    };

ForumsByEventIdArguments _$ForumsByEventIdArgumentsFromJson(
        Map<String, dynamic> json) =>
    ForumsByEventIdArguments(
      eventIds:
          (json['eventIds'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$ForumsByEventIdArgumentsToJson(
        ForumsByEventIdArguments instance) =>
    <String, dynamic>{
      'eventIds': instance.eventIds,
    };

GroupEventsArguments _$GroupEventsArgumentsFromJson(
        Map<String, dynamic> json) =>
    GroupEventsArguments(
      groupId: json['groupId'] as int,
    );

Map<String, dynamic> _$GroupEventsArgumentsToJson(
        GroupEventsArguments instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
    };

SearchUsersArguments _$SearchUsersArgumentsFromJson(
        Map<String, dynamic> json) =>
    SearchUsersArguments(
      partial: json['partial'] as String,
    );

Map<String, dynamic> _$SearchUsersArgumentsToJson(
        SearchUsersArguments instance) =>
    <String, dynamic>{
      'partial': instance.partial,
    };

SearchInterestsArguments _$SearchInterestsArgumentsFromJson(
        Map<String, dynamic> json) =>
    SearchInterestsArguments(
      partial: json['partial'] as String,
    );

Map<String, dynamic> _$SearchInterestsArgumentsToJson(
        SearchInterestsArguments instance) =>
    <String, dynamic>{
      'partial': instance.partial,
    };

FriendsByIdArguments _$FriendsByIdArgumentsFromJson(
        Map<String, dynamic> json) =>
    FriendsByIdArguments(
      id: json['id'] as int,
    );

Map<String, dynamic> _$FriendsByIdArgumentsToJson(
        FriendsByIdArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

LastChatArguments _$LastChatArgumentsFromJson(Map<String, dynamic> json) =>
    LastChatArguments(
      forumId: json['forumId'] as int,
    );

Map<String, dynamic> _$LastChatArgumentsToJson(LastChatArguments instance) =>
    <String, dynamic>{
      'forumId': instance.forumId,
    };

ChatsArguments _$ChatsArgumentsFromJson(Map<String, dynamic> json) =>
    ChatsArguments(
      forumId: json['forumId'] as int,
      take: json['take'] as int,
      skip: json['skip'] as int,
    );

Map<String, dynamic> _$ChatsArgumentsToJson(ChatsArguments instance) =>
    <String, dynamic>{
      'forumId': instance.forumId,
      'take': instance.take,
      'skip': instance.skip,
    };

ForumArguments _$ForumArgumentsFromJson(Map<String, dynamic> json) =>
    ForumArguments(
      forumId: json['forumId'] as int,
    );

Map<String, dynamic> _$ForumArgumentsToJson(ForumArguments instance) =>
    <String, dynamic>{
      'forumId': instance.forumId,
    };

UsersFromContactsArguments _$UsersFromContactsArgumentsFromJson(
        Map<String, dynamic> json) =>
    UsersFromContactsArguments(
      numbers:
          (json['numbers'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$UsersFromContactsArgumentsToJson(
        UsersFromContactsArguments instance) =>
    <String, dynamic>{
      'numbers': instance.numbers,
    };

NumbersNotUsersArguments _$NumbersNotUsersArgumentsFromJson(
        Map<String, dynamic> json) =>
    NumbersNotUsersArguments(
      numbers:
          (json['numbers'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$NumbersNotUsersArgumentsToJson(
        NumbersNotUsersArguments instance) =>
    <String, dynamic>{
      'numbers': instance.numbers,
    };

SearchGroupsArguments _$SearchGroupsArgumentsFromJson(
        Map<String, dynamic> json) =>
    SearchGroupsArguments(
      partial: json['partial'] as String,
    );

Map<String, dynamic> _$SearchGroupsArgumentsToJson(
        SearchGroupsArguments instance) =>
    <String, dynamic>{
      'partial': instance.partial,
    };

SearchEventsArguments _$SearchEventsArgumentsFromJson(
        Map<String, dynamic> json) =>
    SearchEventsArguments(
      partial: json['partial'] as String,
    );

Map<String, dynamic> _$SearchEventsArgumentsToJson(
        SearchEventsArguments instance) =>
    <String, dynamic>{
      'partial': instance.partial,
    };
