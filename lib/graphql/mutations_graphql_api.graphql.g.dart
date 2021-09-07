// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'mutations_graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
    forumId: json['forumId'] as int,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$ChatInputToJson(ChatInput instance) => <String, dynamic>{
      'authorId': instance.authorId,
      'forumId': instance.forumId,
      'text': instance.text,
    };

CreateEvent$Mutation$CreateEvent$Nodes$Creator
    _$CreateEvent$Mutation$CreateEvent$Nodes$CreatorFromJson(
        Map<String, dynamic> json) {
  return CreateEvent$Mutation$CreateEvent$Nodes$Creator()
    ..id = json['id'] as int
    ..profilePhotoUrl = json['profilePhotoUrl'] as String
    ..username = json['username'] as String;
}

Map<String, dynamic> _$CreateEvent$Mutation$CreateEvent$Nodes$CreatorToJson(
        CreateEvent$Mutation$CreateEvent$Nodes$Creator instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profilePhotoUrl': instance.profilePhotoUrl,
      'username': instance.username,
    };

CreateEvent$Mutation$CreateEvent$Nodes$Wannago
    _$CreateEvent$Mutation$CreateEvent$Nodes$WannagoFromJson(
        Map<String, dynamic> json) {
  return CreateEvent$Mutation$CreateEvent$Nodes$Wannago()
    ..id = json['id'] as int;
}

