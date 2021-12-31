// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'mutations_graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Access$Mutation$Access$Errors _$Access$Mutation$Access$ErrorsFromJson(
    Map<String, dynamic> json) {
  return Access$Mutation$Access$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$Access$Mutation$Access$ErrorsToJson(
        Access$Mutation$Access$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

Access$Mutation$Access _$Access$Mutation$AccessFromJson(
    Map<String, dynamic> json) {
  return Access$Mutation$Access()
    ..ok = json['ok'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) =>
            Access$Mutation$Access$Errors.fromJson(e as Map<String, dynamic>))
        .toList()
    ..nodes = json['nodes'] as bool?;
}

Map<String, dynamic> _$Access$Mutation$AccessToJson(
        Access$Mutation$Access instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'nodes': instance.nodes,
    };

Access$Mutation _$Access$MutationFromJson(Map<String, dynamic> json) {
  return Access$Mutation()
    ..access =
        Access$Mutation$Access.fromJson(json['access'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Access$MutationToJson(Access$Mutation instance) =>
    <String, dynamic>{
      'access': instance.access.toJson(),
    };

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
    ..filterMinAge = json['filterMinAge'] as int
    ..filterMaxAge = json['filterMaxAge'] as int;
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
      'filterMinAge': instance.filterMinAge,
      'filterMaxAge': instance.filterMaxAge,
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
    ..name = json['name'] as String
    ..photoUrls = json['photoUrls'] as String
    ..bio = json['bio'] as String
    ..birthday = fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);
}

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
    Map<String, dynamic> json) {
  return EventFieldsMixin$Invited()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..photoUrls = json['photoUrls'] as String
    ..bio = json['bio'] as String
    ..birthday = fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);
}

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
    Map<String, dynamic> json) {
  return EventFieldsMixin$Wannago$User()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..photoUrls = json['photoUrls'] as String
    ..bio = json['bio'] as String
    ..birthday = fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);
}

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
    ..filterMinAge = json['filterMinAge'] as int
    ..filterMaxAge = json['filterMaxAge'] as int;
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
      'filterMinAge': instance.filterMinAge,
      'filterMaxAge': instance.filterMaxAge,
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

