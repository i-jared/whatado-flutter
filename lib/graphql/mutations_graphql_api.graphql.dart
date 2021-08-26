// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:whatado/utils/coercers.dart';
part 'mutations_graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateEvent$Mutation$EventApiResponse$Event$User extends JsonSerializable
    with EquatableMixin {
  CreateEvent$Mutation$EventApiResponse$Event$User();

  factory CreateEvent$Mutation$EventApiResponse$Event$User.fromJson(
          Map<String, dynamic> json) =>
      _$CreateEvent$Mutation$EventApiResponse$Event$UserFromJson(json);

  late int id;

  late String profilePhotoUrl;

  late String username;

  @override
  List<Object?> get props => [id, profilePhotoUrl, username];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateEvent$Mutation$EventApiResponse$Event$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateEvent$Mutation$EventApiResponse$Event$Interest
    extends JsonSerializable with EquatableMixin {
  CreateEvent$Mutation$EventApiResponse$Event$Interest();

  factory CreateEvent$Mutation$EventApiResponse$Event$Interest.fromJson(
          Map<String, dynamic> json) =>
      _$CreateEvent$Mutation$EventApiResponse$Event$InterestFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateEvent$Mutation$EventApiResponse$Event$InterestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateEvent$Mutation$EventApiResponse$Event extends JsonSerializable
    with EquatableMixin {
  CreateEvent$Mutation$EventApiResponse$Event();

  factory CreateEvent$Mutation$EventApiResponse$Event.fromJson(
          Map<String, dynamic> json) =>
      _$CreateEvent$Mutation$EventApiResponse$EventFromJson(json);

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

  late CreateEvent$Mutation$EventApiResponse$Event$User creator;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime time;

  late String location;

  String? pictureUrl;

  late List<CreateEvent$Mutation$EventApiResponse$Event$Interest>
      relatedInterests;

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
      _$CreateEvent$Mutation$EventApiResponse$EventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateEvent$Mutation$EventApiResponse$FieldError extends JsonSerializable
    with EquatableMixin {
  CreateEvent$Mutation$EventApiResponse$FieldError();

  factory CreateEvent$Mutation$EventApiResponse$FieldError.fromJson(
          Map<String, dynamic> json) =>
      _$CreateEvent$Mutation$EventApiResponse$FieldErrorFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateEvent$Mutation$EventApiResponse$FieldErrorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateEvent$Mutation$EventApiResponse extends JsonSerializable
    with EquatableMixin {
  CreateEvent$Mutation$EventApiResponse();

  factory CreateEvent$Mutation$EventApiResponse.fromJson(
          Map<String, dynamic> json) =>
      _$CreateEvent$Mutation$EventApiResponseFromJson(json);

  bool? ok;

  CreateEvent$Mutation$EventApiResponse$Event? nodes;

  List<CreateEvent$Mutation$EventApiResponse$FieldError>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateEvent$Mutation$EventApiResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateEvent$Mutation extends JsonSerializable with EquatableMixin {
  CreateEvent$Mutation();

  factory CreateEvent$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateEvent$MutationFromJson(json);

  late CreateEvent$Mutation$EventApiResponse createEvent;

  @override
  List<Object?> get props => [createEvent];
  @override
  Map<String, dynamic> toJson() => _$CreateEvent$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EventInput extends JsonSerializable with EquatableMixin {
  EventInput(
      {required this.creatorId,
      required this.description,
      required this.filterAge,
      required this.filterGender,
      required this.filterLocation,
      required this.filterRadius,
      this.id,
      required this.location,
      this.pictureUrl,
      required this.relatedInterestsIds,
      required this.time,
      required this.title});

  factory EventInput.fromJson(Map<String, dynamic> json) =>
      _$EventInputFromJson(json);

  late int creatorId;

  late String description;

  late String filterAge;

  @JsonKey(unknownEnumValue: Gender.artemisUnknown)
  late Gender filterGender;

  late String filterLocation;

  late double filterRadius;

  int? id;

  late String location;

  String? pictureUrl;

  late List<int> relatedInterestsIds;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime time;

  late String title;

  @override
  List<Object?> get props => [
        creatorId,
        description,
        filterAge,
        filterGender,
        filterLocation,
        filterRadius,
        id,
        location,
        pictureUrl,
        relatedInterestsIds,
        time,
        title
      ];
  @override
  Map<String, dynamic> toJson() => _$EventInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateForum$Mutation$ForumApiResponse$Forum extends JsonSerializable
    with EquatableMixin {
  CreateForum$Mutation$ForumApiResponse$Forum();

  factory CreateForum$Mutation$ForumApiResponse$Forum.fromJson(
          Map<String, dynamic> json) =>
      _$CreateForum$Mutation$ForumApiResponse$ForumFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateForum$Mutation$ForumApiResponse$ForumToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateForum$Mutation$ForumApiResponse$FieldError extends JsonSerializable
    with EquatableMixin {
  CreateForum$Mutation$ForumApiResponse$FieldError();

  factory CreateForum$Mutation$ForumApiResponse$FieldError.fromJson(
          Map<String, dynamic> json) =>
      _$CreateForum$Mutation$ForumApiResponse$FieldErrorFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateForum$Mutation$ForumApiResponse$FieldErrorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateForum$Mutation$ForumApiResponse extends JsonSerializable
    with EquatableMixin {
  CreateForum$Mutation$ForumApiResponse();

  factory CreateForum$Mutation$ForumApiResponse.fromJson(
          Map<String, dynamic> json) =>
      _$CreateForum$Mutation$ForumApiResponseFromJson(json);

  bool? ok;

  CreateForum$Mutation$ForumApiResponse$Forum? nodes;

  List<CreateForum$Mutation$ForumApiResponse$FieldError>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateForum$Mutation$ForumApiResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateForum$Mutation extends JsonSerializable with EquatableMixin {
  CreateForum$Mutation();

  factory CreateForum$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateForum$MutationFromJson(json);

  late CreateForum$Mutation$ForumApiResponse createForum;

  @override
  List<Object?> get props => [createForum];
  @override
  Map<String, dynamic> toJson() => _$CreateForum$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateInterest$Mutation$InterestApiResponse$Interest
    extends JsonSerializable with EquatableMixin {
  CreateInterest$Mutation$InterestApiResponse$Interest();

  factory CreateInterest$Mutation$InterestApiResponse$Interest.fromJson(
          Map<String, dynamic> json) =>
      _$CreateInterest$Mutation$InterestApiResponse$InterestFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateInterest$Mutation$InterestApiResponse$InterestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateInterest$Mutation$InterestApiResponse$FieldError
    extends JsonSerializable with EquatableMixin {
  CreateInterest$Mutation$InterestApiResponse$FieldError();

  factory CreateInterest$Mutation$InterestApiResponse$FieldError.fromJson(
          Map<String, dynamic> json) =>
      _$CreateInterest$Mutation$InterestApiResponse$FieldErrorFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateInterest$Mutation$InterestApiResponse$FieldErrorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateInterest$Mutation$InterestApiResponse extends JsonSerializable
    with EquatableMixin {
  CreateInterest$Mutation$InterestApiResponse();

  factory CreateInterest$Mutation$InterestApiResponse.fromJson(
          Map<String, dynamic> json) =>
      _$CreateInterest$Mutation$InterestApiResponseFromJson(json);

  bool? ok;

  CreateInterest$Mutation$InterestApiResponse$Interest? nodes;

  List<CreateInterest$Mutation$InterestApiResponse$FieldError>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateInterest$Mutation$InterestApiResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateInterest$Mutation extends JsonSerializable with EquatableMixin {
  CreateInterest$Mutation();

  factory CreateInterest$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateInterest$MutationFromJson(json);

  late CreateInterest$Mutation$InterestApiResponse createInterest;

  @override
  List<Object?> get props => [createInterest];
  @override
  Map<String, dynamic> toJson() => _$CreateInterest$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InterestInput extends JsonSerializable with EquatableMixin {
  InterestInput(
      {required this.description,
      this.id,
      required this.peopleInterestedIds,
      required this.relatedEventsIds,
      required this.title});

  factory InterestInput.fromJson(Map<String, dynamic> json) =>
      _$InterestInputFromJson(json);

  late String description;

  int? id;

  late List<int> peopleInterestedIds;

  late List<int> relatedEventsIds;

  late String title;

  @override
  List<Object?> get props =>
      [description, id, peopleInterestedIds, relatedEventsIds, title];
  @override
  Map<String, dynamic> toJson() => _$InterestInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ForgotPassword$Mutation$BoolApiResponse$FieldError
    extends JsonSerializable with EquatableMixin {
  ForgotPassword$Mutation$BoolApiResponse$FieldError();

  factory ForgotPassword$Mutation$BoolApiResponse$FieldError.fromJson(
          Map<String, dynamic> json) =>
      _$ForgotPassword$Mutation$BoolApiResponse$FieldErrorFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$ForgotPassword$Mutation$BoolApiResponse$FieldErrorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ForgotPassword$Mutation$BoolApiResponse extends JsonSerializable
    with EquatableMixin {
  ForgotPassword$Mutation$BoolApiResponse();

  factory ForgotPassword$Mutation$BoolApiResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ForgotPassword$Mutation$BoolApiResponseFromJson(json);

  bool? ok;

  List<ForgotPassword$Mutation$BoolApiResponse$FieldError>? errors;

  @override
  List<Object?> get props => [ok, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$ForgotPassword$Mutation$BoolApiResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ForgotPassword$Mutation extends JsonSerializable with EquatableMixin {
  ForgotPassword$Mutation();

  factory ForgotPassword$Mutation.fromJson(Map<String, dynamic> json) =>
      _$ForgotPassword$MutationFromJson(json);

  late ForgotPassword$Mutation$BoolApiResponse forgotPassword;

  @override
  List<Object?> get props => [forgotPassword];
  @override
  Map<String, dynamic> toJson() => _$ForgotPassword$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Hello$Mutation extends JsonSerializable with EquatableMixin {
  Hello$Mutation();

  factory Hello$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Hello$MutationFromJson(json);

  late bool helloMutation;

  @override
  List<Object?> get props => [helloMutation];
  @override
  Map<String, dynamic> toJson() => _$Hello$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Login$Mutation$UserApiResponse$User extends JsonSerializable
    with EquatableMixin {
  Login$Mutation$UserApiResponse$User();

  factory Login$Mutation$UserApiResponse$User.fromJson(
          Map<String, dynamic> json) =>
      _$Login$Mutation$UserApiResponse$UserFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$Login$Mutation$UserApiResponse$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Login$Mutation$UserApiResponse$FieldError extends JsonSerializable
    with EquatableMixin {
  Login$Mutation$UserApiResponse$FieldError();

  factory Login$Mutation$UserApiResponse$FieldError.fromJson(
          Map<String, dynamic> json) =>
      _$Login$Mutation$UserApiResponse$FieldErrorFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$Login$Mutation$UserApiResponse$FieldErrorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Login$Mutation$UserApiResponse$JwtResponse extends JsonSerializable
    with EquatableMixin {
  Login$Mutation$UserApiResponse$JwtResponse();

  factory Login$Mutation$UserApiResponse$JwtResponse.fromJson(
          Map<String, dynamic> json) =>
      _$Login$Mutation$UserApiResponse$JwtResponseFromJson(json);

  late String accessToken;

  late String refreshToken;

  @override
  List<Object?> get props => [accessToken, refreshToken];
  @override
  Map<String, dynamic> toJson() =>
      _$Login$Mutation$UserApiResponse$JwtResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Login$Mutation$UserApiResponse extends JsonSerializable
    with EquatableMixin {
  Login$Mutation$UserApiResponse();

  factory Login$Mutation$UserApiResponse.fromJson(Map<String, dynamic> json) =>
      _$Login$Mutation$UserApiResponseFromJson(json);

  bool? ok;

  Login$Mutation$UserApiResponse$User? nodes;

  List<Login$Mutation$UserApiResponse$FieldError>? errors;

  Login$Mutation$UserApiResponse$JwtResponse? jwt;

  @override
  List<Object?> get props => [ok, nodes, errors, jwt];
  @override
  Map<String, dynamic> toJson() => _$Login$Mutation$UserApiResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Login$Mutation extends JsonSerializable with EquatableMixin {
  Login$Mutation();

  factory Login$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Login$MutationFromJson(json);

  late Login$Mutation$UserApiResponse login;

  @override
  List<Object?> get props => [login];
  @override
  Map<String, dynamic> toJson() => _$Login$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserInput extends JsonSerializable with EquatableMixin {
  UserInput({this.birthday, this.email, required this.password, this.username});

  factory UserInput.fromJson(Map<String, dynamic> json) =>
      _$UserInputFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? birthday;

  String? email;

  late String password;

  String? username;

  @override
  List<Object?> get props => [birthday, email, password, username];
  @override
  Map<String, dynamic> toJson() => _$UserInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Register$Mutation$UserApiResponse$User extends JsonSerializable
    with EquatableMixin {
  Register$Mutation$UserApiResponse$User();

  factory Register$Mutation$UserApiResponse$User.fromJson(
          Map<String, dynamic> json) =>
      _$Register$Mutation$UserApiResponse$UserFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$Register$Mutation$UserApiResponse$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Register$Mutation$UserApiResponse$FieldError extends JsonSerializable
    with EquatableMixin {
  Register$Mutation$UserApiResponse$FieldError();

  factory Register$Mutation$UserApiResponse$FieldError.fromJson(
          Map<String, dynamic> json) =>
      _$Register$Mutation$UserApiResponse$FieldErrorFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$Register$Mutation$UserApiResponse$FieldErrorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Register$Mutation$UserApiResponse$JwtResponse extends JsonSerializable
    with EquatableMixin {
  Register$Mutation$UserApiResponse$JwtResponse();

  factory Register$Mutation$UserApiResponse$JwtResponse.fromJson(
          Map<String, dynamic> json) =>
      _$Register$Mutation$UserApiResponse$JwtResponseFromJson(json);

  late String accessToken;

  late String refreshToken;

  @override
  List<Object?> get props => [accessToken, refreshToken];
  @override
  Map<String, dynamic> toJson() =>
      _$Register$Mutation$UserApiResponse$JwtResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Register$Mutation$UserApiResponse extends JsonSerializable
    with EquatableMixin {
  Register$Mutation$UserApiResponse();

  factory Register$Mutation$UserApiResponse.fromJson(
          Map<String, dynamic> json) =>
      _$Register$Mutation$UserApiResponseFromJson(json);

  bool? ok;

  Register$Mutation$UserApiResponse$User? nodes;

  List<Register$Mutation$UserApiResponse$FieldError>? errors;

  Register$Mutation$UserApiResponse$JwtResponse? jwt;

  @override
  List<Object?> get props => [ok, nodes, errors, jwt];
  @override
  Map<String, dynamic> toJson() =>
      _$Register$Mutation$UserApiResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Register$Mutation extends JsonSerializable with EquatableMixin {
  Register$Mutation();

  factory Register$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Register$MutationFromJson(json);

  late Register$Mutation$UserApiResponse register;

  @override
  List<Object?> get props => [register];
  @override
  Map<String, dynamic> toJson() => _$Register$MutationToJson(this);
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

@JsonSerializable(explicitToJson: true)
class CreateEventArguments extends JsonSerializable with EquatableMixin {
  CreateEventArguments({required this.eventInput});

  @override
  factory CreateEventArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateEventArgumentsFromJson(json);

  late EventInput eventInput;

  @override
  List<Object?> get props => [eventInput];
  @override
  Map<String, dynamic> toJson() => _$CreateEventArgumentsToJson(this);
}

final CREATE_EVENT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createEvent'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'eventInput')),
            type: NamedTypeNode(
                name: NameNode(value: 'EventInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'createEvent'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'options'),
                  value: VariableNode(name: NameNode(value: 'eventInput')))
            ],
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

class CreateEventMutation
    extends GraphQLQuery<CreateEvent$Mutation, CreateEventArguments> {
  CreateEventMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_EVENT_MUTATION_DOCUMENT;

  @override
  final String operationName = 'createEvent';

  @override
  final CreateEventArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateEvent$Mutation parse(Map<String, dynamic> json) =>
      CreateEvent$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateForumArguments extends JsonSerializable with EquatableMixin {
  CreateForumArguments({this.eventId});

  @override
  factory CreateForumArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateForumArgumentsFromJson(json);

  final int? eventId;

  @override
  List<Object?> get props => [eventId];
  @override
  Map<String, dynamic> toJson() => _$CreateForumArgumentsToJson(this);
}

final CREATE_FORUM_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createForum'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'eventId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'createForum'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'eventId'),
                  value: VariableNode(name: NameNode(value: 'eventId')))
            ],
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

class CreateForumMutation
    extends GraphQLQuery<CreateForum$Mutation, CreateForumArguments> {
  CreateForumMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_FORUM_MUTATION_DOCUMENT;

  @override
  final String operationName = 'createForum';

  @override
  final CreateForumArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateForum$Mutation parse(Map<String, dynamic> json) =>
      CreateForum$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateInterestArguments extends JsonSerializable with EquatableMixin {
  CreateInterestArguments({this.interestInput});

  @override
  factory CreateInterestArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateInterestArgumentsFromJson(json);

  final InterestInput? interestInput;

  @override
  List<Object?> get props => [interestInput];
  @override
  Map<String, dynamic> toJson() => _$CreateInterestArgumentsToJson(this);
}

final CREATE_INTEREST_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createInterest'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'interestInput')),
            type: NamedTypeNode(
                name: NameNode(value: 'InterestInput'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'createInterest'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'options'),
                  value: VariableNode(name: NameNode(value: 'interestInput')))
            ],
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

class CreateInterestMutation
    extends GraphQLQuery<CreateInterest$Mutation, CreateInterestArguments> {
  CreateInterestMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_INTEREST_MUTATION_DOCUMENT;

  @override
  final String operationName = 'createInterest';

  @override
  final CreateInterestArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateInterest$Mutation parse(Map<String, dynamic> json) =>
      CreateInterest$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ForgotPasswordArguments extends JsonSerializable with EquatableMixin {
  ForgotPasswordArguments({required this.email});

  @override
  factory ForgotPasswordArguments.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordArgumentsFromJson(json);

  late String email;

  @override
  List<Object?> get props => [email];
  @override
  Map<String, dynamic> toJson() => _$ForgotPasswordArgumentsToJson(this);
}

final FORGOT_PASSWORD_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'forgotPassword'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'email')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'forgotPassword'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'email'),
                  value: VariableNode(name: NameNode(value: 'email')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'ok'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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

class ForgotPasswordMutation
    extends GraphQLQuery<ForgotPassword$Mutation, ForgotPasswordArguments> {
  ForgotPasswordMutation({required this.variables});

  @override
  final DocumentNode document = FORGOT_PASSWORD_MUTATION_DOCUMENT;

  @override
  final String operationName = 'forgotPassword';

  @override
  final ForgotPasswordArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  ForgotPassword$Mutation parse(Map<String, dynamic> json) =>
      ForgotPassword$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class HelloArguments extends JsonSerializable with EquatableMixin {
  HelloArguments({required this.message});

  @override
  factory HelloArguments.fromJson(Map<String, dynamic> json) =>
      _$HelloArgumentsFromJson(json);

  late String message;

  @override
  List<Object?> get props => [message];
  @override
  Map<String, dynamic> toJson() => _$HelloArgumentsToJson(this);
}

final HELLO_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'hello'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'message')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'helloMutation'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'message'),
                  value: VariableNode(name: NameNode(value: 'message')))
            ],
            directives: [],
            selectionSet: null)
      ]))
]);

class HelloMutation extends GraphQLQuery<Hello$Mutation, HelloArguments> {
  HelloMutation({required this.variables});

  @override
  final DocumentNode document = HELLO_MUTATION_DOCUMENT;

  @override
  final String operationName = 'hello';

  @override
  final HelloArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Hello$Mutation parse(Map<String, dynamic> json) =>
      Hello$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class LoginArguments extends JsonSerializable with EquatableMixin {
  LoginArguments({required this.userInput});

  @override
  factory LoginArguments.fromJson(Map<String, dynamic> json) =>
      _$LoginArgumentsFromJson(json);

  late UserInput userInput;

  @override
  List<Object?> get props => [userInput];
  @override
  Map<String, dynamic> toJson() => _$LoginArgumentsToJson(this);
}

final LOGIN_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'login'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userInput')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'login'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'options'),
                  value: VariableNode(name: NameNode(value: 'userInput')))
            ],
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
                  ])),
              FieldNode(
                  name: NameNode(value: 'jwt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'accessToken'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'refreshToken'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class LoginMutation extends GraphQLQuery<Login$Mutation, LoginArguments> {
  LoginMutation({required this.variables});

  @override
  final DocumentNode document = LOGIN_MUTATION_DOCUMENT;

  @override
  final String operationName = 'login';

  @override
  final LoginArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Login$Mutation parse(Map<String, dynamic> json) =>
      Login$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class RegisterArguments extends JsonSerializable with EquatableMixin {
  RegisterArguments({required this.userInput});

  @override
  factory RegisterArguments.fromJson(Map<String, dynamic> json) =>
      _$RegisterArgumentsFromJson(json);

  late UserInput userInput;

  @override
  List<Object?> get props => [userInput];
  @override
  Map<String, dynamic> toJson() => _$RegisterArgumentsToJson(this);
}

final REGISTER_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'register'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userInput')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'register'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'options'),
                  value: VariableNode(name: NameNode(value: 'userInput')))
            ],
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
                  ])),
              FieldNode(
                  name: NameNode(value: 'jwt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'accessToken'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'refreshToken'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class RegisterMutation
    extends GraphQLQuery<Register$Mutation, RegisterArguments> {
  RegisterMutation({required this.variables});

  @override
  final DocumentNode document = REGISTER_MUTATION_DOCUMENT;

  @override
  final String operationName = 'register';

  @override
  final RegisterArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Register$Mutation parse(Map<String, dynamic> json) =>
      Register$Mutation.fromJson(json);
}
