// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:whatado/utils/coercers.dart';
part 'queries_graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Events$Query$EventsApiResponse$Event$User extends JsonSerializable
    with EquatableMixin {
  Events$Query$EventsApiResponse$Event$User();

  factory Events$Query$EventsApiResponse$Event$User.fromJson(
          Map<String, dynamic> json) =>
      _$Events$Query$EventsApiResponse$Event$UserFromJson(json);

  late int id;

  late String profilePhotoUrl;

  late String username;

  @override
  List<Object?> get props => [id, profilePhotoUrl, username];
  @override
  Map<String, dynamic> toJson() =>
      _$Events$Query$EventsApiResponse$Event$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Events$Query$EventsApiResponse$Event$Interest extends JsonSerializable
    with EquatableMixin {
  Events$Query$EventsApiResponse$Event$Interest();

  factory Events$Query$EventsApiResponse$Event$Interest.fromJson(
          Map<String, dynamic> json) =>
      _$Events$Query$EventsApiResponse$Event$InterestFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$Events$Query$EventsApiResponse$Event$InterestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Events$Query$EventsApiResponse$Event extends JsonSerializable
    with EquatableMixin {
  Events$Query$EventsApiResponse$Event();

  factory Events$Query$EventsApiResponse$Event.fromJson(
          Map<String, dynamic> json) =>
      _$Events$Query$EventsApiResponse$EventFromJson(json);

  late int id;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime createdAt;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime updatedAt;

  late String title;

  late String description;

  late Events$Query$EventsApiResponse$Event$User creator;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime time;

  late String location;

  String? pictureUrl;

  late List<Events$Query$EventsApiResponse$Event$Interest> relatedInterests;

  late String filterLocation;

  late double filterRadius;

  @JsonKey(unknownEnumValue: Gender.artemisUnknown)
  late Gender filterGender;

  late String filterAge;

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updatedAt,
        title,
        description,
        creator,
        time,
        location,
        pictureUrl,
        relatedInterests,
        filterLocation,
        filterRadius,
        filterGender,
        filterAge
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$Events$Query$EventsApiResponse$EventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Events$Query$EventsApiResponse$FieldError extends JsonSerializable
    with EquatableMixin {
  Events$Query$EventsApiResponse$FieldError();

  factory Events$Query$EventsApiResponse$FieldError.fromJson(
          Map<String, dynamic> json) =>
      _$Events$Query$EventsApiResponse$FieldErrorFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$Events$Query$EventsApiResponse$FieldErrorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Events$Query$EventsApiResponse extends JsonSerializable
    with EquatableMixin {
  Events$Query$EventsApiResponse();

  factory Events$Query$EventsApiResponse.fromJson(Map<String, dynamic> json) =>
      _$Events$Query$EventsApiResponseFromJson(json);

  bool? ok;

  List<Events$Query$EventsApiResponse$Event>? nodes;

  List<Events$Query$EventsApiResponse$FieldError>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() => _$Events$Query$EventsApiResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Events$Query extends JsonSerializable with EquatableMixin {
  Events$Query();

  factory Events$Query.fromJson(Map<String, dynamic> json) =>
      _$Events$QueryFromJson(json);

  late Events$Query$EventsApiResponse events;

  @override
  List<Object?> get props => [events];
  @override
  Map<String, dynamic> toJson() => _$Events$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HelloQuery$Query extends JsonSerializable with EquatableMixin {
  HelloQuery$Query();

  factory HelloQuery$Query.fromJson(Map<String, dynamic> json) =>
      _$HelloQuery$QueryFromJson(json);

  late String hello;

  @override
  List<Object?> get props => [hello];
  @override
  Map<String, dynamic> toJson() => _$HelloQuery$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$UserApiResponse$User$Interest extends JsonSerializable
    with EquatableMixin {
  Me$Query$UserApiResponse$User$Interest();

  factory Me$Query$UserApiResponse$User$Interest.fromJson(
          Map<String, dynamic> json) =>
      _$Me$Query$UserApiResponse$User$InterestFromJson(json);

  late int id;

  late String title;

  @override
  List<Object?> get props => [id, title];
  @override
  Map<String, dynamic> toJson() =>
      _$Me$Query$UserApiResponse$User$InterestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$UserApiResponse$User$Event extends JsonSerializable
    with EquatableMixin {
  Me$Query$UserApiResponse$User$Event();

  factory Me$Query$UserApiResponse$User$Event.fromJson(
          Map<String, dynamic> json) =>
      _$Me$Query$UserApiResponse$User$EventFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$Me$Query$UserApiResponse$User$EventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$UserApiResponse$User$ChatNotification extends JsonSerializable
    with EquatableMixin {
  Me$Query$UserApiResponse$User$ChatNotification();

  factory Me$Query$UserApiResponse$User$ChatNotification.fromJson(
          Map<String, dynamic> json) =>
      _$Me$Query$UserApiResponse$User$ChatNotificationFromJson(json);

  late int notifications;

  @override
  List<Object?> get props => [notifications];
  @override
  Map<String, dynamic> toJson() =>
      _$Me$Query$UserApiResponse$User$ChatNotificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$UserApiResponse$User extends JsonSerializable
    with EquatableMixin {
  Me$Query$UserApiResponse$User();

  factory Me$Query$UserApiResponse$User.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$UserApiResponse$UserFromJson(json);

  late int id;

  late String profilePhotoUrl;

  late String email;

  late bool verified;

  late String username;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime birthday;

  late List<Me$Query$UserApiResponse$User$Interest> interests;

  late List<Me$Query$UserApiResponse$User$Event> myEvents;

  late List<Me$Query$UserApiResponse$User$ChatNotification> chatNotifications;

  @override
  List<Object?> get props => [
        id,
        profilePhotoUrl,
        email,
        verified,
        username,
        birthday,
        interests,
        myEvents,
        chatNotifications
      ];
  @override
  Map<String, dynamic> toJson() => _$Me$Query$UserApiResponse$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$UserApiResponse$FieldError extends JsonSerializable
    with EquatableMixin {
  Me$Query$UserApiResponse$FieldError();

  factory Me$Query$UserApiResponse$FieldError.fromJson(
          Map<String, dynamic> json) =>
      _$Me$Query$UserApiResponse$FieldErrorFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$Me$Query$UserApiResponse$FieldErrorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$UserApiResponse extends JsonSerializable with EquatableMixin {
  Me$Query$UserApiResponse();

  factory Me$Query$UserApiResponse.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$UserApiResponseFromJson(json);

  bool? ok;

  Me$Query$UserApiResponse$User? nodes;

  List<Me$Query$UserApiResponse$FieldError>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() => _$Me$Query$UserApiResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query extends JsonSerializable with EquatableMixin {
  Me$Query();

  factory Me$Query.fromJson(Map<String, dynamic> json) =>
      _$Me$QueryFromJson(json);

  late Me$Query$UserApiResponse me;

  @override
  List<Object?> get props => [me];
  @override
  Map<String, dynamic> toJson() => _$Me$QueryToJson(this);
}

enum Gender {
  @JsonValue('BOTH')
  both,
  @JsonValue('FEMALE')
  female,
  @JsonValue('MALE')
  male,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
final EVENTS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'events'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'events'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'ok'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'createdAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'updatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'description'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'creator'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'profilePhotoUrl'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'username'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'time'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'location'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'pictureUrl'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'relatedInterests'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'filterLocation'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'filterRadius'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'filterGender'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'filterAge'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'errors'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'field'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'message'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class EventsQuery extends GraphQLQuery<Events$Query, JsonSerializable> {
  EventsQuery();

  @override
  final DocumentNode document = EVENTS_QUERY_DOCUMENT;

  @override
  final String operationName = 'events';

  @override
  List<Object?> get props => [document, operationName];
  @override
  Events$Query parse(Map<String, dynamic> json) => Events$Query.fromJson(json);
}

final HELLO_QUERY_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'helloQuery'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'hello'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class HelloQueryQuery extends GraphQLQuery<HelloQuery$Query, JsonSerializable> {
  HelloQueryQuery();

  @override
  final DocumentNode document = HELLO_QUERY_QUERY_DOCUMENT;

  @override
  final String operationName = 'helloQuery';

  @override
  List<Object?> get props => [document, operationName];
  @override
  HelloQuery$Query parse(Map<String, dynamic> json) =>
      HelloQuery$Query.fromJson(json);
}

final ME_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'me'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'me'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'ok'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'profilePhotoUrl'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'email'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'verified'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'username'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'birthday'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'interests'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'title'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'myEvents'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'chatNotifications'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'notifications'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'errors'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'field'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'message'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class MeQuery extends GraphQLQuery<Me$Query, JsonSerializable> {
  MeQuery();

  @override
  final DocumentNode document = ME_QUERY_DOCUMENT;

  @override
  final String operationName = 'me';

  @override
  List<Object?> get props => [document, operationName];
  @override
  Me$Query parse(Map<String, dynamic> json) => Me$Query.fromJson(json);
}
