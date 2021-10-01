// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:whatado/utils/coercers.dart';
part 'mutations_graphql_api.graphql.g.dart';

mixin EventFieldsMixin {
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
  late EventFieldsMixin$Creator creator;
  late List<EventFieldsMixin$Invited> invited;
  late List<EventFieldsMixin$Wannago> wannago;
  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime time;
  late String location;
  String? pictureUrl;
  late List<EventFieldsMixin$RelatedInterests> relatedInterests;
  late String filterLocation;
  late double filterRadius;
  @JsonKey(unknownEnumValue: Gender.artemisUnknown)
  late Gender filterGender;
  late String filterAge;
}
mixin EventUserMixin {
  late int id;
  late String username;
  late String profilePhotoUrl;
}
mixin UserFieldsMixin {
  late int id;
  late String profilePhotoUrl;
  late String photoUrls;
  late String email;
  late bool verified;
  late String username;
  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime birthday;
  late String bio;
  late List<UserFieldsMixin$Interests> interests;
  late List<UserFieldsMixin$MyEvents> myEvents;
  late List<UserFieldsMixin$ChatNotifications> chatNotifications;
}

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
class AddInvite$Mutation$AddInvite$Nodes extends JsonSerializable
    with EquatableMixin, EventFieldsMixin {
  AddInvite$Mutation$AddInvite$Nodes();

  factory AddInvite$Mutation$AddInvite$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$AddInvite$Mutation$AddInvite$NodesFromJson(json);

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updatedAt,
        title,
        description,
        creator,
        invited,
        wannago,
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
      _$AddInvite$Mutation$AddInvite$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddInvite$Mutation$AddInvite$Errors extends JsonSerializable
    with EquatableMixin {
  AddInvite$Mutation$AddInvite$Errors();

  factory AddInvite$Mutation$AddInvite$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$AddInvite$Mutation$AddInvite$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$AddInvite$Mutation$AddInvite$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddInvite$Mutation$AddInvite extends JsonSerializable
    with EquatableMixin {
  AddInvite$Mutation$AddInvite();

  factory AddInvite$Mutation$AddInvite.fromJson(Map<String, dynamic> json) =>
      _$AddInvite$Mutation$AddInviteFromJson(json);

  bool? ok;

  AddInvite$Mutation$AddInvite$Nodes? nodes;

  List<AddInvite$Mutation$AddInvite$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() => _$AddInvite$Mutation$AddInviteToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddInvite$Mutation extends JsonSerializable with EquatableMixin {
  AddInvite$Mutation();

  factory AddInvite$Mutation.fromJson(Map<String, dynamic> json) =>
      _$AddInvite$MutationFromJson(json);

  late AddInvite$Mutation$AddInvite addInvite;

  @override
  List<Object?> get props => [addInvite];
  @override
  Map<String, dynamic> toJson() => _$AddInvite$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EventFieldsMixin$Creator extends JsonSerializable
    with EquatableMixin, EventUserMixin {
  EventFieldsMixin$Creator();

  factory EventFieldsMixin$Creator.fromJson(Map<String, dynamic> json) =>
      _$EventFieldsMixin$CreatorFromJson(json);

  @override
  List<Object?> get props => [id, username, profilePhotoUrl];
  @override
  Map<String, dynamic> toJson() => _$EventFieldsMixin$CreatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EventFieldsMixin$Invited extends JsonSerializable
    with EquatableMixin, EventUserMixin {
  EventFieldsMixin$Invited();

  factory EventFieldsMixin$Invited.fromJson(Map<String, dynamic> json) =>
      _$EventFieldsMixin$InvitedFromJson(json);

  @override
  List<Object?> get props => [id, username, profilePhotoUrl];
  @override
  Map<String, dynamic> toJson() => _$EventFieldsMixin$InvitedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EventFieldsMixin$Wannago$User extends JsonSerializable
    with EquatableMixin, EventUserMixin {
  EventFieldsMixin$Wannago$User();

  factory EventFieldsMixin$Wannago$User.fromJson(Map<String, dynamic> json) =>
      _$EventFieldsMixin$Wannago$UserFromJson(json);

  @override
  List<Object?> get props => [id, username, profilePhotoUrl];
  @override
  Map<String, dynamic> toJson() => _$EventFieldsMixin$Wannago$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EventFieldsMixin$Wannago extends JsonSerializable with EquatableMixin {
  EventFieldsMixin$Wannago();

  factory EventFieldsMixin$Wannago.fromJson(Map<String, dynamic> json) =>
      _$EventFieldsMixin$WannagoFromJson(json);

  late int id;

  late bool declined;

  late EventFieldsMixin$Wannago$User user;

  @override
  List<Object?> get props => [id, declined, user];
  @override
  Map<String, dynamic> toJson() => _$EventFieldsMixin$WannagoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EventFieldsMixin$RelatedInterests extends JsonSerializable
    with EquatableMixin {
  EventFieldsMixin$RelatedInterests();

  factory EventFieldsMixin$RelatedInterests.fromJson(
          Map<String, dynamic> json) =>
      _$EventFieldsMixin$RelatedInterestsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$EventFieldsMixin$RelatedInterestsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddWannago$Mutation$AddWannago$Nodes extends JsonSerializable
    with EquatableMixin, EventFieldsMixin {
  AddWannago$Mutation$AddWannago$Nodes();

  factory AddWannago$Mutation$AddWannago$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$AddWannago$Mutation$AddWannago$NodesFromJson(json);

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updatedAt,
        title,
        description,
        creator,
        invited,
        wannago,
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
      _$AddWannago$Mutation$AddWannago$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddWannago$Mutation$AddWannago$Errors extends JsonSerializable
    with EquatableMixin {
  AddWannago$Mutation$AddWannago$Errors();

  factory AddWannago$Mutation$AddWannago$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$AddWannago$Mutation$AddWannago$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$AddWannago$Mutation$AddWannago$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddWannago$Mutation$AddWannago extends JsonSerializable
    with EquatableMixin {
  AddWannago$Mutation$AddWannago();

  factory AddWannago$Mutation$AddWannago.fromJson(Map<String, dynamic> json) =>
      _$AddWannago$Mutation$AddWannagoFromJson(json);

  bool? ok;

  AddWannago$Mutation$AddWannago$Nodes? nodes;

  List<AddWannago$Mutation$AddWannago$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() => _$AddWannago$Mutation$AddWannagoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddWannago$Mutation extends JsonSerializable with EquatableMixin {
  AddWannago$Mutation();

  factory AddWannago$Mutation.fromJson(Map<String, dynamic> json) =>
      _$AddWannago$MutationFromJson(json);

  late AddWannago$Mutation$AddWannago addWannago;

  @override
  List<Object?> get props => [addWannago];
  @override
  Map<String, dynamic> toJson() => _$AddWannago$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BlockUser$Mutation$BlockUser$Errors extends JsonSerializable
    with EquatableMixin {
  BlockUser$Mutation$BlockUser$Errors();

  factory BlockUser$Mutation$BlockUser$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$BlockUser$Mutation$BlockUser$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$BlockUser$Mutation$BlockUser$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BlockUser$Mutation$BlockUser extends JsonSerializable
    with EquatableMixin {
  BlockUser$Mutation$BlockUser();

  factory BlockUser$Mutation$BlockUser.fromJson(Map<String, dynamic> json) =>
      _$BlockUser$Mutation$BlockUserFromJson(json);

  bool? ok;

  bool? nodes;

  List<BlockUser$Mutation$BlockUser$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() => _$BlockUser$Mutation$BlockUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BlockUser$Mutation extends JsonSerializable with EquatableMixin {
  BlockUser$Mutation();

  factory BlockUser$Mutation.fromJson(Map<String, dynamic> json) =>
      _$BlockUser$MutationFromJson(json);

  late BlockUser$Mutation$BlockUser blockUser;

  @override
  List<Object?> get props => [blockUser];
  @override
  Map<String, dynamic> toJson() => _$BlockUser$MutationToJson(this);
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
      {required this.authorId,
      required this.eventId,
      required this.forumId,
      required this.text});

  factory ChatInput.fromJson(Map<String, dynamic> json) =>
      _$ChatInputFromJson(json);

  late int authorId;

  late int eventId;

  late int forumId;

  late String text;

  @override
  List<Object?> get props => [authorId, eventId, forumId, text];
  @override
  Map<String, dynamic> toJson() => _$ChatInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateEvent$Mutation$CreateEvent$Nodes extends JsonSerializable
    with EquatableMixin, EventFieldsMixin {
  CreateEvent$Mutation$CreateEvent$Nodes();

  factory CreateEvent$Mutation$CreateEvent$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$CreateEvent$Mutation$CreateEvent$NodesFromJson(json);

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updatedAt,
        title,
        description,
        creator,
        invited,
        wannago,
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

  List<double>? nodes;

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
class DeleteEvent$Mutation$DeleteEvent$Errors extends JsonSerializable
    with EquatableMixin {
  DeleteEvent$Mutation$DeleteEvent$Errors();

  factory DeleteEvent$Mutation$DeleteEvent$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$DeleteEvent$Mutation$DeleteEvent$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$DeleteEvent$Mutation$DeleteEvent$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteEvent$Mutation$DeleteEvent extends JsonSerializable
    with EquatableMixin {
  DeleteEvent$Mutation$DeleteEvent();

  factory DeleteEvent$Mutation$DeleteEvent.fromJson(
          Map<String, dynamic> json) =>
      _$DeleteEvent$Mutation$DeleteEventFromJson(json);

  bool? ok;

  bool? nodes;

  List<DeleteEvent$Mutation$DeleteEvent$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$DeleteEvent$Mutation$DeleteEventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteEvent$Mutation extends JsonSerializable with EquatableMixin {
  DeleteEvent$Mutation();

  factory DeleteEvent$Mutation.fromJson(Map<String, dynamic> json) =>
      _$DeleteEvent$MutationFromJson(json);

  late DeleteEvent$Mutation$DeleteEvent deleteEvent;

  @override
  List<Object?> get props => [deleteEvent];
  @override
  Map<String, dynamic> toJson() => _$DeleteEvent$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteWannago$Mutation$DeleteWannago$Errors extends JsonSerializable
    with EquatableMixin {
  DeleteWannago$Mutation$DeleteWannago$Errors();

  factory DeleteWannago$Mutation$DeleteWannago$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$DeleteWannago$Mutation$DeleteWannago$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$DeleteWannago$Mutation$DeleteWannago$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteWannago$Mutation$DeleteWannago extends JsonSerializable
    with EquatableMixin {
  DeleteWannago$Mutation$DeleteWannago();

  factory DeleteWannago$Mutation$DeleteWannago.fromJson(
          Map<String, dynamic> json) =>
      _$DeleteWannago$Mutation$DeleteWannagoFromJson(json);

  bool? ok;

  bool? nodes;

  List<DeleteWannago$Mutation$DeleteWannago$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$DeleteWannago$Mutation$DeleteWannagoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteWannago$Mutation extends JsonSerializable with EquatableMixin {
  DeleteWannago$Mutation();

  factory DeleteWannago$Mutation.fromJson(Map<String, dynamic> json) =>
      _$DeleteWannago$MutationFromJson(json);

  late DeleteWannago$Mutation$DeleteWannago deleteWannago;

  @override
  List<Object?> get props => [deleteWannago];
  @override
  Map<String, dynamic> toJson() => _$DeleteWannago$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlagEvent$Mutation$FlagEvent$Errors extends JsonSerializable
    with EquatableMixin {
  FlagEvent$Mutation$FlagEvent$Errors();

  factory FlagEvent$Mutation$FlagEvent$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$FlagEvent$Mutation$FlagEvent$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$FlagEvent$Mutation$FlagEvent$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlagEvent$Mutation$FlagEvent extends JsonSerializable
    with EquatableMixin {
  FlagEvent$Mutation$FlagEvent();

  factory FlagEvent$Mutation$FlagEvent.fromJson(Map<String, dynamic> json) =>
      _$FlagEvent$Mutation$FlagEventFromJson(json);

  bool? ok;

  bool? nodes;

  List<FlagEvent$Mutation$FlagEvent$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() => _$FlagEvent$Mutation$FlagEventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlagEvent$Mutation extends JsonSerializable with EquatableMixin {
  FlagEvent$Mutation();

  factory FlagEvent$Mutation.fromJson(Map<String, dynamic> json) =>
      _$FlagEvent$MutationFromJson(json);

  late FlagEvent$Mutation$FlagEvent flagEvent;

  @override
  List<Object?> get props => [flagEvent];
  @override
  Map<String, dynamic> toJson() => _$FlagEvent$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlagUser$Mutation$FlagUser$Errors extends JsonSerializable
    with EquatableMixin {
  FlagUser$Mutation$FlagUser$Errors();

  factory FlagUser$Mutation$FlagUser$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$FlagUser$Mutation$FlagUser$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$FlagUser$Mutation$FlagUser$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlagUser$Mutation$FlagUser extends JsonSerializable with EquatableMixin {
  FlagUser$Mutation$FlagUser();

  factory FlagUser$Mutation$FlagUser.fromJson(Map<String, dynamic> json) =>
      _$FlagUser$Mutation$FlagUserFromJson(json);

  bool? ok;

  bool? nodes;

  List<FlagUser$Mutation$FlagUser$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() => _$FlagUser$Mutation$FlagUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlagUser$Mutation extends JsonSerializable with EquatableMixin {
  FlagUser$Mutation();

  factory FlagUser$Mutation.fromJson(Map<String, dynamic> json) =>
      _$FlagUser$MutationFromJson(json);

  late FlagUser$Mutation$FlagUser flagUser;

  @override
  List<Object?> get props => [flagUser];
  @override
  Map<String, dynamic> toJson() => _$FlagUser$MutationToJson(this);
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
class UpdateEvent$Mutation$UpdateEvent$Nodes extends JsonSerializable
    with EquatableMixin, EventFieldsMixin {
  UpdateEvent$Mutation$UpdateEvent$Nodes();

  factory UpdateEvent$Mutation$UpdateEvent$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateEvent$Mutation$UpdateEvent$NodesFromJson(json);

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updatedAt,
        title,
        description,
        creator,
        invited,
        wannago,
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
class EventFilterInput extends JsonSerializable with EquatableMixin {
  EventFilterInput(
      {this.createdAt,
      this.creatorId,
      this.description,
      this.filterAge,
      this.filterGender,
      this.filterLocation,
      this.filterRadius,
      this.forumId,
      this.id,
      this.invitedIds,
      this.location,
      this.pictureUrl,
      this.relatedInterestsIds,
      this.time,
      this.title,
      this.updatedAt,
      this.wannagoIds});

  factory EventFilterInput.fromJson(Map<String, dynamic> json) =>
      _$EventFilterInputFromJson(json);

  String? createdAt;

  int? creatorId;

  String? description;

  String? filterAge;

  @JsonKey(unknownEnumValue: Gender.artemisUnknown)
  Gender? filterGender;

  String? filterLocation;

  double? filterRadius;

  int? forumId;

  int? id;

  List<int>? invitedIds;

  String? location;

  String? pictureUrl;

  List<int>? relatedInterestsIds;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? time;

  String? title;

  String? updatedAt;

  List<int>? wannagoIds;

  @override
  List<Object?> get props => [
        createdAt,
        creatorId,
        description,
        filterAge,
        filterGender,
        filterLocation,
        filterRadius,
        forumId,
        id,
        invitedIds,
        location,
        pictureUrl,
        relatedInterestsIds,
        time,
        title,
        updatedAt,
        wannagoIds
      ];
  @override
  Map<String, dynamic> toJson() => _$EventFilterInputToJson(this);
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

@JsonSerializable(explicitToJson: true)
class UpdateUser$Mutation$UpdateUser$Nodes extends JsonSerializable
    with EquatableMixin, UserFieldsMixin {
  UpdateUser$Mutation$UpdateUser$Nodes();

  factory UpdateUser$Mutation$UpdateUser$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateUser$Mutation$UpdateUser$NodesFromJson(json);

  @override
  List<Object?> get props => [
        id,
        profilePhotoUrl,
        photoUrls,
        email,
        verified,
        username,
        birthday,
        bio,
        interests,
        myEvents,
        chatNotifications
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateUser$Mutation$UpdateUser$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUser$Mutation$UpdateUser$Errors extends JsonSerializable
    with EquatableMixin {
  UpdateUser$Mutation$UpdateUser$Errors();

  factory UpdateUser$Mutation$UpdateUser$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateUser$Mutation$UpdateUser$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateUser$Mutation$UpdateUser$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUser$Mutation$UpdateUser extends JsonSerializable
    with EquatableMixin {
  UpdateUser$Mutation$UpdateUser();

  factory UpdateUser$Mutation$UpdateUser.fromJson(Map<String, dynamic> json) =>
      _$UpdateUser$Mutation$UpdateUserFromJson(json);

  bool? ok;

  UpdateUser$Mutation$UpdateUser$Nodes? nodes;

  List<UpdateUser$Mutation$UpdateUser$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() => _$UpdateUser$Mutation$UpdateUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUser$Mutation extends JsonSerializable with EquatableMixin {
  UpdateUser$Mutation();

  factory UpdateUser$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateUser$MutationFromJson(json);

  late UpdateUser$Mutation$UpdateUser updateUser;

  @override
  List<Object?> get props => [updateUser];
  @override
  Map<String, dynamic> toJson() => _$UpdateUser$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserFieldsMixin$Interests extends JsonSerializable with EquatableMixin {
  UserFieldsMixin$Interests();

  factory UserFieldsMixin$Interests.fromJson(Map<String, dynamic> json) =>
      _$UserFieldsMixin$InterestsFromJson(json);

  late int id;

  late String title;

  @override
  List<Object?> get props => [id, title];
  @override
  Map<String, dynamic> toJson() => _$UserFieldsMixin$InterestsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserFieldsMixin$MyEvents extends JsonSerializable with EquatableMixin {
  UserFieldsMixin$MyEvents();

  factory UserFieldsMixin$MyEvents.fromJson(Map<String, dynamic> json) =>
      _$UserFieldsMixin$MyEventsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$UserFieldsMixin$MyEventsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserFieldsMixin$ChatNotifications extends JsonSerializable
    with EquatableMixin {
  UserFieldsMixin$ChatNotifications();

  factory UserFieldsMixin$ChatNotifications.fromJson(
          Map<String, dynamic> json) =>
      _$UserFieldsMixin$ChatNotificationsFromJson(json);

  late int notifications;

  late bool muted;

  @override
  List<Object?> get props => [notifications, muted];
  @override
  Map<String, dynamic> toJson() =>
      _$UserFieldsMixin$ChatNotificationsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserFilterInput extends JsonSerializable with EquatableMixin {
  UserFilterInput(
      {this.bio,
      this.birthday,
      this.deviceId,
      this.email,
      this.id,
      this.photoUrls,
      this.profilePhotoUrl,
      this.username,
      this.verified});

  factory UserFilterInput.fromJson(Map<String, dynamic> json) =>
      _$UserFilterInputFromJson(json);

  String? bio;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? birthday;

  String? deviceId;

  String? email;

  int? id;

  String? photoUrls;

  String? profilePhotoUrl;

  String? username;

  bool? verified;

  @override
  List<Object?> get props => [
        bio,
        birthday,
        deviceId,
        email,
        id,
        photoUrls,
        profilePhotoUrl,
        username,
        verified
      ];
  @override
  Map<String, dynamic> toJson() => _$UserFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateWannago$Mutation$UpdateWannago$Errors extends JsonSerializable
    with EquatableMixin {
  UpdateWannago$Mutation$UpdateWannago$Errors();

  factory UpdateWannago$Mutation$UpdateWannago$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateWannago$Mutation$UpdateWannago$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateWannago$Mutation$UpdateWannago$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateWannago$Mutation$UpdateWannago extends JsonSerializable
    with EquatableMixin {
  UpdateWannago$Mutation$UpdateWannago();

  factory UpdateWannago$Mutation$UpdateWannago.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateWannago$Mutation$UpdateWannagoFromJson(json);

  bool? ok;

  bool? nodes;

  List<UpdateWannago$Mutation$UpdateWannago$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateWannago$Mutation$UpdateWannagoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateWannago$Mutation extends JsonSerializable with EquatableMixin {
  UpdateWannago$Mutation();

  factory UpdateWannago$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateWannago$MutationFromJson(json);

  late UpdateWannago$Mutation$UpdateWannago updateWannago;

  @override
  List<Object?> get props => [updateWannago];
  @override
  Map<String, dynamic> toJson() => _$UpdateWannago$MutationToJson(this);
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
class AddInviteArguments extends JsonSerializable with EquatableMixin {
  AddInviteArguments({required this.eventId, required this.userId});

  @override
  factory AddInviteArguments.fromJson(Map<String, dynamic> json) =>
      _$AddInviteArgumentsFromJson(json);

  late int eventId;

  late int userId;

  @override
  List<Object?> get props => [eventId, userId];
  @override
  Map<String, dynamic> toJson() => _$AddInviteArgumentsToJson(this);
}

final ADD_INVITE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'addInvite'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'eventId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'addInvite'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'eventId'),
                  value: VariableNode(name: NameNode(value: 'eventId'))),
              ArgumentNode(
                  name: NameNode(value: 'userId'),
                  value: VariableNode(name: NameNode(value: 'userId')))
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
                    FragmentSpreadNode(
                        name: NameNode(value: 'EventFields'), directives: [])
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
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'EventFields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'Event'), isNonNull: false)),
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
              FragmentSpreadNode(
                  name: NameNode(value: 'EventUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'invited'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'EventUser'), directives: [])
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
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'declined'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'EventUser'), directives: [])
                  ]))
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
  FragmentDefinitionNode(
      name: NameNode(value: 'EventUser'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false)),
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
]);

class AddInviteMutation
    extends GraphQLQuery<AddInvite$Mutation, AddInviteArguments> {
  AddInviteMutation({required this.variables});

  @override
  final DocumentNode document = ADD_INVITE_MUTATION_DOCUMENT;

  @override
  final String operationName = 'addInvite';

  @override
  final AddInviteArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AddInvite$Mutation parse(Map<String, dynamic> json) =>
      AddInvite$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AddWannagoArguments extends JsonSerializable with EquatableMixin {
  AddWannagoArguments({required this.eventId, required this.userId});

  @override
  factory AddWannagoArguments.fromJson(Map<String, dynamic> json) =>
      _$AddWannagoArgumentsFromJson(json);

  late int eventId;

  late int userId;

  @override
  List<Object?> get props => [eventId, userId];
  @override
  Map<String, dynamic> toJson() => _$AddWannagoArgumentsToJson(this);
}

final ADD_WANNAGO_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'addWannago'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'eventId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'addWannago'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'eventId'),
                  value: VariableNode(name: NameNode(value: 'eventId'))),
              ArgumentNode(
                  name: NameNode(value: 'userId'),
                  value: VariableNode(name: NameNode(value: 'userId')))
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
                    FragmentSpreadNode(
                        name: NameNode(value: 'EventFields'), directives: [])
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
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'EventFields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'Event'), isNonNull: false)),
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
              FragmentSpreadNode(
                  name: NameNode(value: 'EventUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'invited'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'EventUser'), directives: [])
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
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'declined'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'EventUser'), directives: [])
                  ]))
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
  FragmentDefinitionNode(
      name: NameNode(value: 'EventUser'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false)),
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
]);

class AddWannagoMutation
    extends GraphQLQuery<AddWannago$Mutation, AddWannagoArguments> {
  AddWannagoMutation({required this.variables});

  @override
  final DocumentNode document = ADD_WANNAGO_MUTATION_DOCUMENT;

  @override
  final String operationName = 'addWannago';

  @override
  final AddWannagoArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AddWannago$Mutation parse(Map<String, dynamic> json) =>
      AddWannago$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class BlockUserArguments extends JsonSerializable with EquatableMixin {
  BlockUserArguments({required this.userId});

  @override
  factory BlockUserArguments.fromJson(Map<String, dynamic> json) =>
      _$BlockUserArgumentsFromJson(json);

  late int userId;

  @override
  List<Object?> get props => [userId];
  @override
  Map<String, dynamic> toJson() => _$BlockUserArgumentsToJson(this);
}

final BLOCK_USER_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'blockUser'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'blockUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'userId'),
                  value: VariableNode(name: NameNode(value: 'userId')))
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

class BlockUserMutation
    extends GraphQLQuery<BlockUser$Mutation, BlockUserArguments> {
  BlockUserMutation({required this.variables});

  @override
  final DocumentNode document = BLOCK_USER_MUTATION_DOCUMENT;

  @override
  final String operationName = 'blockUser';

  @override
  final BlockUserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  BlockUser$Mutation parse(Map<String, dynamic> json) =>
      BlockUser$Mutation.fromJson(json);
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
                    FragmentSpreadNode(
                        name: NameNode(value: 'EventFields'), directives: [])
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
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'EventFields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'Event'), isNonNull: false)),
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
              FragmentSpreadNode(
                  name: NameNode(value: 'EventUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'invited'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'EventUser'), directives: [])
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
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'declined'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'EventUser'), directives: [])
                  ]))
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
  FragmentDefinitionNode(
      name: NameNode(value: 'EventUser'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false)),
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
  CreateInterestArguments({required this.interestsText});

  @override
  factory CreateInterestArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateInterestArgumentsFromJson(json);

  late List<String> interestsText;

  @override
  List<Object?> get props => [interestsText];
  @override
  Map<String, dynamic> toJson() => _$CreateInterestArgumentsToJson(this);
}

final CREATE_INTEREST_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createInterest'),
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
            name: NameNode(value: 'createInterest'),
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
class DeleteEventArguments extends JsonSerializable with EquatableMixin {
  DeleteEventArguments({required this.eventId});

  @override
  factory DeleteEventArguments.fromJson(Map<String, dynamic> json) =>
      _$DeleteEventArgumentsFromJson(json);

  late int eventId;

  @override
  List<Object?> get props => [eventId];
  @override
  Map<String, dynamic> toJson() => _$DeleteEventArgumentsToJson(this);
}

final DELETE_EVENT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteEvent'),
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
            name: NameNode(value: 'deleteEvent'),
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

class DeleteEventMutation
    extends GraphQLQuery<DeleteEvent$Mutation, DeleteEventArguments> {
  DeleteEventMutation({required this.variables});

  @override
  final DocumentNode document = DELETE_EVENT_MUTATION_DOCUMENT;

  @override
  final String operationName = 'deleteEvent';

  @override
  final DeleteEventArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  DeleteEvent$Mutation parse(Map<String, dynamic> json) =>
      DeleteEvent$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DeleteWannagoArguments extends JsonSerializable with EquatableMixin {
  DeleteWannagoArguments({required this.id});

  @override
  factory DeleteWannagoArguments.fromJson(Map<String, dynamic> json) =>
      _$DeleteWannagoArgumentsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$DeleteWannagoArgumentsToJson(this);
}

final DELETE_WANNAGO_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteWannago'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'deleteWannago'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
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

class DeleteWannagoMutation
    extends GraphQLQuery<DeleteWannago$Mutation, DeleteWannagoArguments> {
  DeleteWannagoMutation({required this.variables});

  @override
  final DocumentNode document = DELETE_WANNAGO_MUTATION_DOCUMENT;

  @override
  final String operationName = 'deleteWannago';

  @override
  final DeleteWannagoArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  DeleteWannago$Mutation parse(Map<String, dynamic> json) =>
      DeleteWannago$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FlagEventArguments extends JsonSerializable with EquatableMixin {
  FlagEventArguments({required this.eventId});

  @override
  factory FlagEventArguments.fromJson(Map<String, dynamic> json) =>
      _$FlagEventArgumentsFromJson(json);

  late int eventId;

  @override
  List<Object?> get props => [eventId];
  @override
  Map<String, dynamic> toJson() => _$FlagEventArgumentsToJson(this);
}

final FLAG_EVENT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'flagEvent'),
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
            name: NameNode(value: 'flagEvent'),
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

class FlagEventMutation
    extends GraphQLQuery<FlagEvent$Mutation, FlagEventArguments> {
  FlagEventMutation({required this.variables});

  @override
  final DocumentNode document = FLAG_EVENT_MUTATION_DOCUMENT;

  @override
  final String operationName = 'flagEvent';

  @override
  final FlagEventArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FlagEvent$Mutation parse(Map<String, dynamic> json) =>
      FlagEvent$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FlagUserArguments extends JsonSerializable with EquatableMixin {
  FlagUserArguments({required this.userId});

  @override
  factory FlagUserArguments.fromJson(Map<String, dynamic> json) =>
      _$FlagUserArgumentsFromJson(json);

  late int userId;

  @override
  List<Object?> get props => [userId];
  @override
  Map<String, dynamic> toJson() => _$FlagUserArgumentsToJson(this);
}

final FLAG_USER_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'flagUser'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'flagUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'userId'),
                  value: VariableNode(name: NameNode(value: 'userId')))
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

class FlagUserMutation
    extends GraphQLQuery<FlagUser$Mutation, FlagUserArguments> {
  FlagUserMutation({required this.variables});

  @override
  final DocumentNode document = FLAG_USER_MUTATION_DOCUMENT;

  @override
  final String operationName = 'flagUser';

  @override
  final FlagUserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FlagUser$Mutation parse(Map<String, dynamic> json) =>
      FlagUser$Mutation.fromJson(json);
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

  late EventFilterInput eventInput;

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
                name: NameNode(value: 'EventFilterInput'), isNonNull: true),
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
                    FragmentSpreadNode(
                        name: NameNode(value: 'EventFields'), directives: [])
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
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'EventFields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'Event'), isNonNull: false)),
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
              FragmentSpreadNode(
                  name: NameNode(value: 'EventUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'invited'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'EventUser'), directives: [])
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
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'declined'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'EventUser'), directives: [])
                  ]))
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
  FragmentDefinitionNode(
      name: NameNode(value: 'EventUser'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false)),
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

@JsonSerializable(explicitToJson: true)
class UpdateUserArguments extends JsonSerializable with EquatableMixin {
  UpdateUserArguments({required this.userInput});

  @override
  factory UpdateUserArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserArgumentsFromJson(json);

  late UserFilterInput userInput;

  @override
  List<Object?> get props => [userInput];
  @override
  Map<String, dynamic> toJson() => _$UpdateUserArgumentsToJson(this);
}

final UPDATE_USER_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateUser'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userInput')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserFilterInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateUser'),
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
                    FragmentSpreadNode(
                        name: NameNode(value: 'UserFields'), directives: [])
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
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'UserFields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false)),
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
            name: NameNode(value: 'photoUrls'),
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
            name: NameNode(value: 'bio'),
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
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'muted'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class UpdateUserMutation
    extends GraphQLQuery<UpdateUser$Mutation, UpdateUserArguments> {
  UpdateUserMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_USER_MUTATION_DOCUMENT;

  @override
  final String operationName = 'updateUser';

  @override
  final UpdateUserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdateUser$Mutation parse(Map<String, dynamic> json) =>
      UpdateUser$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdateWannagoArguments extends JsonSerializable with EquatableMixin {
  UpdateWannagoArguments({required this.id, required this.declined});

  @override
  factory UpdateWannagoArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateWannagoArgumentsFromJson(json);

  late int id;

  late bool declined;

  @override
  List<Object?> get props => [id, declined];
  @override
  Map<String, dynamic> toJson() => _$UpdateWannagoArgumentsToJson(this);
}

final UPDATE_WANNAGO_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateWannago'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'declined')),
            type: NamedTypeNode(
                name: NameNode(value: 'Boolean'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateWannago'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id'))),
              ArgumentNode(
                  name: NameNode(value: 'declined'),
                  value: VariableNode(name: NameNode(value: 'declined')))
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

class UpdateWannagoMutation
    extends GraphQLQuery<UpdateWannago$Mutation, UpdateWannagoArguments> {
  UpdateWannagoMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_WANNAGO_MUTATION_DOCUMENT;

  @override
  final String operationName = 'updateWannago';

  @override
  final UpdateWannagoArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdateWannago$Mutation parse(Map<String, dynamic> json) =>
      UpdateWannago$Mutation.fromJson(json);
}
