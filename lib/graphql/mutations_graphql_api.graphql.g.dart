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
