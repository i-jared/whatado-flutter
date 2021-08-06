// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'mutations_graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
    email: json['email'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$RegisterArgumentsToJson(RegisterArguments instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
