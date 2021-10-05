// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'mutations_graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddInterests$Mutation$AddInterests$Errors
    _$AddInterests$Mutation$AddInterests$ErrorsFromJson(
        Map<String, dynamic> json) {
  return AddInterests$Mutation$AddInterests$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$AddInterests$Mutation$AddInterests$ErrorsToJson(
        AddInterests$Mutation$AddInterests$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

AddInterests$Mutation$AddInterests _$AddInterests$Mutation$AddInterestsFromJson(
    Map<String, dynamic> json) {
  return AddInterests$Mutation$AddInterests()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => AddInterests$Mutation$AddInterests$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$AddInterests$Mutation$AddInterestsToJson(
        AddInterests$Mutation$AddInterests instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

AddInterests$Mutation _$AddInterests$MutationFromJson(
    Map<String, dynamic> json) {
  return AddInterests$Mutation()
    ..addInterests = AddInterests$Mutation$AddInterests.fromJson(
        json['addInterests'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AddInterests$MutationToJson(
        AddInterests$Mutation instance) =>
    <String, dynamic>{
      'addInterests': instance.addInterests.toJson(),
    };

AddInvite$Mutation$AddInvite$Nodes _$AddInvite$Mutation$AddInvite$NodesFromJson(
    Map<String, dynamic> json) {
  return AddInvite$Mutation$AddInvite$Nodes()
    ..id = json['id'] as int
    ..createdAt = fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
    ..updatedAt = fromGraphQLDateTimeToDartDateTime(json['updatedAt'] as String)
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..creator = EventFieldsMixin$Creator.fromJson(
        json['creator'] as Map<String, dynamic>)
    ..invited = (json['invited'] as List<dynamic>)
        .map(
            (e) => EventFieldsMixin$Invited.fromJson(e as Map<String, dynamic>))
        .toList()
    ..wannago = (json['wannago'] as List<dynamic>)
        .map(
            (e) => EventFieldsMixin$Wannago.fromJson(e as Map<String, dynamic>))
        .toList()
    ..time = fromGraphQLDateTimeToDartDateTime(json['time'] as String)
    ..location = json['location'] as String
    ..pictureUrl = json['pictureUrl'] as String?
    ..relatedInterests = (json['relatedInterests'] as List<dynamic>)
        .map((e) => EventFieldsMixin$RelatedInterests.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..filterLocation = json['filterLocation'] as String
    ..filterRadius = (json['filterRadius'] as num).toDouble()
    ..filterGender = _$enumDecode(_$GenderEnumMap, json['filterGender'],
        unknownValue: Gender.artemisUnknown)
    ..filterAge = json['filterAge'] as String;
}

Map<String, dynamic> _$AddInvite$Mutation$AddInvite$NodesToJson(
        AddInvite$Mutation$AddInvite$Nodes instance) =>
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

AddInvite$Mutation$AddInvite$Errors
    _$AddInvite$Mutation$AddInvite$ErrorsFromJson(Map<String, dynamic> json) {
  return AddInvite$Mutation$AddInvite$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$AddInvite$Mutation$AddInvite$ErrorsToJson(
        AddInvite$Mutation$AddInvite$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

AddInvite$Mutation$AddInvite _$AddInvite$Mutation$AddInviteFromJson(
    Map<String, dynamic> json) {
  return AddInvite$Mutation$AddInvite()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] == null
        ? null
        : AddInvite$Mutation$AddInvite$Nodes.fromJson(
            json['nodes'] as Map<String, dynamic>)
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => AddInvite$Mutation$AddInvite$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$AddInvite$Mutation$AddInviteToJson(
        AddInvite$Mutation$AddInvite instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

AddInvite$Mutation _$AddInvite$MutationFromJson(Map<String, dynamic> json) {
  return AddInvite$Mutation()
    ..addInvite = AddInvite$Mutation$AddInvite.fromJson(
        json['addInvite'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AddInvite$MutationToJson(AddInvite$Mutation instance) =>
    <String, dynamic>{
      'addInvite': instance.addInvite.toJson(),
    };

EventFieldsMixin$Creator _$EventFieldsMixin$CreatorFromJson(
    Map<String, dynamic> json) {
  return EventFieldsMixin$Creator()
    ..id = json['id'] as int
    ..username = json['username'] as String
    ..profilePhotoUrl = json['profilePhotoUrl'] as String;
}

Map<String, dynamic> _$EventFieldsMixin$CreatorToJson(
        EventFieldsMixin$Creator instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profilePhotoUrl': instance.profilePhotoUrl,
    };

EventFieldsMixin$Invited _$EventFieldsMixin$InvitedFromJson(
    Map<String, dynamic> json) {
  return EventFieldsMixin$Invited()
    ..id = json['id'] as int
    ..username = json['username'] as String
    ..profilePhotoUrl = json['profilePhotoUrl'] as String;
}

Map<String, dynamic> _$EventFieldsMixin$InvitedToJson(
        EventFieldsMixin$Invited instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profilePhotoUrl': instance.profilePhotoUrl,
    };

EventFieldsMixin$Wannago$User _$EventFieldsMixin$Wannago$UserFromJson(
    Map<String, dynamic> json) {
  return EventFieldsMixin$Wannago$User()
    ..id = json['id'] as int
    ..username = json['username'] as String
    ..profilePhotoUrl = json['profilePhotoUrl'] as String;
}

Map<String, dynamic> _$EventFieldsMixin$Wannago$UserToJson(
        EventFieldsMixin$Wannago$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profilePhotoUrl': instance.profilePhotoUrl,
    };

EventFieldsMixin$Wannago _$EventFieldsMixin$WannagoFromJson(
    Map<String, dynamic> json) {
  return EventFieldsMixin$Wannago()
    ..id = json['id'] as int
    ..declined = json['declined'] as bool
    ..user = EventFieldsMixin$Wannago$User.fromJson(
        json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$EventFieldsMixin$WannagoToJson(
        EventFieldsMixin$Wannago instance) =>
    <String, dynamic>{
      'id': instance.id,
      'declined': instance.declined,
      'user': instance.user.toJson(),
    };

EventFieldsMixin$RelatedInterests _$EventFieldsMixin$RelatedInterestsFromJson(
    Map<String, dynamic> json) {
  return EventFieldsMixin$RelatedInterests()..id = json['id'] as int;
}

Map<String, dynamic> _$EventFieldsMixin$RelatedInterestsToJson(
        EventFieldsMixin$RelatedInterests instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

AddWannago$Mutation$AddWannago$Nodes
    _$AddWannago$Mutation$AddWannago$NodesFromJson(Map<String, dynamic> json) {
  return AddWannago$Mutation$AddWannago$Nodes()
    ..id = json['id'] as int
    ..createdAt = fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
    ..updatedAt = fromGraphQLDateTimeToDartDateTime(json['updatedAt'] as String)
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..creator = EventFieldsMixin$Creator.fromJson(
        json['creator'] as Map<String, dynamic>)
    ..invited = (json['invited'] as List<dynamic>)
        .map(
            (e) => EventFieldsMixin$Invited.fromJson(e as Map<String, dynamic>))
        .toList()
    ..wannago = (json['wannago'] as List<dynamic>)
        .map(
            (e) => EventFieldsMixin$Wannago.fromJson(e as Map<String, dynamic>))
        .toList()
    ..time = fromGraphQLDateTimeToDartDateTime(json['time'] as String)
    ..location = json['location'] as String
    ..pictureUrl = json['pictureUrl'] as String?
    ..relatedInterests = (json['relatedInterests'] as List<dynamic>)
        .map((e) => EventFieldsMixin$RelatedInterests.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..filterLocation = json['filterLocation'] as String
    ..filterRadius = (json['filterRadius'] as num).toDouble()
    ..filterGender = _$enumDecode(_$GenderEnumMap, json['filterGender'],
        unknownValue: Gender.artemisUnknown)
    ..filterAge = json['filterAge'] as String;
}

Map<String, dynamic> _$AddWannago$Mutation$AddWannago$NodesToJson(
        AddWannago$Mutation$AddWannago$Nodes instance) =>
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
      'pictureUrl': instance.pictureUrl,
      'relatedInterests':
          instance.relatedInterests.map((e) => e.toJson()).toList(),
      'filterLocation': instance.filterLocation,
      'filterRadius': instance.filterRadius,
      'filterGender': _$GenderEnumMap[instance.filterGender],
      'filterAge': instance.filterAge,
    };

AddWannago$Mutation$AddWannago$Errors
    _$AddWannago$Mutation$AddWannago$ErrorsFromJson(Map<String, dynamic> json) {
  return AddWannago$Mutation$AddWannago$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$AddWannago$Mutation$AddWannago$ErrorsToJson(
        AddWannago$Mutation$AddWannago$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

AddWannago$Mutation$AddWannago _$AddWannago$Mutation$AddWannagoFromJson(
    Map<String, dynamic> json) {
  return AddWannago$Mutation$AddWannago()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] == null
        ? null
        : AddWannago$Mutation$AddWannago$Nodes.fromJson(
            json['nodes'] as Map<String, dynamic>)
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => AddWannago$Mutation$AddWannago$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$AddWannago$Mutation$AddWannagoToJson(
        AddWannago$Mutation$AddWannago instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

AddWannago$Mutation _$AddWannago$MutationFromJson(Map<String, dynamic> json) {
  return AddWannago$Mutation()
    ..addWannago = AddWannago$Mutation$AddWannago.fromJson(
        json['addWannago'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AddWannago$MutationToJson(
        AddWannago$Mutation instance) =>
    <String, dynamic>{
      'addWannago': instance.addWannago.toJson(),
    };

BlockUser$Mutation$BlockUser$Errors
    _$BlockUser$Mutation$BlockUser$ErrorsFromJson(Map<String, dynamic> json) {
  return BlockUser$Mutation$BlockUser$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$BlockUser$Mutation$BlockUser$ErrorsToJson(
        BlockUser$Mutation$BlockUser$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

BlockUser$Mutation$BlockUser _$BlockUser$Mutation$BlockUserFromJson(
    Map<String, dynamic> json) {
  return BlockUser$Mutation$BlockUser()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => BlockUser$Mutation$BlockUser$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$BlockUser$Mutation$BlockUserToJson(
        BlockUser$Mutation$BlockUser instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

BlockUser$Mutation _$BlockUser$MutationFromJson(Map<String, dynamic> json) {
  return BlockUser$Mutation()
    ..blockUser = BlockUser$Mutation$BlockUser.fromJson(
        json['blockUser'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BlockUser$MutationToJson(BlockUser$Mutation instance) =>
    <String, dynamic>{
      'blockUser': instance.blockUser.toJson(),
    };

CreateChat$Mutation$CreateChat$Nodes$Author
    _$CreateChat$Mutation$CreateChat$Nodes$AuthorFromJson(
        Map<String, dynamic> json) {
  return CreateChat$Mutation$CreateChat$Nodes$Author()
    ..id = json['id'] as int
    ..username = json['username'] as String
    ..profilePhotoUrl = json['profilePhotoUrl'] as String;
}

Map<String, dynamic> _$CreateChat$Mutation$CreateChat$Nodes$AuthorToJson(
        CreateChat$Mutation$CreateChat$Nodes$Author instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profilePhotoUrl': instance.profilePhotoUrl,
    };

CreateChat$Mutation$CreateChat$Nodes
    _$CreateChat$Mutation$CreateChat$NodesFromJson(Map<String, dynamic> json) {
  return CreateChat$Mutation$CreateChat$Nodes()
    ..id = json['id'] as int
    ..text = json['text'] as String
    ..createdAt = fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
    ..author = CreateChat$Mutation$CreateChat$Nodes$Author.fromJson(
        json['author'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateChat$Mutation$CreateChat$NodesToJson(
        CreateChat$Mutation$CreateChat$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'createdAt': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'author': instance.author.toJson(),
    };

CreateChat$Mutation$CreateChat$Errors
    _$CreateChat$Mutation$CreateChat$ErrorsFromJson(Map<String, dynamic> json) {
  return CreateChat$Mutation$CreateChat$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$CreateChat$Mutation$CreateChat$ErrorsToJson(
        CreateChat$Mutation$CreateChat$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

CreateChat$Mutation$CreateChat _$CreateChat$Mutation$CreateChatFromJson(
    Map<String, dynamic> json) {
  return CreateChat$Mutation$CreateChat()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] == null
        ? null
        : CreateChat$Mutation$CreateChat$Nodes.fromJson(
            json['nodes'] as Map<String, dynamic>)
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => CreateChat$Mutation$CreateChat$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$CreateChat$Mutation$CreateChatToJson(
        CreateChat$Mutation$CreateChat instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

CreateChat$Mutation _$CreateChat$MutationFromJson(Map<String, dynamic> json) {
  return CreateChat$Mutation()
    ..createChat = CreateChat$Mutation$CreateChat.fromJson(
        json['createChat'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateChat$MutationToJson(
        CreateChat$Mutation instance) =>
    <String, dynamic>{
      'createChat': instance.createChat.toJson(),
    };

ChatInput _$ChatInputFromJson(Map<String, dynamic> json) {
  return ChatInput(
    authorId: json['authorId'] as int,
    eventId: json['eventId'] as int,
    forumId: json['forumId'] as int,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$ChatInputToJson(ChatInput instance) => <String, dynamic>{
      'authorId': instance.authorId,
      'eventId': instance.eventId,
      'forumId': instance.forumId,
      'text': instance.text,
    };

CreateEvent$Mutation$CreateEvent$Nodes
    _$CreateEvent$Mutation$CreateEvent$NodesFromJson(
        Map<String, dynamic> json) {
  return CreateEvent$Mutation$CreateEvent$Nodes()
    ..id = json['id'] as int
    ..createdAt = fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
    ..updatedAt = fromGraphQLDateTimeToDartDateTime(json['updatedAt'] as String)
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..creator = EventFieldsMixin$Creator.fromJson(
        json['creator'] as Map<String, dynamic>)
    ..invited = (json['invited'] as List<dynamic>)
        .map(
            (e) => EventFieldsMixin$Invited.fromJson(e as Map<String, dynamic>))
        .toList()
    ..wannago = (json['wannago'] as List<dynamic>)
        .map(
            (e) => EventFieldsMixin$Wannago.fromJson(e as Map<String, dynamic>))
        .toList()
    ..time = fromGraphQLDateTimeToDartDateTime(json['time'] as String)
    ..location = json['location'] as String
    ..pictureUrl = json['pictureUrl'] as String?
    ..relatedInterests = (json['relatedInterests'] as List<dynamic>)
        .map((e) => EventFieldsMixin$RelatedInterests.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..filterLocation = json['filterLocation'] as String
    ..filterRadius = (json['filterRadius'] as num).toDouble()
    ..filterGender = _$enumDecode(_$GenderEnumMap, json['filterGender'],
        unknownValue: Gender.artemisUnknown)
    ..filterAge = json['filterAge'] as String;
}

Map<String, dynamic> _$CreateEvent$Mutation$CreateEvent$NodesToJson(
        CreateEvent$Mutation$CreateEvent$Nodes instance) =>
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
      'pictureUrl': instance.pictureUrl,
      'relatedInterests':
          instance.relatedInterests.map((e) => e.toJson()).toList(),
      'filterLocation': instance.filterLocation,
      'filterRadius': instance.filterRadius,
      'filterGender': _$GenderEnumMap[instance.filterGender],
      'filterAge': instance.filterAge,
    };

CreateEvent$Mutation$CreateEvent$Errors
    _$CreateEvent$Mutation$CreateEvent$ErrorsFromJson(
        Map<String, dynamic> json) {
  return CreateEvent$Mutation$CreateEvent$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$CreateEvent$Mutation$CreateEvent$ErrorsToJson(
        CreateEvent$Mutation$CreateEvent$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

CreateEvent$Mutation$CreateEvent _$CreateEvent$Mutation$CreateEventFromJson(
    Map<String, dynamic> json) {
  return CreateEvent$Mutation$CreateEvent()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] == null
        ? null
        : CreateEvent$Mutation$CreateEvent$Nodes.fromJson(
            json['nodes'] as Map<String, dynamic>)
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => CreateEvent$Mutation$CreateEvent$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$CreateEvent$Mutation$CreateEventToJson(
        CreateEvent$Mutation$CreateEvent instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

CreateEvent$Mutation _$CreateEvent$MutationFromJson(Map<String, dynamic> json) {
  return CreateEvent$Mutation()
    ..createEvent = CreateEvent$Mutation$CreateEvent.fromJson(
        json['createEvent'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateEvent$MutationToJson(
        CreateEvent$Mutation instance) =>
    <String, dynamic>{
      'createEvent': instance.createEvent.toJson(),
    };

EventInput _$EventInputFromJson(Map<String, dynamic> json) {
  return EventInput(
    creatorId: json['creatorId'] as int,
    description: json['description'] as String,
    filterAge: json['filterAge'] as String,
    filterGender: _$enumDecode(_$GenderEnumMap, json['filterGender'],
        unknownValue: Gender.artemisUnknown),
    filterLocation: json['filterLocation'] as String,
    filterRadius: (json['filterRadius'] as num).toDouble(),
    id: json['id'] as int?,
    invitedIds:
        (json['invitedIds'] as List<dynamic>).map((e) => e as int).toList(),
    location: json['location'] as String,
    pictureUrl: json['pictureUrl'] as String?,
    relatedInterestsIds: (json['relatedInterestsIds'] as List<dynamic>)
        .map((e) => e as int)
        .toList(),
    time: fromGraphQLDateTimeToDartDateTime(json['time'] as String),
    title: json['title'] as String,
    wannagoIds:
        (json['wannagoIds'] as List<dynamic>).map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$EventInputToJson(EventInput instance) =>
    <String, dynamic>{
      'creatorId': instance.creatorId,
      'description': instance.description,
      'filterAge': instance.filterAge,
      'filterGender': _$GenderEnumMap[instance.filterGender],
      'filterLocation': instance.filterLocation,
      'filterRadius': instance.filterRadius,
      'id': instance.id,
      'invitedIds': instance.invitedIds,
      'location': instance.location,
      'pictureUrl': instance.pictureUrl,
      'relatedInterestsIds': instance.relatedInterestsIds,
      'time': fromDartDateTimeToGraphQLDateTime(instance.time),
      'title': instance.title,
      'wannagoIds': instance.wannagoIds,
    };

CreateForum$Mutation$CreateForum$Nodes$Event
    _$CreateForum$Mutation$CreateForum$Nodes$EventFromJson(
        Map<String, dynamic> json) {
  return CreateForum$Mutation$CreateForum$Nodes$Event()..id = json['id'] as int;
}

Map<String, dynamic> _$CreateForum$Mutation$CreateForum$Nodes$EventToJson(
        CreateForum$Mutation$CreateForum$Nodes$Event instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CreateForum$Mutation$CreateForum$Nodes
    _$CreateForum$Mutation$CreateForum$NodesFromJson(
        Map<String, dynamic> json) {
  return CreateForum$Mutation$CreateForum$Nodes()
    ..id = json['id'] as int
    ..event = CreateForum$Mutation$CreateForum$Nodes$Event.fromJson(
        json['event'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateForum$Mutation$CreateForum$NodesToJson(
        CreateForum$Mutation$CreateForum$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event': instance.event.toJson(),
    };

CreateForum$Mutation$CreateForum$Errors
    _$CreateForum$Mutation$CreateForum$ErrorsFromJson(
        Map<String, dynamic> json) {
  return CreateForum$Mutation$CreateForum$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$CreateForum$Mutation$CreateForum$ErrorsToJson(
        CreateForum$Mutation$CreateForum$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

CreateForum$Mutation$CreateForum _$CreateForum$Mutation$CreateForumFromJson(
    Map<String, dynamic> json) {
  return CreateForum$Mutation$CreateForum()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] == null
        ? null
        : CreateForum$Mutation$CreateForum$Nodes.fromJson(
            json['nodes'] as Map<String, dynamic>)
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => CreateForum$Mutation$CreateForum$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$CreateForum$Mutation$CreateForumToJson(
        CreateForum$Mutation$CreateForum instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

CreateForum$Mutation _$CreateForum$MutationFromJson(Map<String, dynamic> json) {
  return CreateForum$Mutation()
    ..createForum = CreateForum$Mutation$CreateForum.fromJson(
        json['createForum'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateForum$MutationToJson(
        CreateForum$Mutation instance) =>
    <String, dynamic>{
      'createForum': instance.createForum.toJson(),
    };

CreateInterest$Mutation$CreateInterest$Errors
    _$CreateInterest$Mutation$CreateInterest$ErrorsFromJson(
        Map<String, dynamic> json) {
  return CreateInterest$Mutation$CreateInterest$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$CreateInterest$Mutation$CreateInterest$ErrorsToJson(
        CreateInterest$Mutation$CreateInterest$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

CreateInterest$Mutation$CreateInterest
    _$CreateInterest$Mutation$CreateInterestFromJson(
        Map<String, dynamic> json) {
  return CreateInterest$Mutation$CreateInterest()
    ..ok = json['ok'] as bool?
    ..nodes = (json['nodes'] as List<dynamic>?)
        ?.map((e) => (e as num).toDouble())
        .toList()
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => CreateInterest$Mutation$CreateInterest$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$CreateInterest$Mutation$CreateInterestToJson(
        CreateInterest$Mutation$CreateInterest instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

CreateInterest$Mutation _$CreateInterest$MutationFromJson(
    Map<String, dynamic> json) {
  return CreateInterest$Mutation()
    ..createInterest = CreateInterest$Mutation$CreateInterest.fromJson(
        json['createInterest'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateInterest$MutationToJson(
        CreateInterest$Mutation instance) =>
    <String, dynamic>{
      'createInterest': instance.createInterest.toJson(),
    };

DeleteEvent$Mutation$DeleteEvent$Errors
    _$DeleteEvent$Mutation$DeleteEvent$ErrorsFromJson(
        Map<String, dynamic> json) {
  return DeleteEvent$Mutation$DeleteEvent$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$DeleteEvent$Mutation$DeleteEvent$ErrorsToJson(
        DeleteEvent$Mutation$DeleteEvent$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

DeleteEvent$Mutation$DeleteEvent _$DeleteEvent$Mutation$DeleteEventFromJson(
    Map<String, dynamic> json) {
  return DeleteEvent$Mutation$DeleteEvent()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => DeleteEvent$Mutation$DeleteEvent$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$DeleteEvent$Mutation$DeleteEventToJson(
        DeleteEvent$Mutation$DeleteEvent instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

DeleteEvent$Mutation _$DeleteEvent$MutationFromJson(Map<String, dynamic> json) {
  return DeleteEvent$Mutation()
    ..deleteEvent = DeleteEvent$Mutation$DeleteEvent.fromJson(
        json['deleteEvent'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DeleteEvent$MutationToJson(
        DeleteEvent$Mutation instance) =>
    <String, dynamic>{
      'deleteEvent': instance.deleteEvent.toJson(),
    };

DeleteWannago$Mutation$DeleteWannago$Errors
    _$DeleteWannago$Mutation$DeleteWannago$ErrorsFromJson(
        Map<String, dynamic> json) {
  return DeleteWannago$Mutation$DeleteWannago$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$DeleteWannago$Mutation$DeleteWannago$ErrorsToJson(
        DeleteWannago$Mutation$DeleteWannago$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

DeleteWannago$Mutation$DeleteWannago
    _$DeleteWannago$Mutation$DeleteWannagoFromJson(Map<String, dynamic> json) {
  return DeleteWannago$Mutation$DeleteWannago()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => DeleteWannago$Mutation$DeleteWannago$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$DeleteWannago$Mutation$DeleteWannagoToJson(
        DeleteWannago$Mutation$DeleteWannago instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

DeleteWannago$Mutation _$DeleteWannago$MutationFromJson(
    Map<String, dynamic> json) {
  return DeleteWannago$Mutation()
    ..deleteWannago = DeleteWannago$Mutation$DeleteWannago.fromJson(
        json['deleteWannago'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DeleteWannago$MutationToJson(
        DeleteWannago$Mutation instance) =>
    <String, dynamic>{
      'deleteWannago': instance.deleteWannago.toJson(),
    };

FlagEvent$Mutation$FlagEvent$Errors
    _$FlagEvent$Mutation$FlagEvent$ErrorsFromJson(Map<String, dynamic> json) {
  return FlagEvent$Mutation$FlagEvent$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$FlagEvent$Mutation$FlagEvent$ErrorsToJson(
        FlagEvent$Mutation$FlagEvent$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

FlagEvent$Mutation$FlagEvent _$FlagEvent$Mutation$FlagEventFromJson(
    Map<String, dynamic> json) {
  return FlagEvent$Mutation$FlagEvent()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => FlagEvent$Mutation$FlagEvent$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$FlagEvent$Mutation$FlagEventToJson(
        FlagEvent$Mutation$FlagEvent instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

FlagEvent$Mutation _$FlagEvent$MutationFromJson(Map<String, dynamic> json) {
  return FlagEvent$Mutation()
    ..flagEvent = FlagEvent$Mutation$FlagEvent.fromJson(
        json['flagEvent'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FlagEvent$MutationToJson(FlagEvent$Mutation instance) =>
    <String, dynamic>{
      'flagEvent': instance.flagEvent.toJson(),
    };

FlagUser$Mutation$FlagUser$Errors _$FlagUser$Mutation$FlagUser$ErrorsFromJson(
    Map<String, dynamic> json) {
  return FlagUser$Mutation$FlagUser$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$FlagUser$Mutation$FlagUser$ErrorsToJson(
        FlagUser$Mutation$FlagUser$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

FlagUser$Mutation$FlagUser _$FlagUser$Mutation$FlagUserFromJson(
    Map<String, dynamic> json) {
  return FlagUser$Mutation$FlagUser()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => FlagUser$Mutation$FlagUser$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$FlagUser$Mutation$FlagUserToJson(
        FlagUser$Mutation$FlagUser instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

FlagUser$Mutation _$FlagUser$MutationFromJson(Map<String, dynamic> json) {
  return FlagUser$Mutation()
    ..flagUser = FlagUser$Mutation$FlagUser.fromJson(
        json['flagUser'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FlagUser$MutationToJson(FlagUser$Mutation instance) =>
    <String, dynamic>{
      'flagUser': instance.flagUser.toJson(),
    };

ForgotPassword$Mutation$ForgotPassword$Errors
    _$ForgotPassword$Mutation$ForgotPassword$ErrorsFromJson(
        Map<String, dynamic> json) {
  return ForgotPassword$Mutation$ForgotPassword$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$ForgotPassword$Mutation$ForgotPassword$ErrorsToJson(
        ForgotPassword$Mutation$ForgotPassword$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

ForgotPassword$Mutation$ForgotPassword
    _$ForgotPassword$Mutation$ForgotPasswordFromJson(
        Map<String, dynamic> json) {
  return ForgotPassword$Mutation$ForgotPassword()
    ..ok = json['ok'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => ForgotPassword$Mutation$ForgotPassword$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$ForgotPassword$Mutation$ForgotPasswordToJson(
        ForgotPassword$Mutation$ForgotPassword instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

ForgotPassword$Mutation _$ForgotPassword$MutationFromJson(
    Map<String, dynamic> json) {
  return ForgotPassword$Mutation()
    ..forgotPassword = ForgotPassword$Mutation$ForgotPassword.fromJson(
        json['forgotPassword'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ForgotPassword$MutationToJson(
        ForgotPassword$Mutation instance) =>
    <String, dynamic>{
      'forgotPassword': instance.forgotPassword.toJson(),
    };

Hello$Mutation _$Hello$MutationFromJson(Map<String, dynamic> json) {
  return Hello$Mutation()..helloMutation = json['helloMutation'] as bool;
}

Map<String, dynamic> _$Hello$MutationToJson(Hello$Mutation instance) =>
    <String, dynamic>{
      'helloMutation': instance.helloMutation,
    };

Login$Mutation$Login$Nodes _$Login$Mutation$Login$NodesFromJson(
    Map<String, dynamic> json) {
  return Login$Mutation$Login$Nodes()..id = json['id'] as int;
}

Map<String, dynamic> _$Login$Mutation$Login$NodesToJson(
        Login$Mutation$Login$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Login$Mutation$Login$Errors _$Login$Mutation$Login$ErrorsFromJson(
    Map<String, dynamic> json) {
  return Login$Mutation$Login$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$Login$Mutation$Login$ErrorsToJson(
        Login$Mutation$Login$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

Login$Mutation$Login$Jwt _$Login$Mutation$Login$JwtFromJson(
    Map<String, dynamic> json) {
  return Login$Mutation$Login$Jwt()
    ..accessToken = json['accessToken'] as String
    ..refreshToken = json['refreshToken'] as String;
}

Map<String, dynamic> _$Login$Mutation$Login$JwtToJson(
        Login$Mutation$Login$Jwt instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

Login$Mutation$Login _$Login$Mutation$LoginFromJson(Map<String, dynamic> json) {
  return Login$Mutation$Login()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] == null
        ? null
        : Login$Mutation$Login$Nodes.fromJson(
            json['nodes'] as Map<String, dynamic>)
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) =>
            Login$Mutation$Login$Errors.fromJson(e as Map<String, dynamic>))
        .toList()
    ..jwt = json['jwt'] == null
        ? null
        : Login$Mutation$Login$Jwt.fromJson(
            json['jwt'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Login$Mutation$LoginToJson(
        Login$Mutation$Login instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'jwt': instance.jwt?.toJson(),
    };

Login$Mutation _$Login$MutationFromJson(Map<String, dynamic> json) {
  return Login$Mutation()
    ..login =
        Login$Mutation$Login.fromJson(json['login'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Login$MutationToJson(Login$Mutation instance) =>
    <String, dynamic>{
      'login': instance.login.toJson(),
    };

UserInput _$UserInputFromJson(Map<String, dynamic> json) {
  return UserInput(
    birthday: fromGraphQLDateTimeNullableToDartDateTimeNullable(
        json['birthday'] as String?),
    email: json['email'] as String?,
    password: json['password'] as String,
    username: json['username'] as String?,
  );
}

Map<String, dynamic> _$UserInputToJson(UserInput instance) => <String, dynamic>{
      'birthday':
          fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.birthday),
      'email': instance.email,
      'password': instance.password,
      'username': instance.username,
    };

Register$Mutation$Register$Nodes _$Register$Mutation$Register$NodesFromJson(
    Map<String, dynamic> json) {
  return Register$Mutation$Register$Nodes()..id = json['id'] as int;
}

Map<String, dynamic> _$Register$Mutation$Register$NodesToJson(
        Register$Mutation$Register$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Register$Mutation$Register$Errors _$Register$Mutation$Register$ErrorsFromJson(
    Map<String, dynamic> json) {
  return Register$Mutation$Register$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$Register$Mutation$Register$ErrorsToJson(
        Register$Mutation$Register$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

Register$Mutation$Register$Jwt _$Register$Mutation$Register$JwtFromJson(
    Map<String, dynamic> json) {
  return Register$Mutation$Register$Jwt()
    ..accessToken = json['accessToken'] as String
    ..refreshToken = json['refreshToken'] as String;
}

Map<String, dynamic> _$Register$Mutation$Register$JwtToJson(
        Register$Mutation$Register$Jwt instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

Register$Mutation$Register _$Register$Mutation$RegisterFromJson(
    Map<String, dynamic> json) {
  return Register$Mutation$Register()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] == null
        ? null
        : Register$Mutation$Register$Nodes.fromJson(
            json['nodes'] as Map<String, dynamic>)
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => Register$Mutation$Register$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..jwt = json['jwt'] == null
        ? null
        : Register$Mutation$Register$Jwt.fromJson(
            json['jwt'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Register$Mutation$RegisterToJson(
        Register$Mutation$Register instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'jwt': instance.jwt?.toJson(),
    };

Register$Mutation _$Register$MutationFromJson(Map<String, dynamic> json) {
  return Register$Mutation()
    ..register = Register$Mutation$Register.fromJson(
        json['register'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Register$MutationToJson(Register$Mutation instance) =>
    <String, dynamic>{
      'register': instance.register.toJson(),
    };

UpdateBio$Mutation$UpdateBio$Errors
    _$UpdateBio$Mutation$UpdateBio$ErrorsFromJson(Map<String, dynamic> json) {
  return UpdateBio$Mutation$UpdateBio$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$UpdateBio$Mutation$UpdateBio$ErrorsToJson(
        UpdateBio$Mutation$UpdateBio$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

UpdateBio$Mutation$UpdateBio _$UpdateBio$Mutation$UpdateBioFromJson(
    Map<String, dynamic> json) {
  return UpdateBio$Mutation$UpdateBio()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => UpdateBio$Mutation$UpdateBio$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$UpdateBio$Mutation$UpdateBioToJson(
        UpdateBio$Mutation$UpdateBio instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

UpdateBio$Mutation _$UpdateBio$MutationFromJson(Map<String, dynamic> json) {
  return UpdateBio$Mutation()
    ..updateBio = UpdateBio$Mutation$UpdateBio.fromJson(
        json['updateBio'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UpdateBio$MutationToJson(UpdateBio$Mutation instance) =>
    <String, dynamic>{
      'updateBio': instance.updateBio.toJson(),
    };

UpdateEvent$Mutation$UpdateEvent$Nodes
    _$UpdateEvent$Mutation$UpdateEvent$NodesFromJson(
        Map<String, dynamic> json) {
  return UpdateEvent$Mutation$UpdateEvent$Nodes()
    ..id = json['id'] as int
    ..createdAt = fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
    ..updatedAt = fromGraphQLDateTimeToDartDateTime(json['updatedAt'] as String)
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..creator = EventFieldsMixin$Creator.fromJson(
        json['creator'] as Map<String, dynamic>)
    ..invited = (json['invited'] as List<dynamic>)
        .map(
            (e) => EventFieldsMixin$Invited.fromJson(e as Map<String, dynamic>))
        .toList()
    ..wannago = (json['wannago'] as List<dynamic>)
        .map(
            (e) => EventFieldsMixin$Wannago.fromJson(e as Map<String, dynamic>))
        .toList()
    ..time = fromGraphQLDateTimeToDartDateTime(json['time'] as String)
    ..location = json['location'] as String
    ..pictureUrl = json['pictureUrl'] as String?
    ..relatedInterests = (json['relatedInterests'] as List<dynamic>)
        .map((e) => EventFieldsMixin$RelatedInterests.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..filterLocation = json['filterLocation'] as String
    ..filterRadius = (json['filterRadius'] as num).toDouble()
    ..filterGender = _$enumDecode(_$GenderEnumMap, json['filterGender'],
        unknownValue: Gender.artemisUnknown)
    ..filterAge = json['filterAge'] as String;
}

Map<String, dynamic> _$UpdateEvent$Mutation$UpdateEvent$NodesToJson(
        UpdateEvent$Mutation$UpdateEvent$Nodes instance) =>
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
      'pictureUrl': instance.pictureUrl,
      'relatedInterests':
          instance.relatedInterests.map((e) => e.toJson()).toList(),
      'filterLocation': instance.filterLocation,
      'filterRadius': instance.filterRadius,
      'filterGender': _$GenderEnumMap[instance.filterGender],
      'filterAge': instance.filterAge,
    };

UpdateEvent$Mutation$UpdateEvent$Errors
    _$UpdateEvent$Mutation$UpdateEvent$ErrorsFromJson(
        Map<String, dynamic> json) {
  return UpdateEvent$Mutation$UpdateEvent$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$UpdateEvent$Mutation$UpdateEvent$ErrorsToJson(
        UpdateEvent$Mutation$UpdateEvent$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

UpdateEvent$Mutation$UpdateEvent _$UpdateEvent$Mutation$UpdateEventFromJson(
    Map<String, dynamic> json) {
  return UpdateEvent$Mutation$UpdateEvent()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] == null
        ? null
        : UpdateEvent$Mutation$UpdateEvent$Nodes.fromJson(
            json['nodes'] as Map<String, dynamic>)
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => UpdateEvent$Mutation$UpdateEvent$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$UpdateEvent$Mutation$UpdateEventToJson(
        UpdateEvent$Mutation$UpdateEvent instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

UpdateEvent$Mutation _$UpdateEvent$MutationFromJson(Map<String, dynamic> json) {
  return UpdateEvent$Mutation()
    ..updateEvent = UpdateEvent$Mutation$UpdateEvent.fromJson(
        json['updateEvent'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UpdateEvent$MutationToJson(
        UpdateEvent$Mutation instance) =>
    <String, dynamic>{
      'updateEvent': instance.updateEvent.toJson(),
    };

EventFilterInput _$EventFilterInputFromJson(Map<String, dynamic> json) {
  return EventFilterInput(
    createdAt: json['createdAt'] as String?,
    creatorId: json['creatorId'] as int?,
    description: json['description'] as String?,
    filterAge: json['filterAge'] as String?,
    filterGender: _$enumDecodeNullable(_$GenderEnumMap, json['filterGender'],
        unknownValue: Gender.artemisUnknown),
    filterLocation: json['filterLocation'] as String?,
    filterRadius: (json['filterRadius'] as num?)?.toDouble(),
    forumId: json['forumId'] as int?,
    id: json['id'] as int?,
    invitedIds:
        (json['invitedIds'] as List<dynamic>?)?.map((e) => e as int).toList(),
    location: json['location'] as String?,
    pictureUrl: json['pictureUrl'] as String?,
    relatedInterestsIds: (json['relatedInterestsIds'] as List<dynamic>?)
        ?.map((e) => e as int)
        .toList(),
    time: fromGraphQLDateTimeNullableToDartDateTimeNullable(
        json['time'] as String?),
    title: json['title'] as String?,
    updatedAt: json['updatedAt'] as String?,
    wannagoIds:
        (json['wannagoIds'] as List<dynamic>?)?.map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$EventFilterInputToJson(EventFilterInput instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'creatorId': instance.creatorId,
      'description': instance.description,
      'filterAge': instance.filterAge,
      'filterGender': _$GenderEnumMap[instance.filterGender],
      'filterLocation': instance.filterLocation,
      'filterRadius': instance.filterRadius,
      'forumId': instance.forumId,
      'id': instance.id,
      'invitedIds': instance.invitedIds,
      'location': instance.location,
      'pictureUrl': instance.pictureUrl,
      'relatedInterestsIds': instance.relatedInterestsIds,
      'time': fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.time),
      'title': instance.title,
      'updatedAt': instance.updatedAt,
      'wannagoIds': instance.wannagoIds,
    };

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

UpdatePhotos$Mutation$UpdatePhotos$Errors
    _$UpdatePhotos$Mutation$UpdatePhotos$ErrorsFromJson(
        Map<String, dynamic> json) {
  return UpdatePhotos$Mutation$UpdatePhotos$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$UpdatePhotos$Mutation$UpdatePhotos$ErrorsToJson(
        UpdatePhotos$Mutation$UpdatePhotos$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

UpdatePhotos$Mutation$UpdatePhotos _$UpdatePhotos$Mutation$UpdatePhotosFromJson(
    Map<String, dynamic> json) {
  return UpdatePhotos$Mutation$UpdatePhotos()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => UpdatePhotos$Mutation$UpdatePhotos$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$UpdatePhotos$Mutation$UpdatePhotosToJson(
        UpdatePhotos$Mutation$UpdatePhotos instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

UpdatePhotos$Mutation _$UpdatePhotos$MutationFromJson(
    Map<String, dynamic> json) {
  return UpdatePhotos$Mutation()
    ..updatePhotos = UpdatePhotos$Mutation$UpdatePhotos.fromJson(
        json['updatePhotos'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UpdatePhotos$MutationToJson(
        UpdatePhotos$Mutation instance) =>
    <String, dynamic>{
      'updatePhotos': instance.updatePhotos.toJson(),
    };

UpdateProfilePhoto$Mutation$UpdateProfilePhoto$Errors
    _$UpdateProfilePhoto$Mutation$UpdateProfilePhoto$ErrorsFromJson(
        Map<String, dynamic> json) {
  return UpdateProfilePhoto$Mutation$UpdateProfilePhoto$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic>
    _$UpdateProfilePhoto$Mutation$UpdateProfilePhoto$ErrorsToJson(
            UpdateProfilePhoto$Mutation$UpdateProfilePhoto$Errors instance) =>
        <String, dynamic>{
          'field': instance.field,
          'message': instance.message,
        };

UpdateProfilePhoto$Mutation$UpdateProfilePhoto
    _$UpdateProfilePhoto$Mutation$UpdateProfilePhotoFromJson(
        Map<String, dynamic> json) {
  return UpdateProfilePhoto$Mutation$UpdateProfilePhoto()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) =>
            UpdateProfilePhoto$Mutation$UpdateProfilePhoto$Errors.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$UpdateProfilePhoto$Mutation$UpdateProfilePhotoToJson(
        UpdateProfilePhoto$Mutation$UpdateProfilePhoto instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

UpdateProfilePhoto$Mutation _$UpdateProfilePhoto$MutationFromJson(
    Map<String, dynamic> json) {
  return UpdateProfilePhoto$Mutation()
    ..updateProfilePhoto =
        UpdateProfilePhoto$Mutation$UpdateProfilePhoto.fromJson(
            json['updateProfilePhoto'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UpdateProfilePhoto$MutationToJson(
        UpdateProfilePhoto$Mutation instance) =>
    <String, dynamic>{
      'updateProfilePhoto': instance.updateProfilePhoto.toJson(),
    };

UpdateUser$Mutation$UpdateUser$Nodes
    _$UpdateUser$Mutation$UpdateUser$NodesFromJson(Map<String, dynamic> json) {
  return UpdateUser$Mutation$UpdateUser$Nodes()
    ..id = json['id'] as int
    ..profilePhotoUrl = json['profilePhotoUrl'] as String
    ..photoUrls = json['photoUrls'] as String
    ..email = json['email'] as String
    ..verified = json['verified'] as bool
    ..username = json['username'] as String
    ..birthday = fromGraphQLDateTimeToDartDateTime(json['birthday'] as String)
    ..bio = json['bio'] as String
    ..interests = (json['interests'] as List<dynamic>)
        .map((e) =>
            UserFieldsMixin$Interests.fromJson(e as Map<String, dynamic>))
        .toList()
    ..myEvents = (json['myEvents'] as List<dynamic>)
        .map(
            (e) => UserFieldsMixin$MyEvents.fromJson(e as Map<String, dynamic>))
        .toList()
    ..chatNotifications = (json['chatNotifications'] as List<dynamic>)
        .map((e) => UserFieldsMixin$ChatNotifications.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$UpdateUser$Mutation$UpdateUser$NodesToJson(
        UpdateUser$Mutation$UpdateUser$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profilePhotoUrl': instance.profilePhotoUrl,
      'photoUrls': instance.photoUrls,
      'email': instance.email,
      'verified': instance.verified,
      'username': instance.username,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
      'bio': instance.bio,
      'interests': instance.interests.map((e) => e.toJson()).toList(),
      'myEvents': instance.myEvents.map((e) => e.toJson()).toList(),
      'chatNotifications':
          instance.chatNotifications.map((e) => e.toJson()).toList(),
    };

UpdateUser$Mutation$UpdateUser$Errors
    _$UpdateUser$Mutation$UpdateUser$ErrorsFromJson(Map<String, dynamic> json) {
  return UpdateUser$Mutation$UpdateUser$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$UpdateUser$Mutation$UpdateUser$ErrorsToJson(
        UpdateUser$Mutation$UpdateUser$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

UpdateUser$Mutation$UpdateUser _$UpdateUser$Mutation$UpdateUserFromJson(
    Map<String, dynamic> json) {
  return UpdateUser$Mutation$UpdateUser()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] == null
        ? null
        : UpdateUser$Mutation$UpdateUser$Nodes.fromJson(
            json['nodes'] as Map<String, dynamic>)
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => UpdateUser$Mutation$UpdateUser$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$UpdateUser$Mutation$UpdateUserToJson(
        UpdateUser$Mutation$UpdateUser instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

UpdateUser$Mutation _$UpdateUser$MutationFromJson(Map<String, dynamic> json) {
  return UpdateUser$Mutation()
    ..updateUser = UpdateUser$Mutation$UpdateUser.fromJson(
        json['updateUser'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UpdateUser$MutationToJson(
        UpdateUser$Mutation instance) =>
    <String, dynamic>{
      'updateUser': instance.updateUser.toJson(),
    };

UserFieldsMixin$Interests _$UserFieldsMixin$InterestsFromJson(
    Map<String, dynamic> json) {
  return UserFieldsMixin$Interests()
    ..id = json['id'] as int
    ..title = json['title'] as String;
}

Map<String, dynamic> _$UserFieldsMixin$InterestsToJson(
        UserFieldsMixin$Interests instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

UserFieldsMixin$MyEvents _$UserFieldsMixin$MyEventsFromJson(
    Map<String, dynamic> json) {
  return UserFieldsMixin$MyEvents()..id = json['id'] as int;
}

Map<String, dynamic> _$UserFieldsMixin$MyEventsToJson(
        UserFieldsMixin$MyEvents instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UserFieldsMixin$ChatNotifications _$UserFieldsMixin$ChatNotificationsFromJson(
    Map<String, dynamic> json) {
  return UserFieldsMixin$ChatNotifications()
    ..notifications = json['notifications'] as int
    ..muted = json['muted'] as bool;
}

Map<String, dynamic> _$UserFieldsMixin$ChatNotificationsToJson(
        UserFieldsMixin$ChatNotifications instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
      'muted': instance.muted,
    };

UserFilterInput _$UserFilterInputFromJson(Map<String, dynamic> json) {
  return UserFilterInput(
    bio: json['bio'] as String?,
    birthday: fromGraphQLDateTimeNullableToDartDateTimeNullable(
        json['birthday'] as String?),
    deviceId: json['deviceId'] as String?,
    email: json['email'] as String?,
    id: json['id'] as int?,
    photoUrls: json['photoUrls'] as String?,
    profilePhotoUrl: json['profilePhotoUrl'] as String?,
    username: json['username'] as String?,
    verified: json['verified'] as bool?,
  );
}

Map<String, dynamic> _$UserFilterInputToJson(UserFilterInput instance) =>
    <String, dynamic>{
      'bio': instance.bio,
      'birthday':
          fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.birthday),
      'deviceId': instance.deviceId,
      'email': instance.email,
      'id': instance.id,
      'photoUrls': instance.photoUrls,
      'profilePhotoUrl': instance.profilePhotoUrl,
      'username': instance.username,
      'verified': instance.verified,
    };

UpdateWannago$Mutation$UpdateWannago$Errors
    _$UpdateWannago$Mutation$UpdateWannago$ErrorsFromJson(
        Map<String, dynamic> json) {
  return UpdateWannago$Mutation$UpdateWannago$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$UpdateWannago$Mutation$UpdateWannago$ErrorsToJson(
        UpdateWannago$Mutation$UpdateWannago$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

UpdateWannago$Mutation$UpdateWannago
    _$UpdateWannago$Mutation$UpdateWannagoFromJson(Map<String, dynamic> json) {
  return UpdateWannago$Mutation$UpdateWannago()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => UpdateWannago$Mutation$UpdateWannago$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$UpdateWannago$Mutation$UpdateWannagoToJson(
        UpdateWannago$Mutation$UpdateWannago instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

UpdateWannago$Mutation _$UpdateWannago$MutationFromJson(
    Map<String, dynamic> json) {
  return UpdateWannago$Mutation()
    ..updateWannago = UpdateWannago$Mutation$UpdateWannago.fromJson(
        json['updateWannago'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UpdateWannago$MutationToJson(
        UpdateWannago$Mutation instance) =>
    <String, dynamic>{
      'updateWannago': instance.updateWannago.toJson(),
    };

RemoveAccount$Mutation$RemoveAccount$Errors
    _$RemoveAccount$Mutation$RemoveAccount$ErrorsFromJson(
        Map<String, dynamic> json) {
  return RemoveAccount$Mutation$RemoveAccount$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$RemoveAccount$Mutation$RemoveAccount$ErrorsToJson(
        RemoveAccount$Mutation$RemoveAccount$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

RemoveAccount$Mutation$RemoveAccount
    _$RemoveAccount$Mutation$RemoveAccountFromJson(Map<String, dynamic> json) {
  return RemoveAccount$Mutation$RemoveAccount()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => RemoveAccount$Mutation$RemoveAccount$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$RemoveAccount$Mutation$RemoveAccountToJson(
        RemoveAccount$Mutation$RemoveAccount instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

RemoveAccount$Mutation _$RemoveAccount$MutationFromJson(
    Map<String, dynamic> json) {
  return RemoveAccount$Mutation()
    ..removeAccount = RemoveAccount$Mutation$RemoveAccount.fromJson(
        json['removeAccount'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RemoveAccount$MutationToJson(
        RemoveAccount$Mutation instance) =>
    <String, dynamic>{
      'removeAccount': instance.removeAccount.toJson(),
    };

AddInterestsArguments _$AddInterestsArgumentsFromJson(
    Map<String, dynamic> json) {
  return AddInterestsArguments(
    interestsText: (json['interestsText'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$AddInterestsArgumentsToJson(
        AddInterestsArguments instance) =>
    <String, dynamic>{
      'interestsText': instance.interestsText,
    };

AddInviteArguments _$AddInviteArgumentsFromJson(Map<String, dynamic> json) {
  return AddInviteArguments(
    eventId: json['eventId'] as int,
    userId: json['userId'] as int,
  );
}

Map<String, dynamic> _$AddInviteArgumentsToJson(AddInviteArguments instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'userId': instance.userId,
    };

AddWannagoArguments _$AddWannagoArgumentsFromJson(Map<String, dynamic> json) {
  return AddWannagoArguments(
    eventId: json['eventId'] as int,
    userId: json['userId'] as int,
  );
}

Map<String, dynamic> _$AddWannagoArgumentsToJson(
        AddWannagoArguments instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'userId': instance.userId,
    };

BlockUserArguments _$BlockUserArgumentsFromJson(Map<String, dynamic> json) {
  return BlockUserArguments(
    userId: json['userId'] as int,
  );
}

Map<String, dynamic> _$BlockUserArgumentsToJson(BlockUserArguments instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

CreateChatArguments _$CreateChatArgumentsFromJson(Map<String, dynamic> json) {
  return CreateChatArguments(
    chatInput: ChatInput.fromJson(json['chatInput'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateChatArgumentsToJson(
        CreateChatArguments instance) =>
    <String, dynamic>{
      'chatInput': instance.chatInput.toJson(),
    };

CreateEventArguments _$CreateEventArgumentsFromJson(Map<String, dynamic> json) {
  return CreateEventArguments(
    eventInput: EventInput.fromJson(json['eventInput'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateEventArgumentsToJson(
        CreateEventArguments instance) =>
    <String, dynamic>{
      'eventInput': instance.eventInput.toJson(),
    };

CreateForumArguments _$CreateForumArgumentsFromJson(Map<String, dynamic> json) {
  return CreateForumArguments(
    eventId: json['eventId'] as int,
  );
}

Map<String, dynamic> _$CreateForumArgumentsToJson(
        CreateForumArguments instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
    };

CreateInterestArguments _$CreateInterestArgumentsFromJson(
    Map<String, dynamic> json) {
  return CreateInterestArguments(
    interestsText: (json['interestsText'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$CreateInterestArgumentsToJson(
        CreateInterestArguments instance) =>
    <String, dynamic>{
      'interestsText': instance.interestsText,
    };

DeleteEventArguments _$DeleteEventArgumentsFromJson(Map<String, dynamic> json) {
  return DeleteEventArguments(
    eventId: json['eventId'] as int,
  );
}

Map<String, dynamic> _$DeleteEventArgumentsToJson(
        DeleteEventArguments instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
    };

DeleteWannagoArguments _$DeleteWannagoArgumentsFromJson(
    Map<String, dynamic> json) {
  return DeleteWannagoArguments(
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$DeleteWannagoArgumentsToJson(
        DeleteWannagoArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

FlagEventArguments _$FlagEventArgumentsFromJson(Map<String, dynamic> json) {
  return FlagEventArguments(
    eventId: json['eventId'] as int,
  );
}

Map<String, dynamic> _$FlagEventArgumentsToJson(FlagEventArguments instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
    };

FlagUserArguments _$FlagUserArgumentsFromJson(Map<String, dynamic> json) {
  return FlagUserArguments(
    userId: json['userId'] as int,
  );
}

Map<String, dynamic> _$FlagUserArgumentsToJson(FlagUserArguments instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

ForgotPasswordArguments _$ForgotPasswordArgumentsFromJson(
    Map<String, dynamic> json) {
  return ForgotPasswordArguments(
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$ForgotPasswordArgumentsToJson(
        ForgotPasswordArguments instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

HelloArguments _$HelloArgumentsFromJson(Map<String, dynamic> json) {
  return HelloArguments(
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$HelloArgumentsToJson(HelloArguments instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

LoginArguments _$LoginArgumentsFromJson(Map<String, dynamic> json) {
  return LoginArguments(
    userInput: UserInput.fromJson(json['userInput'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LoginArgumentsToJson(LoginArguments instance) =>
    <String, dynamic>{
      'userInput': instance.userInput.toJson(),
    };

RegisterArguments _$RegisterArgumentsFromJson(Map<String, dynamic> json) {
  return RegisterArguments(
    userInput: UserInput.fromJson(json['userInput'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RegisterArgumentsToJson(RegisterArguments instance) =>
    <String, dynamic>{
      'userInput': instance.userInput.toJson(),
    };

UpdateBioArguments _$UpdateBioArgumentsFromJson(Map<String, dynamic> json) {
  return UpdateBioArguments(
    bio: json['bio'] as String,
  );
}

Map<String, dynamic> _$UpdateBioArgumentsToJson(UpdateBioArguments instance) =>
    <String, dynamic>{
      'bio': instance.bio,
    };

UpdateEventArguments _$UpdateEventArgumentsFromJson(Map<String, dynamic> json) {
  return UpdateEventArguments(
    eventInput:
        EventFilterInput.fromJson(json['eventInput'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UpdateEventArgumentsToJson(
        UpdateEventArguments instance) =>
    <String, dynamic>{
      'eventInput': instance.eventInput.toJson(),
    };

UpdatePhotosArguments _$UpdatePhotosArgumentsFromJson(
    Map<String, dynamic> json) {
  return UpdatePhotosArguments(
    urls: (json['urls'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$UpdatePhotosArgumentsToJson(
        UpdatePhotosArguments instance) =>
    <String, dynamic>{
      'urls': instance.urls,
    };

UpdateProfilePhotoArguments _$UpdateProfilePhotoArgumentsFromJson(
    Map<String, dynamic> json) {
  return UpdateProfilePhotoArguments(
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$UpdateProfilePhotoArgumentsToJson(
        UpdateProfilePhotoArguments instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

UpdateUserArguments _$UpdateUserArgumentsFromJson(Map<String, dynamic> json) {
  return UpdateUserArguments(
    userInput:
        UserFilterInput.fromJson(json['userInput'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UpdateUserArgumentsToJson(
        UpdateUserArguments instance) =>
    <String, dynamic>{
      'userInput': instance.userInput.toJson(),
    };

UpdateWannagoArguments _$UpdateWannagoArgumentsFromJson(
    Map<String, dynamic> json) {
  return UpdateWannagoArguments(
    id: json['id'] as int,
    declined: json['declined'] as bool,
  );
}

Map<String, dynamic> _$UpdateWannagoArgumentsToJson(
        UpdateWannagoArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
      'declined': instance.declined,
    };
