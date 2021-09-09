// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:whatado/utils/coercers.dart';
part 'mutations_graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class AddInterests$Mutation$AddInterests$Errors extends JsonSerializable
    with EquatableMixin {
  AddInterests$Mutation$AddInterests$Errors();

  factory AddInterests$Mutation$AddInterests$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$AddInterests$Mutation$AddInterests$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$AddInterests$Mutation$AddInterests$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddInterests$Mutation$AddInterests extends JsonSerializable
    with EquatableMixin {
  AddInterests$Mutation$AddInterests();

  factory AddInterests$Mutation$AddInterests.fromJson(
          Map<String, dynamic> json) =>
      _$AddInterests$Mutation$AddInterestsFromJson(json);

  bool? ok;

  bool? nodes;

  List<AddInterests$Mutation$AddInterests$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$AddInterests$Mutation$AddInterestsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddInterests$Mutation extends JsonSerializable with EquatableMixin {
  AddInterests$Mutation();

  factory AddInterests$Mutation.fromJson(Map<String, dynamic> json) =>
      _$AddInterests$MutationFromJson(json);

  late AddInterests$Mutation$AddInterests addInterests;

  @override
  List<Object?> get props => [addInterests];
  @override
  Map<String, dynamic> toJson() => _$AddInterests$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateChat$Mutation$CreateChat$Nodes$Author extends JsonSerializable
    with EquatableMixin {
  CreateChat$Mutation$CreateChat$Nodes$Author();

  factory CreateChat$Mutation$CreateChat$Nodes$Author.fromJson(
          Map<String, dynamic> json) =>
      _$CreateChat$Mutation$CreateChat$Nodes$AuthorFromJson(json);

  late int id;

  late String username;

  late String profilePhotoUrl;

  @override
  List<Object?> get props => [id, username, profilePhotoUrl];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateChat$Mutation$CreateChat$Nodes$AuthorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateChat$Mutation$CreateChat$Nodes extends JsonSerializable
    with EquatableMixin {
  CreateChat$Mutation$CreateChat$Nodes();

  factory CreateChat$Mutation$CreateChat$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$CreateChat$Mutation$CreateChat$NodesFromJson(json);

  late int id;

  late String text;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime createdAt;

  late CreateChat$Mutation$CreateChat$Nodes$Author author;

  @override
  List<Object?> get props => [id, text, createdAt, author];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateChat$Mutation$CreateChat$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateChat$Mutation$CreateChat$Errors extends JsonSerializable
    with EquatableMixin {
  CreateChat$Mutation$CreateChat$Errors();

  factory CreateChat$Mutation$CreateChat$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$CreateChat$Mutation$CreateChat$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateChat$Mutation$CreateChat$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateChat$Mutation$CreateChat extends JsonSerializable
    with EquatableMixin {
  CreateChat$Mutation$CreateChat();

  factory CreateChat$Mutation$CreateChat.fromJson(Map<String, dynamic> json) =>
      _$CreateChat$Mutation$CreateChatFromJson(json);

  bool? ok;

  CreateChat$Mutation$CreateChat$Nodes? nodes;

  List<CreateChat$Mutation$CreateChat$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() => _$CreateChat$Mutation$CreateChatToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateChat$Mutation extends JsonSerializable with EquatableMixin {
  CreateChat$Mutation();

  factory CreateChat$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateChat$MutationFromJson(json);

  late CreateChat$Mutation$CreateChat createChat;

  @override
  List<Object?> get props => [createChat];
  @override
  Map<String, dynamic> toJson() => _$CreateChat$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChatInput extends JsonSerializable with EquatableMixin {
  ChatInput(
      {required this.authorId, required this.forumId, required this.text});

  factory ChatInput.fromJson(Map<String, dynamic> json) =>
      _$ChatInputFromJson(json);

  late int authorId;

  late int forumId;

  late String text;

  @override
  List<Object?> get props => [authorId, forumId, text];
  @override
  Map<String, dynamic> toJson() => _$ChatInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateEvent$Mutation$CreateEvent$Nodes$Creator extends JsonSerializable
    with EquatableMixin {
  CreateEvent$Mutation$CreateEvent$Nodes$Creator();

  factory CreateEvent$Mutation$CreateEvent$Nodes$Creator.fromJson(
          Map<String, dynamic> json) =>
      _$CreateEvent$Mutation$CreateEvent$Nodes$CreatorFromJson(json);

  late int id;

  late String profilePhotoUrl;

  late String username;

  @override
  List<Object?> get props => [id, profilePhotoUrl, username];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateEvent$Mutation$CreateEvent$Nodes$CreatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateEvent$Mutation$CreateEvent$Nodes$Wannago extends JsonSerializable
    with EquatableMixin {
  CreateEvent$Mutation$CreateEvent$Nodes$Wannago();

  factory CreateEvent$Mutation$CreateEvent$Nodes$Wannago.fromJson(
          Map<String, dynamic> json) =>
      _$CreateEvent$Mutation$CreateEvent$Nodes$WannagoFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateEvent$Mutation$CreateEvent$Nodes$WannagoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateEvent$Mutation$CreateEvent$Nodes$Invited extends JsonSerializable
    with EquatableMixin {
  CreateEvent$Mutation$CreateEvent$Nodes$Invited();

  factory CreateEvent$Mutation$CreateEvent$Nodes$Invited.fromJson(
          Map<String, dynamic> json) =>
      _$CreateEvent$Mutation$CreateEvent$Nodes$InvitedFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateEvent$Mutation$CreateEvent$Nodes$InvitedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateEvent$Mutation$CreateEvent$Nodes$RelatedInterests
    extends JsonSerializable with EquatableMixin {
  CreateEvent$Mutation$CreateEvent$Nodes$RelatedInterests();

  factory CreateEvent$Mutation$CreateEvent$Nodes$RelatedInterests.fromJson(
          Map<String, dynamic> json) =>
      _$CreateEvent$Mutation$CreateEvent$Nodes$RelatedInterestsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateEvent$Mutation$CreateEvent$Nodes$RelatedInterestsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateEvent$Mutation$CreateEvent$Nodes extends JsonSerializable
    with EquatableMixin {
  CreateEvent$Mutation$CreateEvent$Nodes();

  factory CreateEvent$Mutation$CreateEvent$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$CreateEvent$Mutation$CreateEvent$NodesFromJson(json);

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

  late CreateEvent$Mutation$CreateEvent$Nodes$Creator creator;

  late List<CreateEvent$Mutation$CreateEvent$Nodes$Wannago> wannago;

  late List<CreateEvent$Mutation$CreateEvent$Nodes$Invited> invited;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime time;

  late String location;

  String? pictureUrl;

  late List<CreateEvent$Mutation$CreateEvent$Nodes$RelatedInterests>
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
        wannago,
        invited,
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
      _$CreateEvent$Mutation$CreateEvent$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateEvent$Mutation$CreateEvent$Errors extends JsonSerializable
    with EquatableMixin {
  CreateEvent$Mutation$CreateEvent$Errors();

  factory CreateEvent$Mutation$CreateEvent$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$CreateEvent$Mutation$CreateEvent$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateEvent$Mutation$CreateEvent$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateEvent$Mutation$CreateEvent extends JsonSerializable
    with EquatableMixin {
  CreateEvent$Mutation$CreateEvent();

  factory CreateEvent$Mutation$CreateEvent.fromJson(
          Map<String, dynamic> json) =>
      _$CreateEvent$Mutation$CreateEventFromJson(json);

  bool? ok;

  CreateEvent$Mutation$CreateEvent$Nodes? nodes;

  List<CreateEvent$Mutation$CreateEvent$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateEvent$Mutation$CreateEventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateEvent$Mutation extends JsonSerializable with EquatableMixin {
  CreateEvent$Mutation();

  factory CreateEvent$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateEvent$MutationFromJson(json);

  late CreateEvent$Mutation$CreateEvent createEvent;

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
      required this.invitedIds,
      required this.location,
      this.pictureUrl,
      required this.relatedInterestsIds,
      required this.time,
      required this.title,
      required this.wannagoIds});

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

  late List<int> invitedIds;

  late String location;

  String? pictureUrl;

  late List<int> relatedInterestsIds;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime time;

  late String title;

  late List<int> wannagoIds;

  @override
  List<Object?> get props => [
        creatorId,
        description,
        filterAge,
        filterGender,
        filterLocation,
        filterRadius,
        id,
        invitedIds,
        location,
        pictureUrl,
        relatedInterestsIds,
        time,
        title,
        wannagoIds
      ];
  @override
  Map<String, dynamic> toJson() => _$EventInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateForum$Mutation$CreateForum$Nodes$Event extends JsonSerializable
    with EquatableMixin {
  CreateForum$Mutation$CreateForum$Nodes$Event();

  factory CreateForum$Mutation$CreateForum$Nodes$Event.fromJson(
          Map<String, dynamic> json) =>
      _$CreateForum$Mutation$CreateForum$Nodes$EventFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateForum$Mutation$CreateForum$Nodes$EventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateForum$Mutation$CreateForum$Nodes extends JsonSerializable
    with EquatableMixin {
  CreateForum$Mutation$CreateForum$Nodes();

  factory CreateForum$Mutation$CreateForum$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$CreateForum$Mutation$CreateForum$NodesFromJson(json);

  late int id;

  late CreateForum$Mutation$CreateForum$Nodes$Event event;

  @override
  List<Object?> get props => [id, event];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateForum$Mutation$CreateForum$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateForum$Mutation$CreateForum$Errors extends JsonSerializable
    with EquatableMixin {
  CreateForum$Mutation$CreateForum$Errors();

  factory CreateForum$Mutation$CreateForum$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$CreateForum$Mutation$CreateForum$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateForum$Mutation$CreateForum$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateForum$Mutation$CreateForum extends JsonSerializable
    with EquatableMixin {
  CreateForum$Mutation$CreateForum();

  factory CreateForum$Mutation$CreateForum.fromJson(
          Map<String, dynamic> json) =>
      _$CreateForum$Mutation$CreateForumFromJson(json);

  bool? ok;

  CreateForum$Mutation$CreateForum$Nodes? nodes;

  List<CreateForum$Mutation$CreateForum$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateForum$Mutation$CreateForumToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateForum$Mutation extends JsonSerializable with EquatableMixin {
  CreateForum$Mutation();

  factory CreateForum$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateForum$MutationFromJson(json);

  late CreateForum$Mutation$CreateForum createForum;

  @override
  List<Object?> get props => [createForum];
  @override
  Map<String, dynamic> toJson() => _$CreateForum$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateInterest$Mutation$CreateInterest$Nodes extends JsonSerializable
    with EquatableMixin {
  CreateInterest$Mutation$CreateInterest$Nodes();

  factory CreateInterest$Mutation$CreateInterest$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$CreateInterest$Mutation$CreateInterest$NodesFromJson(json);

  late int id;

  late String title;

  @override
  List<Object?> get props => [id, title];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateInterest$Mutation$CreateInterest$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateInterest$Mutation$CreateInterest$Errors extends JsonSerializable
    with EquatableMixin {
  CreateInterest$Mutation$CreateInterest$Errors();

  factory CreateInterest$Mutation$CreateInterest$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$CreateInterest$Mutation$CreateInterest$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateInterest$Mutation$CreateInterest$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateInterest$Mutation$CreateInterest extends JsonSerializable
    with EquatableMixin {
  CreateInterest$Mutation$CreateInterest();

  factory CreateInterest$Mutation$CreateInterest.fromJson(
          Map<String, dynamic> json) =>
      _$CreateInterest$Mutation$CreateInterestFromJson(json);

  bool? ok;

  CreateInterest$Mutation$CreateInterest$Nodes? nodes;

  List<CreateInterest$Mutation$CreateInterest$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateInterest$Mutation$CreateInterestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateInterest$Mutation extends JsonSerializable with EquatableMixin {
  CreateInterest$Mutation();

  factory CreateInterest$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateInterest$MutationFromJson(json);

  late CreateInterest$Mutation$CreateInterest createInterest;

  @override
  List<Object?> get props => [createInterest];
  @override
  Map<String, dynamic> toJson() => _$CreateInterest$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InterestInput extends JsonSerializable with EquatableMixin {
  InterestInput(
      {this.id,
      required this.peopleInterestedIds,
      required this.popular,
      required this.relatedEventsIds,
      required this.title});

  factory InterestInput.fromJson(Map<String, dynamic> json) =>
      _$InterestInputFromJson(json);

  int? id;

  late List<int> peopleInterestedIds;

  late bool popular;

  late List<int> relatedEventsIds;

  late String title;

  @override
  List<Object?> get props =>
      [id, peopleInterestedIds, popular, relatedEventsIds, title];
  @override
  Map<String, dynamic> toJson() => _$InterestInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ForgotPassword$Mutation$ForgotPassword$Errors extends JsonSerializable
    with EquatableMixin {
  ForgotPassword$Mutation$ForgotPassword$Errors();

  factory ForgotPassword$Mutation$ForgotPassword$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$ForgotPassword$Mutation$ForgotPassword$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$ForgotPassword$Mutation$ForgotPassword$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ForgotPassword$Mutation$ForgotPassword extends JsonSerializable
    with EquatableMixin {
  ForgotPassword$Mutation$ForgotPassword();

  factory ForgotPassword$Mutation$ForgotPassword.fromJson(
          Map<String, dynamic> json) =>
      _$ForgotPassword$Mutation$ForgotPasswordFromJson(json);

  bool? ok;

  List<ForgotPassword$Mutation$ForgotPassword$Errors>? errors;

  @override
  List<Object?> get props => [ok, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$ForgotPassword$Mutation$ForgotPasswordToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ForgotPassword$Mutation extends JsonSerializable with EquatableMixin {
  ForgotPassword$Mutation();

  factory ForgotPassword$Mutation.fromJson(Map<String, dynamic> json) =>
      _$ForgotPassword$MutationFromJson(json);

  late ForgotPassword$Mutation$ForgotPassword forgotPassword;

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
class Login$Mutation$Login$Nodes extends JsonSerializable with EquatableMixin {
  Login$Mutation$Login$Nodes();

  factory Login$Mutation$Login$Nodes.fromJson(Map<String, dynamic> json) =>
      _$Login$Mutation$Login$NodesFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$Login$Mutation$Login$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Login$Mutation$Login$Errors extends JsonSerializable with EquatableMixin {
  Login$Mutation$Login$Errors();

  factory Login$Mutation$Login$Errors.fromJson(Map<String, dynamic> json) =>
      _$Login$Mutation$Login$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() => _$Login$Mutation$Login$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Login$Mutation$Login$Jwt extends JsonSerializable with EquatableMixin {
  Login$Mutation$Login$Jwt();

  factory Login$Mutation$Login$Jwt.fromJson(Map<String, dynamic> json) =>
      _$Login$Mutation$Login$JwtFromJson(json);

  late String accessToken;

  late String refreshToken;

  @override
  List<Object?> get props => [accessToken, refreshToken];
  @override
  Map<String, dynamic> toJson() => _$Login$Mutation$Login$JwtToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Login$Mutation$Login extends JsonSerializable with EquatableMixin {
  Login$Mutation$Login();

  factory Login$Mutation$Login.fromJson(Map<String, dynamic> json) =>
      _$Login$Mutation$LoginFromJson(json);

  bool? ok;

  Login$Mutation$Login$Nodes? nodes;

  List<Login$Mutation$Login$Errors>? errors;

  Login$Mutation$Login$Jwt? jwt;

  @override
  List<Object?> get props => [ok, nodes, errors, jwt];
  @override
  Map<String, dynamic> toJson() => _$Login$Mutation$LoginToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Login$Mutation extends JsonSerializable with EquatableMixin {
  Login$Mutation();

  factory Login$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Login$MutationFromJson(json);

  late Login$Mutation$Login login;

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
class Register$Mutation$Register$Nodes extends JsonSerializable
    with EquatableMixin {
  Register$Mutation$Register$Nodes();

  factory Register$Mutation$Register$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$Register$Mutation$Register$NodesFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$Register$Mutation$Register$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Register$Mutation$Register$Errors extends JsonSerializable
    with EquatableMixin {
  Register$Mutation$Register$Errors();

  factory Register$Mutation$Register$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$Register$Mutation$Register$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$Register$Mutation$Register$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Register$Mutation$Register$Jwt extends JsonSerializable
    with EquatableMixin {
  Register$Mutation$Register$Jwt();

  factory Register$Mutation$Register$Jwt.fromJson(Map<String, dynamic> json) =>
      _$Register$Mutation$Register$JwtFromJson(json);

  late String accessToken;

  late String refreshToken;

  @override
  List<Object?> get props => [accessToken, refreshToken];
  @override
  Map<String, dynamic> toJson() => _$Register$Mutation$Register$JwtToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Register$Mutation$Register extends JsonSerializable with EquatableMixin {
  Register$Mutation$Register();

  factory Register$Mutation$Register.fromJson(Map<String, dynamic> json) =>
      _$Register$Mutation$RegisterFromJson(json);

  bool? ok;

  Register$Mutation$Register$Nodes? nodes;

  List<Register$Mutation$Register$Errors>? errors;

  Register$Mutation$Register$Jwt? jwt;

  @override
  List<Object?> get props => [ok, nodes, errors, jwt];
  @override
  Map<String, dynamic> toJson() => _$Register$Mutation$RegisterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Register$Mutation extends JsonSerializable with EquatableMixin {
  Register$Mutation();

  factory Register$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Register$MutationFromJson(json);

  late Register$Mutation$Register register;

  @override
  List<Object?> get props => [register];
  @override
  Map<String, dynamic> toJson() => _$Register$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateBio$Mutation$UpdateBio$Errors extends JsonSerializable
    with EquatableMixin {
  UpdateBio$Mutation$UpdateBio$Errors();

  factory UpdateBio$Mutation$UpdateBio$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateBio$Mutation$UpdateBio$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateBio$Mutation$UpdateBio$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateBio$Mutation$UpdateBio extends JsonSerializable
    with EquatableMixin {
  UpdateBio$Mutation$UpdateBio();

  factory UpdateBio$Mutation$UpdateBio.fromJson(Map<String, dynamic> json) =>
      _$UpdateBio$Mutation$UpdateBioFromJson(json);

  bool? ok;

  bool? nodes;

  List<UpdateBio$Mutation$UpdateBio$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() => _$UpdateBio$Mutation$UpdateBioToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateBio$Mutation extends JsonSerializable with EquatableMixin {
  UpdateBio$Mutation();

  factory UpdateBio$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateBio$MutationFromJson(json);

  late UpdateBio$Mutation$UpdateBio updateBio;

  @override
  List<Object?> get props => [updateBio];
  @override
  Map<String, dynamic> toJson() => _$UpdateBio$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateEvent$Mutation$UpdateEvent$Nodes$Creator extends JsonSerializable
    with EquatableMixin {
  UpdateEvent$Mutation$UpdateEvent$Nodes$Creator();

  factory UpdateEvent$Mutation$UpdateEvent$Nodes$Creator.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateEvent$Mutation$UpdateEvent$Nodes$CreatorFromJson(json);

  late int id;

  late String profilePhotoUrl;

  late String username;

  @override
  List<Object?> get props => [id, profilePhotoUrl, username];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateEvent$Mutation$UpdateEvent$Nodes$CreatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateEvent$Mutation$UpdateEvent$Nodes$Wannago extends JsonSerializable
    with EquatableMixin {
  UpdateEvent$Mutation$UpdateEvent$Nodes$Wannago();

  factory UpdateEvent$Mutation$UpdateEvent$Nodes$Wannago.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateEvent$Mutation$UpdateEvent$Nodes$WannagoFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateEvent$Mutation$UpdateEvent$Nodes$WannagoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateEvent$Mutation$UpdateEvent$Nodes$Invited extends JsonSerializable
    with EquatableMixin {
  UpdateEvent$Mutation$UpdateEvent$Nodes$Invited();

  factory UpdateEvent$Mutation$UpdateEvent$Nodes$Invited.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateEvent$Mutation$UpdateEvent$Nodes$InvitedFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateEvent$Mutation$UpdateEvent$Nodes$InvitedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateEvent$Mutation$UpdateEvent$Nodes$RelatedInterests
    extends JsonSerializable with EquatableMixin {
  UpdateEvent$Mutation$UpdateEvent$Nodes$RelatedInterests();

  factory UpdateEvent$Mutation$UpdateEvent$Nodes$RelatedInterests.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateEvent$Mutation$UpdateEvent$Nodes$RelatedInterestsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateEvent$Mutation$UpdateEvent$Nodes$RelatedInterestsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateEvent$Mutation$UpdateEvent$Nodes extends JsonSerializable
    with EquatableMixin {
  UpdateEvent$Mutation$UpdateEvent$Nodes();

  factory UpdateEvent$Mutation$UpdateEvent$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateEvent$Mutation$UpdateEvent$NodesFromJson(json);

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

  late UpdateEvent$Mutation$UpdateEvent$Nodes$Creator creator;

  late List<UpdateEvent$Mutation$UpdateEvent$Nodes$Wannago> wannago;

  late List<UpdateEvent$Mutation$UpdateEvent$Nodes$Invited> invited;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime time;

  late String location;

  String? pictureUrl;

  late List<UpdateEvent$Mutation$UpdateEvent$Nodes$RelatedInterests>
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
        wannago,
        invited,
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
      _$UpdateEvent$Mutation$UpdateEvent$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateEvent$Mutation$UpdateEvent$Errors extends JsonSerializable
    with EquatableMixin {
  UpdateEvent$Mutation$UpdateEvent$Errors();

  factory UpdateEvent$Mutation$UpdateEvent$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateEvent$Mutation$UpdateEvent$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateEvent$Mutation$UpdateEvent$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateEvent$Mutation$UpdateEvent extends JsonSerializable
    with EquatableMixin {
  UpdateEvent$Mutation$UpdateEvent();

  factory UpdateEvent$Mutation$UpdateEvent.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateEvent$Mutation$UpdateEventFromJson(json);

  bool? ok;

  UpdateEvent$Mutation$UpdateEvent$Nodes? nodes;

  List<UpdateEvent$Mutation$UpdateEvent$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateEvent$Mutation$UpdateEventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateEvent$Mutation extends JsonSerializable with EquatableMixin {
  UpdateEvent$Mutation();

  factory UpdateEvent$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateEvent$MutationFromJson(json);

  late UpdateEvent$Mutation$UpdateEvent updateEvent;

  @override
  List<Object?> get props => [updateEvent];
  @override
  Map<String, dynamic> toJson() => _$UpdateEvent$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePhotos$Mutation$UpdatePhotos$Errors extends JsonSerializable
    with EquatableMixin {
  UpdatePhotos$Mutation$UpdatePhotos$Errors();

  factory UpdatePhotos$Mutation$UpdatePhotos$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePhotos$Mutation$UpdatePhotos$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePhotos$Mutation$UpdatePhotos$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePhotos$Mutation$UpdatePhotos extends JsonSerializable
    with EquatableMixin {
  UpdatePhotos$Mutation$UpdatePhotos();

  factory UpdatePhotos$Mutation$UpdatePhotos.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePhotos$Mutation$UpdatePhotosFromJson(json);

  bool? ok;

  bool? nodes;

  List<UpdatePhotos$Mutation$UpdatePhotos$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdatePhotos$Mutation$UpdatePhotosToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePhotos$Mutation extends JsonSerializable with EquatableMixin {
  UpdatePhotos$Mutation();

  factory UpdatePhotos$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdatePhotos$MutationFromJson(json);

  late UpdatePhotos$Mutation$UpdatePhotos updatePhotos;

  @override
  List<Object?> get props => [updatePhotos];
  @override
  Map<String, dynamic> toJson() => _$UpdatePhotos$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateProfilePhoto$Mutation$UpdateProfilePhoto$Errors
    extends JsonSerializable with EquatableMixin {
  UpdateProfilePhoto$Mutation$UpdateProfilePhoto$Errors();

  factory UpdateProfilePhoto$Mutation$UpdateProfilePhoto$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateProfilePhoto$Mutation$UpdateProfilePhoto$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateProfilePhoto$Mutation$UpdateProfilePhoto$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateProfilePhoto$Mutation$UpdateProfilePhoto extends JsonSerializable
    with EquatableMixin {
  UpdateProfilePhoto$Mutation$UpdateProfilePhoto();

  factory UpdateProfilePhoto$Mutation$UpdateProfilePhoto.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateProfilePhoto$Mutation$UpdateProfilePhotoFromJson(json);

  bool? ok;

  bool? nodes;

  List<UpdateProfilePhoto$Mutation$UpdateProfilePhoto$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateProfilePhoto$Mutation$UpdateProfilePhotoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateProfilePhoto$Mutation extends JsonSerializable with EquatableMixin {
  UpdateProfilePhoto$Mutation();

  factory UpdateProfilePhoto$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfilePhoto$MutationFromJson(json);

  late UpdateProfilePhoto$Mutation$UpdateProfilePhoto updateProfilePhoto;

  @override
  List<Object?> get props => [updateProfilePhoto];
  @override
  Map<String, dynamic> toJson() => _$UpdateProfilePhoto$MutationToJson(this);
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
class AddInterestsArguments extends JsonSerializable with EquatableMixin {
  AddInterestsArguments({required this.interestsText});

  @override
  factory AddInterestsArguments.fromJson(Map<String, dynamic> json) =>
      _$AddInterestsArgumentsFromJson(json);

  late List<String> interestsText;

  @override
  List<Object?> get props => [interestsText];
  @override
  Map<String, dynamic> toJson() => _$AddInterestsArgumentsToJson(this);
}

final ADD_INTERESTS_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'addInterests'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'interestsText')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'String'), isNonNull: true),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'addInterests'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'interestsText'),
                  value: VariableNode(name: NameNode(value: 'interestsText')))
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

class AddInterestsMutation
    extends GraphQLQuery<AddInterests$Mutation, AddInterestsArguments> {
  AddInterestsMutation({required this.variables});

  @override
  final DocumentNode document = ADD_INTERESTS_MUTATION_DOCUMENT;

  @override
  final String operationName = 'addInterests';

  @override
  final AddInterestsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AddInterests$Mutation parse(Map<String, dynamic> json) =>
      AddInterests$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateChatArguments extends JsonSerializable with EquatableMixin {
  CreateChatArguments({required this.chatInput});

  @override
  factory CreateChatArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateChatArgumentsFromJson(json);

  late ChatInput chatInput;

  @override
  List<Object?> get props => [chatInput];
  @override
  Map<String, dynamic> toJson() => _$CreateChatArgumentsToJson(this);
}

final CREATE_CHAT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createChat'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'chatInput')),
            type: NamedTypeNode(
                name: NameNode(value: 'ChatInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'createChat'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'options'),
                  value: VariableNode(name: NameNode(value: 'chatInput')))
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
                        name: NameNode(value: 'text'),
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
                        name: NameNode(value: 'author'),
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
                              name: NameNode(value: 'username'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'profilePhotoUrl'),
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

class CreateChatMutation
    extends GraphQLQuery<CreateChat$Mutation, CreateChatArguments> {
  CreateChatMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_CHAT_MUTATION_DOCUMENT;

  @override
  final String operationName = 'createChat';

  @override
  final CreateChatArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateChat$Mutation parse(Map<String, dynamic> json) =>
      CreateChat$Mutation.fromJson(json);
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
                        name: NameNode(value: 'invited'),
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
  CreateForumArguments({required this.eventId});

  @override
  factory CreateForumArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateForumArgumentsFromJson(json);

  late int eventId;

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
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'event'),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'title'),
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

@JsonSerializable(explicitToJson: true)
class UpdateBioArguments extends JsonSerializable with EquatableMixin {
  UpdateBioArguments({required this.bio});

  @override
  factory UpdateBioArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateBioArgumentsFromJson(json);

  late String bio;

  @override
  List<Object?> get props => [bio];
  @override
  Map<String, dynamic> toJson() => _$UpdateBioArgumentsToJson(this);
}

final UPDATE_BIO_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateBio'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'bio')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateBio'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'bio'),
                  value: VariableNode(name: NameNode(value: 'bio')))
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

class UpdateBioMutation
    extends GraphQLQuery<UpdateBio$Mutation, UpdateBioArguments> {
  UpdateBioMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_BIO_MUTATION_DOCUMENT;

  @override
  final String operationName = 'updateBio';

  @override
  final UpdateBioArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdateBio$Mutation parse(Map<String, dynamic> json) =>
      UpdateBio$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdateEventArguments extends JsonSerializable with EquatableMixin {
  UpdateEventArguments({required this.eventInput});

  @override
  factory UpdateEventArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateEventArgumentsFromJson(json);

  late EventInput eventInput;

  @override
  List<Object?> get props => [eventInput];
  @override
  Map<String, dynamic> toJson() => _$UpdateEventArgumentsToJson(this);
}

final UPDATE_EVENT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateEvent'),
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
            name: NameNode(value: 'updateEvent'),
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
                        name: NameNode(value: 'invited'),
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

class UpdateEventMutation
    extends GraphQLQuery<UpdateEvent$Mutation, UpdateEventArguments> {
  UpdateEventMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_EVENT_MUTATION_DOCUMENT;

  @override
  final String operationName = 'updateEvent';

  @override
  final UpdateEventArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdateEvent$Mutation parse(Map<String, dynamic> json) =>
      UpdateEvent$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdatePhotosArguments extends JsonSerializable with EquatableMixin {
  UpdatePhotosArguments({required this.urls});

  @override
  factory UpdatePhotosArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdatePhotosArgumentsFromJson(json);

  late List<String> urls;

  @override
  List<Object?> get props => [urls];
  @override
  Map<String, dynamic> toJson() => _$UpdatePhotosArgumentsToJson(this);
}

final UPDATE_PHOTOS_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updatePhotos'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'urls')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'String'), isNonNull: true),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updatePhotos'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'urls'),
                  value: VariableNode(name: NameNode(value: 'urls')))
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

class UpdatePhotosMutation
    extends GraphQLQuery<UpdatePhotos$Mutation, UpdatePhotosArguments> {
  UpdatePhotosMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_PHOTOS_MUTATION_DOCUMENT;

  @override
  final String operationName = 'updatePhotos';

  @override
  final UpdatePhotosArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdatePhotos$Mutation parse(Map<String, dynamic> json) =>
      UpdatePhotos$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdateProfilePhotoArguments extends JsonSerializable with EquatableMixin {
  UpdateProfilePhotoArguments({required this.url});

  @override
  factory UpdateProfilePhotoArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfilePhotoArgumentsFromJson(json);

  late String url;

  @override
  List<Object?> get props => [url];
  @override
  Map<String, dynamic> toJson() => _$UpdateProfilePhotoArgumentsToJson(this);
}

final UPDATE_PROFILE_PHOTO_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateProfilePhoto'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'url')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateProfilePhoto'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'url'),
                  value: VariableNode(name: NameNode(value: 'url')))
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

class UpdateProfilePhotoMutation extends GraphQLQuery<
    UpdateProfilePhoto$Mutation, UpdateProfilePhotoArguments> {
  UpdateProfilePhotoMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_PROFILE_PHOTO_MUTATION_DOCUMENT;

  @override
  final String operationName = 'updateProfilePhoto';

  @override
  final UpdateProfilePhotoArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdateProfilePhoto$Mutation parse(Map<String, dynamic> json) =>
      UpdateProfilePhoto$Mutation.fromJson(json);
}
