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

  @override
  List<Object?> get props => [id];
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
class Events$Query$EventsApiResponse$Event$Forum extends JsonSerializable
    with EquatableMixin {
  Events$Query$EventsApiResponse$Event$Forum();

  factory Events$Query$EventsApiResponse$Event$Forum.fromJson(
          Map<String, dynamic> json) =>
      _$Events$Query$EventsApiResponse$Event$ForumFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$Events$Query$EventsApiResponse$Event$ForumToJson(this);
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

  late String pictureUrl;

  late List<Events$Query$EventsApiResponse$Event$User> wannago;

  late List<Events$Query$EventsApiResponse$Event$Interest> relatedInterests;

  late Events$Query$EventsApiResponse$Event$Forum forum;

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
        wannago,
        relatedInterests,
        forum,
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
class Events$Query$EventsApiResponse extends JsonSerializable
    with EquatableMixin {
  Events$Query$EventsApiResponse();

  factory Events$Query$EventsApiResponse.fromJson(Map<String, dynamic> json) =>
      _$Events$Query$EventsApiResponseFromJson(json);

  List<Events$Query$EventsApiResponse$Event>? nodes;

  @override
  List<Object?> get props => [nodes];
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
                        name: NameNode(value: 'wannago'),
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
                        name: NameNode(value: 'forum'),
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