Map<String, dynamic> _$CreateEvent$Mutation$CreateEvent$Nodes$WannagoToJson(
        CreateEvent$Mutation$CreateEvent$Nodes$Wannago instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CreateEvent$Mutation$CreateEvent$Nodes$Invited
    _$CreateEvent$Mutation$CreateEvent$Nodes$InvitedFromJson(
        Map<String, dynamic> json) {
  return CreateEvent$Mutation$CreateEvent$Nodes$Invited()
    ..id = json['id'] as int;
}

Map<String, dynamic> _$CreateEvent$Mutation$CreateEvent$Nodes$InvitedToJson(
        CreateEvent$Mutation$CreateEvent$Nodes$Invited instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CreateEvent$Mutation$CreateEvent$Nodes$RelatedInterests
    _$CreateEvent$Mutation$CreateEvent$Nodes$RelatedInterestsFromJson(
        Map<String, dynamic> json) {
  return CreateEvent$Mutation$CreateEvent$Nodes$RelatedInterests()
    ..id = json['id'] as int;
}

Map<String, dynamic>
    _$CreateEvent$Mutation$CreateEvent$Nodes$RelatedInterestsToJson(
            CreateEvent$Mutation$CreateEvent$Nodes$RelatedInterests instance) =>
        <String, dynamic>{
          'id': instance.id,
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
    ..creator = CreateEvent$Mutation$CreateEvent$Nodes$Creator.fromJson(
        json['creator'] as Map<String, dynamic>)
    ..wannago = (json['wannago'] as List<dynamic>)
        .map((e) => CreateEvent$Mutation$CreateEvent$Nodes$Wannago.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..invited = (json['invited'] as List<dynamic>)
        .map((e) => CreateEvent$Mutation$CreateEvent$Nodes$Invited.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..time = fromGraphQLDateTimeToDartDateTime(json['time'] as String)
    ..location = json['location'] as String
    ..pictureUrl = json['pictureUrl'] as String?
    ..relatedInterests = (json['relatedInterests'] as List<dynamic>)
        .map((e) =>
            CreateEvent$Mutation$CreateEvent$Nodes$RelatedInterests.fromJson(
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

CreateInterest$Mutation$CreateInterest$Nodes
    _$CreateInterest$Mutation$CreateInterest$NodesFromJson(
        Map<String, dynamic> json) {
  return CreateInterest$Mutation$CreateInterest$Nodes()..id = json['id'] as int;
}

Map<String, dynamic> _$CreateInterest$Mutation$CreateInterest$NodesToJson(
        CreateInterest$Mutation$CreateInterest$Nodes instance) =>
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
    ..nodes = json['nodes'] == null
        ? null
        : CreateInterest$Mutation$CreateInterest$Nodes.fromJson(
            json['nodes'] as Map<String, dynamic>)
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => CreateInterest$Mutation$CreateInterest$Errors.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$CreateInterest$Mutation$CreateInterestToJson(
        CreateInterest$Mutation$CreateInterest instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
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

InterestInput _$InterestInputFromJson(Map<String, dynamic> json) {
  return InterestInput(
    description: json['description'] as String,
    id: json['id'] as int?,
    peopleInterestedIds: (json['peopleInterestedIds'] as List<dynamic>)
        .map((e) => e as int)
        .toList(),
    relatedEventsIds: (json['relatedEventsIds'] as List<dynamic>)
        .map((e) => e as int)
        .toList(),
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$InterestInputToJson(InterestInput instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'peopleInterestedIds': instance.peopleInterestedIds,
      'relatedEventsIds': instance.relatedEventsIds,
      'title': instance.title,
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

UpdateEvent$Mutation$UpdateEvent$Nodes$Creator
    _$UpdateEvent$Mutation$UpdateEvent$Nodes$CreatorFromJson(
        Map<String, dynamic> json) {
  return UpdateEvent$Mutation$UpdateEvent$Nodes$Creator()
    ..id = json['id'] as int
    ..profilePhotoUrl = json['profilePhotoUrl'] as String
    ..username = json['username'] as String;
}

Map<String, dynamic> _$UpdateEvent$Mutation$UpdateEvent$Nodes$CreatorToJson(
        UpdateEvent$Mutation$UpdateEvent$Nodes$Creator instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profilePhotoUrl': instance.profilePhotoUrl,
      'username': instance.username,
    };

UpdateEvent$Mutation$UpdateEvent$Nodes$Wannago
    _$UpdateEvent$Mutation$UpdateEvent$Nodes$WannagoFromJson(
        Map<String, dynamic> json) {
  return UpdateEvent$Mutation$UpdateEvent$Nodes$Wannago()
    ..id = json['id'] as int;
}

Map<String, dynamic> _$UpdateEvent$Mutation$UpdateEvent$Nodes$WannagoToJson(
        UpdateEvent$Mutation$UpdateEvent$Nodes$Wannago instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UpdateEvent$Mutation$UpdateEvent$Nodes$Invited
    _$UpdateEvent$Mutation$UpdateEvent$Nodes$InvitedFromJson(
        Map<String, dynamic> json) {
  return UpdateEvent$Mutation$UpdateEvent$Nodes$Invited()
    ..id = json['id'] as int;
}

Map<String, dynamic> _$UpdateEvent$Mutation$UpdateEvent$Nodes$InvitedToJson(
        UpdateEvent$Mutation$UpdateEvent$Nodes$Invited instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UpdateEvent$Mutation$UpdateEvent$Nodes$RelatedInterests
    _$UpdateEvent$Mutation$UpdateEvent$Nodes$RelatedInterestsFromJson(
        Map<String, dynamic> json) {
  return UpdateEvent$Mutation$UpdateEvent$Nodes$RelatedInterests()
    ..id = json['id'] as int;
}

Map<String, dynamic>
    _$UpdateEvent$Mutation$UpdateEvent$Nodes$RelatedInterestsToJson(
            UpdateEvent$Mutation$UpdateEvent$Nodes$RelatedInterests instance) =>
        <String, dynamic>{
          'id': instance.id,
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
    ..creator = UpdateEvent$Mutation$UpdateEvent$Nodes$Creator.fromJson(
        json['creator'] as Map<String, dynamic>)
    ..wannago = (json['wannago'] as List<dynamic>)
        .map((e) => UpdateEvent$Mutation$UpdateEvent$Nodes$Wannago.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..invited = (json['invited'] as List<dynamic>)
        .map((e) => UpdateEvent$Mutation$UpdateEvent$Nodes$Invited.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..time = fromGraphQLDateTimeToDartDateTime(json['time'] as String)
    ..location = json['location'] as String
    ..pictureUrl = json['pictureUrl'] as String?
    ..relatedInterests = (json['relatedInterests'] as List<dynamic>)
        .map((e) =>
            UpdateEvent$Mutation$UpdateEvent$Nodes$RelatedInterests.fromJson(
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
    interestInput: json['interestInput'] == null
        ? null
        : InterestInput.fromJson(json['interestInput'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateInterestArgumentsToJson(
        CreateInterestArguments instance) =>
    <String, dynamic>{
      'interestInput': instance.interestInput?.toJson(),
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

UpdateEventArguments _$UpdateEventArgumentsFromJson(Map<String, dynamic> json) {
  return UpdateEventArguments(
    eventInput: EventInput.fromJson(json['eventInput'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UpdateEventArgumentsToJson(
        UpdateEventArguments instance) =>
    <String, dynamic>{
      'eventInput': instance.eventInput.toJson(),
    };
