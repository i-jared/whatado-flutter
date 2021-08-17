// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'mutations_graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateEvent$Mutation$EventApiResponse$Event
    _$CreateEvent$Mutation$EventApiResponse$EventFromJson(
        Map<String, dynamic> json) {
  return CreateEvent$Mutation$EventApiResponse$Event()..id = json['id'] as int;
}

Map<String, dynamic> _$CreateEvent$Mutation$EventApiResponse$EventToJson(
        CreateEvent$Mutation$EventApiResponse$Event instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CreateEvent$Mutation$EventApiResponse$FieldError
    _$CreateEvent$Mutation$EventApiResponse$FieldErrorFromJson(
        Map<String, dynamic> json) {
  return CreateEvent$Mutation$EventApiResponse$FieldError()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$CreateEvent$Mutation$EventApiResponse$FieldErrorToJson(
        CreateEvent$Mutation$EventApiResponse$FieldError instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

CreateEvent$Mutation$EventApiResponse
    _$CreateEvent$Mutation$EventApiResponseFromJson(Map<String, dynamic> json) {
  return CreateEvent$Mutation$EventApiResponse()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] == null
        ? null
        : CreateEvent$Mutation$EventApiResponse$Event.fromJson(
            json['nodes'] as Map<String, dynamic>)
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => CreateEvent$Mutation$EventApiResponse$FieldError.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$CreateEvent$Mutation$EventApiResponseToJson(
        CreateEvent$Mutation$EventApiResponse instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

CreateEvent$Mutation _$CreateEvent$MutationFromJson(Map<String, dynamic> json) {
  return CreateEvent$Mutation()
    ..createEvent = CreateEvent$Mutation$EventApiResponse.fromJson(
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
    location: json['location'] as String,
    pictureUrl: json['pictureUrl'] as String?,
    relatedInterestsIds: (json['relatedInterestsIds'] as List<dynamic>)
        .map((e) => e as int)
        .toList(),
    time: fromGraphQLDateTimeToDartDateTime(json['time'] as String),
    title: json['title'] as String,
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
      'location': instance.location,
      'pictureUrl': instance.pictureUrl,
      'relatedInterestsIds': instance.relatedInterestsIds,
      'time': fromDartDateTimeToGraphQLDateTime(instance.time),
      'title': instance.title,
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

CreateInterest$Mutation$InterestApiResponse$Interest
    _$CreateInterest$Mutation$InterestApiResponse$InterestFromJson(
        Map<String, dynamic> json) {
  return CreateInterest$Mutation$InterestApiResponse$Interest()
    ..id = json['id'] as int;
}

Map<String, dynamic>
    _$CreateInterest$Mutation$InterestApiResponse$InterestToJson(
            CreateInterest$Mutation$InterestApiResponse$Interest instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

CreateInterest$Mutation$InterestApiResponse$FieldError
    _$CreateInterest$Mutation$InterestApiResponse$FieldErrorFromJson(
        Map<String, dynamic> json) {
  return CreateInterest$Mutation$InterestApiResponse$FieldError()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic>
    _$CreateInterest$Mutation$InterestApiResponse$FieldErrorToJson(
            CreateInterest$Mutation$InterestApiResponse$FieldError instance) =>
        <String, dynamic>{
          'field': instance.field,
          'message': instance.message,
        };

CreateInterest$Mutation$InterestApiResponse
    _$CreateInterest$Mutation$InterestApiResponseFromJson(
        Map<String, dynamic> json) {
  return CreateInterest$Mutation$InterestApiResponse()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] == null
        ? null
        : CreateInterest$Mutation$InterestApiResponse$Interest.fromJson(
            json['nodes'] as Map<String, dynamic>)
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) =>
            CreateInterest$Mutation$InterestApiResponse$FieldError.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$CreateInterest$Mutation$InterestApiResponseToJson(
        CreateInterest$Mutation$InterestApiResponse instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

CreateInterest$Mutation _$CreateInterest$MutationFromJson(
    Map<String, dynamic> json) {
  return CreateInterest$Mutation()
    ..createInterest = CreateInterest$Mutation$InterestApiResponse.fromJson(
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

ForgotPassword$Mutation$BoolApiResponse$FieldError
    _$ForgotPassword$Mutation$BoolApiResponse$FieldErrorFromJson(
        Map<String, dynamic> json) {
  return ForgotPassword$Mutation$BoolApiResponse$FieldError()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$ForgotPassword$Mutation$BoolApiResponse$FieldErrorToJson(
        ForgotPassword$Mutation$BoolApiResponse$FieldError instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

ForgotPassword$Mutation$BoolApiResponse
    _$ForgotPassword$Mutation$BoolApiResponseFromJson(
        Map<String, dynamic> json) {
  return ForgotPassword$Mutation$BoolApiResponse()
    ..ok = json['ok'] as bool?
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) =>
            ForgotPassword$Mutation$BoolApiResponse$FieldError.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$ForgotPassword$Mutation$BoolApiResponseToJson(
        ForgotPassword$Mutation$BoolApiResponse instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

ForgotPassword$Mutation _$ForgotPassword$MutationFromJson(
    Map<String, dynamic> json) {
  return ForgotPassword$Mutation()
    ..forgotPassword = ForgotPassword$Mutation$BoolApiResponse.fromJson(
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

Login$Mutation$UserApiResponse$User
    _$Login$Mutation$UserApiResponse$UserFromJson(Map<String, dynamic> json) {
  return Login$Mutation$UserApiResponse$User()..id = json['id'] as int;
}

Map<String, dynamic> _$Login$Mutation$UserApiResponse$UserToJson(
        Login$Mutation$UserApiResponse$User instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Login$Mutation$UserApiResponse$FieldError
    _$Login$Mutation$UserApiResponse$FieldErrorFromJson(
        Map<String, dynamic> json) {
  return Login$Mutation$UserApiResponse$FieldError()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$Login$Mutation$UserApiResponse$FieldErrorToJson(
        Login$Mutation$UserApiResponse$FieldError instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

Login$Mutation$UserApiResponse$JwtResponse
    _$Login$Mutation$UserApiResponse$JwtResponseFromJson(
        Map<String, dynamic> json) {
  return Login$Mutation$UserApiResponse$JwtResponse()
    ..accessToken = json['accessToken'] as String
    ..refreshToken = json['refreshToken'] as String;
}

Map<String, dynamic> _$Login$Mutation$UserApiResponse$JwtResponseToJson(
        Login$Mutation$UserApiResponse$JwtResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

Login$Mutation$UserApiResponse _$Login$Mutation$UserApiResponseFromJson(
    Map<String, dynamic> json) {
  return Login$Mutation$UserApiResponse()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] == null
        ? null
        : Login$Mutation$UserApiResponse$User.fromJson(
            json['nodes'] as Map<String, dynamic>)
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => Login$Mutation$UserApiResponse$FieldError.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..jwt = json['jwt'] == null
        ? null
        : Login$Mutation$UserApiResponse$JwtResponse.fromJson(
            json['jwt'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Login$Mutation$UserApiResponseToJson(
        Login$Mutation$UserApiResponse instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'jwt': instance.jwt?.toJson(),
    };

Login$Mutation _$Login$MutationFromJson(Map<String, dynamic> json) {
  return Login$Mutation()
    ..login = Login$Mutation$UserApiResponse.fromJson(
        json['login'] as Map<String, dynamic>);
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

Register$Mutation$UserApiResponse$User
    _$Register$Mutation$UserApiResponse$UserFromJson(
        Map<String, dynamic> json) {
  return Register$Mutation$UserApiResponse$User()..id = json['id'] as int;
}

Map<String, dynamic> _$Register$Mutation$UserApiResponse$UserToJson(
        Register$Mutation$UserApiResponse$User instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Register$Mutation$UserApiResponse$FieldError
    _$Register$Mutation$UserApiResponse$FieldErrorFromJson(
        Map<String, dynamic> json) {
  return Register$Mutation$UserApiResponse$FieldError()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$Register$Mutation$UserApiResponse$FieldErrorToJson(
        Register$Mutation$UserApiResponse$FieldError instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

Register$Mutation$UserApiResponse$JwtResponse
    _$Register$Mutation$UserApiResponse$JwtResponseFromJson(
        Map<String, dynamic> json) {
  return Register$Mutation$UserApiResponse$JwtResponse()
    ..accessToken = json['accessToken'] as String
    ..refreshToken = json['refreshToken'] as String;
}

Map<String, dynamic> _$Register$Mutation$UserApiResponse$JwtResponseToJson(
        Register$Mutation$UserApiResponse$JwtResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

Register$Mutation$UserApiResponse _$Register$Mutation$UserApiResponseFromJson(
    Map<String, dynamic> json) {
  return Register$Mutation$UserApiResponse()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] == null
        ? null
        : Register$Mutation$UserApiResponse$User.fromJson(
            json['nodes'] as Map<String, dynamic>)
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => Register$Mutation$UserApiResponse$FieldError.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..jwt = json['jwt'] == null
        ? null
        : Register$Mutation$UserApiResponse$JwtResponse.fromJson(
            json['jwt'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Register$Mutation$UserApiResponseToJson(
        Register$Mutation$UserApiResponse instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'jwt': instance.jwt?.toJson(),
    };

Register$Mutation _$Register$MutationFromJson(Map<String, dynamic> json) {
  return Register$Mutation()
    ..register = Register$Mutation$UserApiResponse.fromJson(
        json['register'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Register$MutationToJson(Register$Mutation instance) =>
    <String, dynamic>{
      'register': instance.register.toJson(),
    };

CreateForum$Mutation$ForumApiResponse$Forum
    _$CreateForum$Mutation$ForumApiResponse$ForumFromJson(
        Map<String, dynamic> json) {
  return CreateForum$Mutation$ForumApiResponse$Forum()..id = json['id'] as int;
}

Map<String, dynamic> _$CreateForum$Mutation$ForumApiResponse$ForumToJson(
        CreateForum$Mutation$ForumApiResponse$Forum instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CreateForum$Mutation$ForumApiResponse$FieldError
    _$CreateForum$Mutation$ForumApiResponse$FieldErrorFromJson(
        Map<String, dynamic> json) {
  return CreateForum$Mutation$ForumApiResponse$FieldError()
    ..field = json['field'] as String?
    ..message = json['message'] as String;
}

Map<String, dynamic> _$CreateForum$Mutation$ForumApiResponse$FieldErrorToJson(
        CreateForum$Mutation$ForumApiResponse$FieldError instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

CreateForum$Mutation$ForumApiResponse
    _$CreateForum$Mutation$ForumApiResponseFromJson(Map<String, dynamic> json) {
  return CreateForum$Mutation$ForumApiResponse()
    ..ok = json['ok'] as bool?
    ..nodes = json['nodes'] == null
        ? null
        : CreateForum$Mutation$ForumApiResponse$Forum.fromJson(
            json['nodes'] as Map<String, dynamic>)
    ..errors = (json['errors'] as List<dynamic>?)
        ?.map((e) => CreateForum$Mutation$ForumApiResponse$FieldError.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$CreateForum$Mutation$ForumApiResponseToJson(
        CreateForum$Mutation$ForumApiResponse instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'nodes': instance.nodes?.toJson(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

CreateForum$Mutation _$CreateForum$MutationFromJson(Map<String, dynamic> json) {
  return CreateForum$Mutation()
    ..createForum = CreateForum$Mutation$ForumApiResponse.fromJson(
        json['createForum'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateForum$MutationToJson(
        CreateForum$Mutation instance) =>
    <String, dynamic>{
      'createForum': instance.createForum.toJson(),
    };

CreateEventArguments _$CreateEventArgumentsFromJson(Map<String, dynamic> json) {
  return CreateEventArguments(
    eventInput: json['eventInput'] == null
        ? null
        : EventInput.fromJson(json['eventInput'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateEventArgumentsToJson(
        CreateEventArguments instance) =>
    <String, dynamic>{
      'eventInput': instance.eventInput?.toJson(),
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

CreateForumArguments _$CreateForumArgumentsFromJson(Map<String, dynamic> json) {
  return CreateForumArguments(
    eventId: json['eventId'] as int?,
  );
}

Map<String, dynamic> _$CreateForumArgumentsToJson(
        CreateForumArguments instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
    };