CheckValidation$Mutation$CheckValidation$Errors
    _$CheckValidation$Mutation$CheckValidation$ErrorsFromJson(
        Map<String, dynamic> json) {
  return CheckValidation$Mutation$CheckValidation$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$CheckValidation$Mutation$CheckValidation$ErrorsToJson(
        CheckValidation$Mutation$CheckValidation$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

CheckValidation$Mutation$CheckValidation
    _$CheckValidation$Mutation$CheckValidationFromJson(
        Map<String, dynamic> json) {
  return CheckValidation$Mutation$CheckValidation()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => CheckValidation$Mutation$CheckValidation$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$CheckValidation$Mutation$CheckValidationToJson(
        CheckValidation$Mutation$CheckValidation instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

CheckValidation$Mutation _$CheckValidation$MutationFromJson(
    Map<String, dynamic> json) {
  return CheckValidation$Mutation()
    ..checkValidation = CheckValidation$Mutation$CheckValidation.fromJson(
        json['checkValidation'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CheckValidation$MutationToJson(
        CheckValidation$Mutation instance) =>
    <String, dynamic>{
      'checkValidation': instance.checkValidation.toJson(),
    };

CheckValidationLogin$Mutation$CheckValidationLogin$Jwt
    _$CheckValidationLogin$Mutation$CheckValidationLogin$JwtFromJson(
        Map<String, dynamic> json) {
  return CheckValidationLogin$Mutation$CheckValidationLogin$Jwt()
    ..accessToken = json['accessToken'] as String
    ..refreshToken = json['refreshToken'] as String;
}

Map<String, dynamic>
    _$CheckValidationLogin$Mutation$CheckValidationLogin$JwtToJson(
            CheckValidationLogin$Mutation$CheckValidationLogin$Jwt instance) =>
        <String, dynamic>{
          'accessToken': instance.accessToken,
          'refreshToken': instance.refreshToken,
        };

CheckValidationLogin$Mutation$CheckValidationLogin$Errors
    _$CheckValidationLogin$Mutation$CheckValidationLogin$ErrorsFromJson(
        Map<String, dynamic> json) {
  return CheckValidationLogin$Mutation$CheckValidationLogin$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String,
    dynamic> _$CheckValidationLogin$Mutation$CheckValidationLogin$ErrorsToJson(
        CheckValidationLogin$Mutation$CheckValidationLogin$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

CheckValidationLogin$Mutation$CheckValidationLogin
    _$CheckValidationLogin$Mutation$CheckValidationLoginFromJson(
        Map<String, dynamic> json) {
  return CheckValidationLogin$Mutation$CheckValidationLogin()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] as bool?
    ..jwt = json['jwt'] == null
        ? null
        : CheckValidationLogin$Mutation$CheckValidationLogin$Jwt.fromJson(
            json['jwt'] as Map<String, dynamic>)
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) =>
            CheckValidationLogin$Mutation$CheckValidationLogin$Errors.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$CheckValidationLogin$Mutation$CheckValidationLoginToJson(
        CheckValidationLogin$Mutation$CheckValidationLogin instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes,
      'jwt': instance.jwt?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

CheckValidationLogin$Mutation _$CheckValidationLogin$MutationFromJson(
    Map<String, dynamic> json) {
  return CheckValidationLogin$Mutation()
    ..checkValidationLogin =
        CheckValidationLogin$Mutation$CheckValidationLogin.fromJson(
            json['checkValidationLogin'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CheckValidationLogin$MutationToJson(
        CheckValidationLogin$Mutation instance) =>
    <String, dynamic>{
      'checkValidationLogin': instance.checkValidationLogin.toJson(),
    };

CreateChat$Mutation$CreateChat$Nodes$Author
    _$CreateChat$Mutation$CreateChat$Nodes$AuthorFromJson(
        Map<String, dynamic> json) {
  return CreateChat$Mutation$CreateChat$Nodes$Author()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..photoUrls = json['photoUrls'] as String
    ..bio = json['bio'] as String
    ..birthday = fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);
}

Map<String, dynamic> _$CreateChat$Mutation$CreateChat$Nodes$AuthorToJson(
        CreateChat$Mutation$CreateChat$Nodes$Author instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
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
    ..filterMinAge = json['filterMinAge'] as int
    ..filterMaxAge = json['filterMaxAge'] as int;
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
      'filterMinAge': instance.filterMinAge,
      'filterMaxAge': instance.filterMaxAge,
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
    filterGender: _$enumDecode(_$GenderEnumMap, json['filterGender'],
        unknownValue: Gender.artemisUnknown),
    filterLocation: json['filterLocation'] as String,
    filterMaxAge: json['filterMaxAge'] as int,
    filterMinAge: json['filterMinAge'] as int,
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
      'filterGender': _$GenderEnumMap[instance.filterGender],
      'filterLocation': instance.filterLocation,
      'filterMaxAge': instance.filterMaxAge,
      'filterMinAge': instance.filterMinAge,
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

CreateForum$Mutation$CreateForum$Nodes
    _$CreateForum$Mutation$CreateForum$NodesFromJson(
        Map<String, dynamic> json) {
  return CreateForum$Mutation$CreateForum$Nodes()
    ..id = json['id'] as int
    ..updatedAt = fromGraphQLDateTimeToDartDateTime(json['updatedAt'] as String)
    ..userNotifications = (json['userNotifications'] as List<dynamic>)
        .map((e) => ForumFieldsMixin$UserNotifications.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..chats = (json['chats'] as List<dynamic>)
        .map((e) => ForumFieldsMixin$Chats.fromJson(e as Map<String, dynamic>))
        .toList()
    ..event =
        ForumFieldsMixin$Event.fromJson(json['event'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateForum$Mutation$CreateForum$NodesToJson(
        CreateForum$Mutation$CreateForum$Nodes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updatedAt': fromDartDateTimeToGraphQLDateTime(instance.updatedAt),
      'userNotifications':
          instance.userNotifications.map((e) => e.toJson()).toList(),
      'chats': instance.chats.map((e) => e.toJson()).toList(),
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

ForumFieldsMixin$UserNotifications _$ForumFieldsMixin$UserNotificationsFromJson(
    Map<String, dynamic> json) {
  return ForumFieldsMixin$UserNotifications()
    ..id = json['id'] as int
    ..lastAccessed =
        fromGraphQLDateTimeToDartDateTime(json['lastAccessed'] as String)
    ..muted = json['muted'] as bool;
}

Map<String, dynamic> _$ForumFieldsMixin$UserNotificationsToJson(
        ForumFieldsMixin$UserNotifications instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lastAccessed': fromDartDateTimeToGraphQLDateTime(instance.lastAccessed),
      'muted': instance.muted,
    };

ForumFieldsMixin$Chats _$ForumFieldsMixin$ChatsFromJson(
    Map<String, dynamic> json) {
  return ForumFieldsMixin$Chats()
    ..id = json['id'] as int
    ..createdAt = fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
    ..text = json['text'] as String;
}

Map<String, dynamic> _$ForumFieldsMixin$ChatsToJson(
        ForumFieldsMixin$Chats instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'text': instance.text,
    };

ForumFieldsMixin$Event _$ForumFieldsMixin$EventFromJson(
    Map<String, dynamic> json) {
  return ForumFieldsMixin$Event()..id = json['id'] as int;
}

Map<String, dynamic> _$ForumFieldsMixin$EventToJson(
        ForumFieldsMixin$Event instance) =>
    <String, dynamic>{
      'id': instance.id,
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
    ..nodes = json['nodes'] as bool?
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
      'nodes': instance.nodes,
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
    gender: _$enumDecodeNullable(_$GenderEnumMap, json['gender'],
        unknownValue: Gender.artemisUnknown),
    name: json['name'] as String?,
    password: json['password'] as String,
    phone: json['phone'] as String?,
  );
}

Map<String, dynamic> _$UserInputToJson(UserInput instance) => <String, dynamic>{
      'birthday':
          fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.birthday),
      'gender': _$GenderEnumMap[instance.gender],
      'name': instance.name,
      'password': instance.password,
      'phone': instance.phone,
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

Mute$Mutation$Mute$Errors _$Mute$Mutation$Mute$ErrorsFromJson(
    Map<String, dynamic> json) {
  return Mute$Mutation$Mute$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$Mute$Mutation$Mute$ErrorsToJson(
        Mute$Mutation$Mute$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

Mute$Mutation$Mute _$Mute$Mutation$MuteFromJson(Map<String, dynamic> json) {
  return Mute$Mutation$Mute()
    ..ok = json['ok'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) =>
            Mute$Mutation$Mute$Errors.fromJson(e as Map<String, dynamic>))
        .toList()
    ..nodes = json['nodes'] as bool?;
}

Map<String, dynamic> _$Mute$Mutation$MuteToJson(Mute$Mutation$Mute instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'nodes': instance.nodes,
    };

Mute$Mutation _$Mute$MutationFromJson(Map<String, dynamic> json) {
  return Mute$Mutation()
    ..mute = Mute$Mutation$Mute.fromJson(json['mute'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Mute$MutationToJson(Mute$Mutation instance) =>
    <String, dynamic>{
      'mute': instance.mute.toJson(),
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

RemoveInvite$Mutation$RemoveInvite$Nodes
    _$RemoveInvite$Mutation$RemoveInvite$NodesFromJson(
        Map<String, dynamic> json) {
  return RemoveInvite$Mutation$RemoveInvite$Nodes()
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
    ..filterMinAge = json['filterMinAge'] as int
    ..filterMaxAge = json['filterMaxAge'] as int;
}

Map<String, dynamic> _$RemoveInvite$Mutation$RemoveInvite$NodesToJson(
        RemoveInvite$Mutation$RemoveInvite$Nodes instance) =>
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
      'filterMinAge': instance.filterMinAge,
      'filterMaxAge': instance.filterMaxAge,
    };

RemoveInvite$Mutation$RemoveInvite$Errors
    _$RemoveInvite$Mutation$RemoveInvite$ErrorsFromJson(
        Map<String, dynamic> json) {
  return RemoveInvite$Mutation$RemoveInvite$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$RemoveInvite$Mutation$RemoveInvite$ErrorsToJson(
        RemoveInvite$Mutation$RemoveInvite$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

RemoveInvite$Mutation$RemoveInvite _$RemoveInvite$Mutation$RemoveInviteFromJson(
    Map<String, dynamic> json) {
  return RemoveInvite$Mutation$RemoveInvite()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] == null
        ? null
        : RemoveInvite$Mutation$RemoveInvite$Nodes.fromJson(
            json['nodes'] as Map<String, dynamic>)
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => RemoveInvite$Mutation$RemoveInvite$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$RemoveInvite$Mutation$RemoveInviteToJson(
        RemoveInvite$Mutation$RemoveInvite instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

RemoveInvite$Mutation _$RemoveInvite$MutationFromJson(
    Map<String, dynamic> json) {
  return RemoveInvite$Mutation()
    ..removeInvite = RemoveInvite$Mutation$RemoveInvite.fromJson(
        json['removeInvite'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RemoveInvite$MutationToJson(
        RemoveInvite$Mutation instance) =>
    <String, dynamic>{
      'removeInvite': instance.removeInvite.toJson(),
    };

SendCode$Mutation$SendCode$Errors _$SendCode$Mutation$SendCode$ErrorsFromJson(
    Map<String, dynamic> json) {
  return SendCode$Mutation$SendCode$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$SendCode$Mutation$SendCode$ErrorsToJson(
        SendCode$Mutation$SendCode$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

SendCode$Mutation$SendCode _$SendCode$Mutation$SendCodeFromJson(
    Map<String, dynamic> json) {
  return SendCode$Mutation$SendCode()
    ..nodes = json['nodes'] as bool?
    ..ok = json['ok'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => SendCode$Mutation$SendCode$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$SendCode$Mutation$SendCodeToJson(
        SendCode$Mutation$SendCode instance) =>
    <String, dynamic>{
      'nodes': instance.nodes,
      'ok': instance.ok,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

SendCode$Mutation _$SendCode$MutationFromJson(Map<String, dynamic> json) {
  return SendCode$Mutation()
    ..sendCode = SendCode$Mutation$SendCode.fromJson(
        json['sendCode'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SendCode$MutationToJson(SendCode$Mutation instance) =>
    <String, dynamic>{
      'sendCode': instance.sendCode.toJson(),
    };

UnblockUser$Mutation$UnblockUser$Errors
    _$UnblockUser$Mutation$UnblockUser$ErrorsFromJson(
        Map<String, dynamic> json) {
  return UnblockUser$Mutation$UnblockUser$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$UnblockUser$Mutation$UnblockUser$ErrorsToJson(
        UnblockUser$Mutation$UnblockUser$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

UnblockUser$Mutation$UnblockUser _$UnblockUser$Mutation$UnblockUserFromJson(
    Map<String, dynamic> json) {
  return UnblockUser$Mutation$UnblockUser()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => UnblockUser$Mutation$UnblockUser$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$UnblockUser$Mutation$UnblockUserToJson(
        UnblockUser$Mutation$UnblockUser instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

UnblockUser$Mutation _$UnblockUser$MutationFromJson(Map<String, dynamic> json) {
  return UnblockUser$Mutation()
    ..unblockUser = UnblockUser$Mutation$UnblockUser.fromJson(
        json['unblockUser'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UnblockUser$MutationToJson(
        UnblockUser$Mutation instance) =>
    <String, dynamic>{
      'unblockUser': instance.unblockUser.toJson(),
    };

Unmute$Mutation$Unmute$Errors _$Unmute$Mutation$Unmute$ErrorsFromJson(
    Map<String, dynamic> json) {
  return Unmute$Mutation$Unmute$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$Unmute$Mutation$Unmute$ErrorsToJson(
        Unmute$Mutation$Unmute$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

Unmute$Mutation$Unmute _$Unmute$Mutation$UnmuteFromJson(
    Map<String, dynamic> json) {
  return Unmute$Mutation$Unmute()
    ..ok = json['ok'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) =>
            Unmute$Mutation$Unmute$Errors.fromJson(e as Map<String, dynamic>))
        .toList()
    ..nodes = json['nodes'] as bool?;
}

Map<String, dynamic> _$Unmute$Mutation$UnmuteToJson(
        Unmute$Mutation$Unmute instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'nodes': instance.nodes,
    };

Unmute$Mutation _$Unmute$MutationFromJson(Map<String, dynamic> json) {
  return Unmute$Mutation()
    ..unmute =
        Unmute$Mutation$Unmute.fromJson(json['unmute'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Unmute$MutationToJson(Unmute$Mutation instance) =>
    <String, dynamic>{
      'unmute': instance.unmute.toJson(),
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
    ..filterMinAge = json['filterMinAge'] as int
    ..filterMaxAge = json['filterMaxAge'] as int;
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
      'filterMinAge': instance.filterMinAge,
      'filterMaxAge': instance.filterMaxAge,
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
    filterGender: _$enumDecodeNullable(_$GenderEnumMap, json['filterGender'],
        unknownValue: Gender.artemisUnknown),
    filterLocation: json['filterLocation'] as String?,
    filterMaxAge: (json['filterMaxAge'] as num?)?.toDouble(),
    filterMinAge: (json['filterMinAge'] as num?)?.toDouble(),
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
      'filterGender': _$GenderEnumMap[instance.filterGender],
      'filterLocation': instance.filterLocation,
      'filterMaxAge': instance.filterMaxAge,
      'filterMinAge': instance.filterMinAge,
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

UpdateUser$Mutation$UpdateUser$Nodes
    _$UpdateUser$Mutation$UpdateUser$NodesFromJson(Map<String, dynamic> json) {
  return UpdateUser$Mutation$UpdateUser$Nodes()
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
    ..friends = (json['friends'] as List<dynamic>)
        .map((e) => UserFieldsMixin$Friends.fromJson(e as Map<String, dynamic>))
        .toList()
    ..requestedFriends = (json['requestedFriends'] as List<dynamic>)
        .map((e) => UserFieldsMixin$RequestedFriends.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..friendRequests = (json['friendRequests'] as List<dynamic>)
        .map((e) =>
            UserFieldsMixin$FriendRequests.fromJson(e as Map<String, dynamic>))
        .toList()
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
      'photoUrls': instance.photoUrls,
      'phone': instance.phone,
      'verified': instance.verified,
      'name': instance.name,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
      'bio': instance.bio,
      'blockedUsers': instance.blockedUsers.map((e) => e.toJson()).toList(),
      'friends': instance.friends.map((e) => e.toJson()).toList(),
      'requestedFriends':
          instance.requestedFriends.map((e) => e.toJson()).toList(),
      'friendRequests': instance.friendRequests.map((e) => e.toJson()).toList(),
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

UserFieldsMixin$BlockedUsers _$UserFieldsMixin$BlockedUsersFromJson(
    Map<String, dynamic> json) {
  return UserFieldsMixin$BlockedUsers()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..photoUrls = json['photoUrls'] as String
    ..bio = json['bio'] as String
    ..birthday = fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);
}

Map<String, dynamic> _$UserFieldsMixin$BlockedUsersToJson(
        UserFieldsMixin$BlockedUsers instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

UserFieldsMixin$Friends _$UserFieldsMixin$FriendsFromJson(
    Map<String, dynamic> json) {
  return UserFieldsMixin$Friends()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..photoUrls = json['photoUrls'] as String
    ..bio = json['bio'] as String
    ..birthday = fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);
}

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
    Map<String, dynamic> json) {
  return UserFieldsMixin$RequestedFriends()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..photoUrls = json['photoUrls'] as String
    ..bio = json['bio'] as String
    ..birthday = fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);
}

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
    Map<String, dynamic> json) {
  return UserFieldsMixin$FriendRequests()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..photoUrls = json['photoUrls'] as String
    ..bio = json['bio'] as String
    ..birthday = fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);
}

Map<String, dynamic> _$UserFieldsMixin$FriendRequestsToJson(
        UserFieldsMixin$FriendRequests instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
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
    ..lastAccessed =
        fromGraphQLDateTimeToDartDateTime(json['lastAccessed'] as String)
    ..muted = json['muted'] as bool;
}

Map<String, dynamic> _$UserFieldsMixin$ChatNotificationsToJson(
        UserFieldsMixin$ChatNotifications instance) =>
    <String, dynamic>{
      'lastAccessed': fromDartDateTimeToGraphQLDateTime(instance.lastAccessed),
      'muted': instance.muted,
    };

UserFilterInput _$UserFilterInputFromJson(Map<String, dynamic> json) {
  return UserFilterInput(
    bio: json['bio'] as String?,
    birthday: fromGraphQLDateTimeNullableToDartDateTimeNullable(
        json['birthday'] as String?),
    deviceId: json['deviceId'] as String?,
    gender: _$enumDecodeNullable(_$GenderEnumMap, json['gender'],
        unknownValue: Gender.artemisUnknown),
    id: json['id'] as int?,
    name: json['name'] as String?,
    password: json['password'] as String?,
    phone: json['phone'] as String?,
    photoUrls: json['photoUrls'] as String?,
    verified: json['verified'] as bool?,
  );
}

Map<String, dynamic> _$UserFilterInputToJson(UserFilterInput instance) =>
    <String, dynamic>{
      'bio': instance.bio,
      'birthday':
          fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.birthday),
      'deviceId': instance.deviceId,
      'gender': _$GenderEnumMap[instance.gender],
      'id': instance.id,
      'name': instance.name,
      'password': instance.password,
      'phone': instance.phone,
      'photoUrls': instance.photoUrls,
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

AcceptFriend$Mutation$AcceptFriend$Errors
    _$AcceptFriend$Mutation$AcceptFriend$ErrorsFromJson(
        Map<String, dynamic> json) {
  return AcceptFriend$Mutation$AcceptFriend$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$AcceptFriend$Mutation$AcceptFriend$ErrorsToJson(
        AcceptFriend$Mutation$AcceptFriend$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

AcceptFriend$Mutation$AcceptFriend _$AcceptFriend$Mutation$AcceptFriendFromJson(
    Map<String, dynamic> json) {
  return AcceptFriend$Mutation$AcceptFriend()
    ..nodes = json['nodes'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => AcceptFriend$Mutation$AcceptFriend$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..ok = json['ok'] as bool?;
}

Map<String, dynamic> _$AcceptFriend$Mutation$AcceptFriendToJson(
        AcceptFriend$Mutation$AcceptFriend instance) =>
    <String, dynamic>{
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'ok': instance.ok,
    };

AcceptFriend$Mutation _$AcceptFriend$MutationFromJson(
    Map<String, dynamic> json) {
  return AcceptFriend$Mutation()
    ..acceptFriend = AcceptFriend$Mutation$AcceptFriend.fromJson(
        json['acceptFriend'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AcceptFriend$MutationToJson(
        AcceptFriend$Mutation instance) =>
    <String, dynamic>{
      'acceptFriend': instance.acceptFriend.toJson(),
    };

RequestFriend$Mutation$RequestFriend$Errors
    _$RequestFriend$Mutation$RequestFriend$ErrorsFromJson(
        Map<String, dynamic> json) {
  return RequestFriend$Mutation$RequestFriend$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$RequestFriend$Mutation$RequestFriend$ErrorsToJson(
        RequestFriend$Mutation$RequestFriend$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

RequestFriend$Mutation$RequestFriend
    _$RequestFriend$Mutation$RequestFriendFromJson(Map<String, dynamic> json) {
  return RequestFriend$Mutation$RequestFriend()
    ..nodes = json['nodes'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => RequestFriend$Mutation$RequestFriend$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..ok = json['ok'] as bool?;
}

Map<String, dynamic> _$RequestFriend$Mutation$RequestFriendToJson(
        RequestFriend$Mutation$RequestFriend instance) =>
    <String, dynamic>{
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'ok': instance.ok,
    };

RequestFriend$Mutation _$RequestFriend$MutationFromJson(
    Map<String, dynamic> json) {
  return RequestFriend$Mutation()
    ..requestFriend = RequestFriend$Mutation$RequestFriend.fromJson(
        json['requestFriend'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RequestFriend$MutationToJson(
        RequestFriend$Mutation instance) =>
    <String, dynamic>{
      'requestFriend': instance.requestFriend.toJson(),
    };

Unfriend$Mutation$Unfriend$Errors _$Unfriend$Mutation$Unfriend$ErrorsFromJson(
    Map<String, dynamic> json) {
  return Unfriend$Mutation$Unfriend$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$Unfriend$Mutation$Unfriend$ErrorsToJson(
        Unfriend$Mutation$Unfriend$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

Unfriend$Mutation$Unfriend _$Unfriend$Mutation$UnfriendFromJson(
    Map<String, dynamic> json) {
  return Unfriend$Mutation$Unfriend()
    ..nodes = json['nodes'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => Unfriend$Mutation$Unfriend$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..ok = json['ok'] as bool?;
}

Map<String, dynamic> _$Unfriend$Mutation$UnfriendToJson(
        Unfriend$Mutation$Unfriend instance) =>
    <String, dynamic>{
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'ok': instance.ok,
    };

Unfriend$Mutation _$Unfriend$MutationFromJson(Map<String, dynamic> json) {
  return Unfriend$Mutation()
    ..unfriend = Unfriend$Mutation$Unfriend.fromJson(
        json['unfriend'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Unfriend$MutationToJson(Unfriend$Mutation instance) =>
    <String, dynamic>{
      'unfriend': instance.unfriend.toJson(),
    };

UnrequestFriend$Mutation$UnrequestFriend$Errors
    _$UnrequestFriend$Mutation$UnrequestFriend$ErrorsFromJson(
        Map<String, dynamic> json) {
  return UnrequestFriend$Mutation$UnrequestFriend$Errors()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$UnrequestFriend$Mutation$UnrequestFriend$ErrorsToJson(
        UnrequestFriend$Mutation$UnrequestFriend$Errors instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

UnrequestFriend$Mutation$UnrequestFriend
    _$UnrequestFriend$Mutation$UnrequestFriendFromJson(
        Map<String, dynamic> json) {
  return UnrequestFriend$Mutation$UnrequestFriend()
    ..nodes = json['nodes'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => UnrequestFriend$Mutation$UnrequestFriend$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..ok = json['ok'] as bool?;
}

Map<String, dynamic> _$UnrequestFriend$Mutation$UnrequestFriendToJson(
        UnrequestFriend$Mutation$UnrequestFriend instance) =>
    <String, dynamic>{
      'nodes': instance.nodes,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'ok': instance.ok,
    };

UnrequestFriend$Mutation _$UnrequestFriend$MutationFromJson(
    Map<String, dynamic> json) {
  return UnrequestFriend$Mutation()
    ..unrequestFriend = UnrequestFriend$Mutation$UnrequestFriend.fromJson(
        json['unrequestFriend'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UnrequestFriend$MutationToJson(
        UnrequestFriend$Mutation instance) =>
    <String, dynamic>{
      'unrequestFriend': instance.unrequestFriend.toJson(),
    };

AccessArguments _$AccessArgumentsFromJson(Map<String, dynamic> json) {
  return AccessArguments(
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$AccessArgumentsToJson(AccessArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
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

CheckValidationArguments _$CheckValidationArgumentsFromJson(
    Map<String, dynamic> json) {
  return CheckValidationArguments(
    code: json['code'] as String,
  );
}

Map<String, dynamic> _$CheckValidationArgumentsToJson(
        CheckValidationArguments instance) =>
    <String, dynamic>{
      'code': instance.code,
    };

CheckValidationLoginArguments _$CheckValidationLoginArgumentsFromJson(
    Map<String, dynamic> json) {
  return CheckValidationLoginArguments(
    code: json['code'] as String,
    phone: json['phone'] as String,
  );
}

Map<String, dynamic> _$CheckValidationLoginArgumentsToJson(
        CheckValidationLoginArguments instance) =>
    <String, dynamic>{
      'code': instance.code,
      'phone': instance.phone,
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
    phone: json['phone'] as String,
  );
}

Map<String, dynamic> _$ForgotPasswordArgumentsToJson(
        ForgotPasswordArguments instance) =>
    <String, dynamic>{
      'phone': instance.phone,
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

MuteArguments _$MuteArgumentsFromJson(Map<String, dynamic> json) {
  return MuteArguments(
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$MuteArgumentsToJson(MuteArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
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

RemoveInviteArguments _$RemoveInviteArgumentsFromJson(
    Map<String, dynamic> json) {
  return RemoveInviteArguments(
    eventId: json['eventId'] as int,
    userId: json['userId'] as int,
  );
}

Map<String, dynamic> _$RemoveInviteArgumentsToJson(
        RemoveInviteArguments instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'userId': instance.userId,
    };

UnblockUserArguments _$UnblockUserArgumentsFromJson(Map<String, dynamic> json) {
  return UnblockUserArguments(
    userId: json['userId'] as int,
  );
}

Map<String, dynamic> _$UnblockUserArgumentsToJson(
        UnblockUserArguments instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

UnmuteArguments _$UnmuteArgumentsFromJson(Map<String, dynamic> json) {
  return UnmuteArguments(
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$UnmuteArgumentsToJson(UnmuteArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
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

AcceptFriendArguments _$AcceptFriendArgumentsFromJson(
    Map<String, dynamic> json) {
  return AcceptFriendArguments(
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$AcceptFriendArgumentsToJson(
        AcceptFriendArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

RequestFriendArguments _$RequestFriendArgumentsFromJson(
    Map<String, dynamic> json) {
  return RequestFriendArguments(
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$RequestFriendArgumentsToJson(
        RequestFriendArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UnfriendArguments _$UnfriendArgumentsFromJson(Map<String, dynamic> json) {
  return UnfriendArguments(
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$UnfriendArgumentsToJson(UnfriendArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UnrequestFriendArguments _$UnrequestFriendArgumentsFromJson(
    Map<String, dynamic> json) {
  return UnrequestFriendArguments(
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$UnrequestFriendArgumentsToJson(
        UnrequestFriendArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
