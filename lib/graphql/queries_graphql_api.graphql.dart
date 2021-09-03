// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:whatado/utils/coercers.dart';
part 'queries_graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Events$Query$Events$Nodes$Creator extends JsonSerializable
    with EquatableMixin {
  Events$Query$Events$Nodes$Creator();

  factory Events$Query$Events$Nodes$Creator.fromJson(
          Map<String, dynamic> json) =>
      _$Events$Query$Events$Nodes$CreatorFromJson(json);

  late int id;

  late String profilePhotoUrl;

  late String username;

  @override
  List<Object?> get props => [id, profilePhotoUrl, username];
  @override
  Map<String, dynamic> toJson() =>
      _$Events$Query$Events$Nodes$CreatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Events$Query$Events$Nodes$Wannago extends JsonSerializable
    with EquatableMixin {
  Events$Query$Events$Nodes$Wannago();

  factory Events$Query$Events$Nodes$Wannago.fromJson(
          Map<String, dynamic> json) =>
      _$Events$Query$Events$Nodes$WannagoFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$Events$Query$Events$Nodes$WannagoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Events$Query$Events$Nodes$Invited extends JsonSerializable
    with EquatableMixin {
  Events$Query$Events$Nodes$Invited();

  factory Events$Query$Events$Nodes$Invited.fromJson(
          Map<String, dynamic> json) =>
      _$Events$Query$Events$Nodes$InvitedFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$Events$Query$Events$Nodes$InvitedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Events$Query$Events$Nodes$RelatedInterests extends JsonSerializable
    with EquatableMixin {
  Events$Query$Events$Nodes$RelatedInterests();

  factory Events$Query$Events$Nodes$RelatedInterests.fromJson(
          Map<String, dynamic> json) =>
      _$Events$Query$Events$Nodes$RelatedInterestsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$Events$Query$Events$Nodes$RelatedInterestsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Events$Query$Events$Nodes extends JsonSerializable with EquatableMixin {
  Events$Query$Events$Nodes();

  factory Events$Query$Events$Nodes.fromJson(Map<String, dynamic> json) =>
      _$Events$Query$Events$NodesFromJson(json);

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

  late Events$Query$Events$Nodes$Creator creator;

  late List<Events$Query$Events$Nodes$Wannago> wannago;

  late List<Events$Query$Events$Nodes$Invited> invited;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime time;

  late String location;

  String? pictureUrl;

  late List<Events$Query$Events$Nodes$RelatedInterests> relatedInterests;

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
  Map<String, dynamic> toJson() => _$Events$Query$Events$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Events$Query$Events$Errors extends JsonSerializable with EquatableMixin {
  Events$Query$Events$Errors();

  factory Events$Query$Events$Errors.fromJson(Map<String, dynamic> json) =>
      _$Events$Query$Events$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() => _$Events$Query$Events$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Events$Query$Events extends JsonSerializable with EquatableMixin {
  Events$Query$Events();

  factory Events$Query$Events.fromJson(Map<String, dynamic> json) =>
      _$Events$Query$EventsFromJson(json);

  bool? ok;

  List<Events$Query$Events$Nodes>? nodes;

  List<Events$Query$Events$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() => _$Events$Query$EventsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Events$Query extends JsonSerializable with EquatableMixin {
  Events$Query();

  factory Events$Query.fromJson(Map<String, dynamic> json) =>
      _$Events$QueryFromJson(json);

  late Events$Query$Events events;

  @override
  List<Object?> get props => [events];
  @override
  Map<String, dynamic> toJson() => _$Events$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EventUserPreview$Query$UsersById$Errors extends JsonSerializable
    with EquatableMixin {
  EventUserPreview$Query$UsersById$Errors();

  factory EventUserPreview$Query$UsersById$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$EventUserPreview$Query$UsersById$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$EventUserPreview$Query$UsersById$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EventUserPreview$Query$UsersById$Nodes extends JsonSerializable
    with EquatableMixin {
  EventUserPreview$Query$UsersById$Nodes();

  factory EventUserPreview$Query$UsersById$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$EventUserPreview$Query$UsersById$NodesFromJson(json);

  late int id;

  late String profilePhotoUrl;

  late String username;

  @override
  List<Object?> get props => [id, profilePhotoUrl, username];
  @override
  Map<String, dynamic> toJson() =>
      _$EventUserPreview$Query$UsersById$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EventUserPreview$Query$UsersById extends JsonSerializable
    with EquatableMixin {
  EventUserPreview$Query$UsersById();

  factory EventUserPreview$Query$UsersById.fromJson(
          Map<String, dynamic> json) =>
      _$EventUserPreview$Query$UsersByIdFromJson(json);

  bool? ok;

  List<EventUserPreview$Query$UsersById$Errors>? errors;

  List<EventUserPreview$Query$UsersById$Nodes>? nodes;

  @override
  List<Object?> get props => [ok, errors, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$EventUserPreview$Query$UsersByIdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EventUserPreview$Query extends JsonSerializable with EquatableMixin {
  EventUserPreview$Query();

  factory EventUserPreview$Query.fromJson(Map<String, dynamic> json) =>
      _$EventUserPreview$QueryFromJson(json);

  late EventUserPreview$Query$UsersById usersById;

  @override
  List<Object?> get props => [usersById];
  @override
  Map<String, dynamic> toJson() => _$EventUserPreview$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ForumsByEventId$Query$ForumsByEventId$Errors extends JsonSerializable
    with EquatableMixin {
  ForumsByEventId$Query$ForumsByEventId$Errors();

  factory ForumsByEventId$Query$ForumsByEventId$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$ForumsByEventId$Query$ForumsByEventId$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$ForumsByEventId$Query$ForumsByEventId$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ForumsByEventId$Query$ForumsByEventId$Nodes$UserNotifications
    extends JsonSerializable with EquatableMixin {
  ForumsByEventId$Query$ForumsByEventId$Nodes$UserNotifications();

  factory ForumsByEventId$Query$ForumsByEventId$Nodes$UserNotifications.fromJson(
          Map<String, dynamic> json) =>
      _$ForumsByEventId$Query$ForumsByEventId$Nodes$UserNotificationsFromJson(
          json);

  late int id;

  late int notifications;

  late bool muted;

  @override
  List<Object?> get props => [id, notifications, muted];
  @override
  Map<String, dynamic> toJson() =>
      _$ForumsByEventId$Query$ForumsByEventId$Nodes$UserNotificationsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ForumsByEventId$Query$ForumsByEventId$Nodes$Event extends JsonSerializable
    with EquatableMixin {
  ForumsByEventId$Query$ForumsByEventId$Nodes$Event();

  factory ForumsByEventId$Query$ForumsByEventId$Nodes$Event.fromJson(
          Map<String, dynamic> json) =>
      _$ForumsByEventId$Query$ForumsByEventId$Nodes$EventFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$ForumsByEventId$Query$ForumsByEventId$Nodes$EventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ForumsByEventId$Query$ForumsByEventId$Nodes extends JsonSerializable
    with EquatableMixin {
  ForumsByEventId$Query$ForumsByEventId$Nodes();

  factory ForumsByEventId$Query$ForumsByEventId$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$ForumsByEventId$Query$ForumsByEventId$NodesFromJson(json);

  late int id;

  late List<ForumsByEventId$Query$ForumsByEventId$Nodes$UserNotifications>
      userNotifications;

  late ForumsByEventId$Query$ForumsByEventId$Nodes$Event event;

  @override
  List<Object?> get props => [id, userNotifications, event];
  @override
  Map<String, dynamic> toJson() =>
      _$ForumsByEventId$Query$ForumsByEventId$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ForumsByEventId$Query$ForumsByEventId extends JsonSerializable
    with EquatableMixin {
  ForumsByEventId$Query$ForumsByEventId();

  factory ForumsByEventId$Query$ForumsByEventId.fromJson(
          Map<String, dynamic> json) =>
      _$ForumsByEventId$Query$ForumsByEventIdFromJson(json);

  bool? ok;

  List<ForumsByEventId$Query$ForumsByEventId$Errors>? errors;

  List<ForumsByEventId$Query$ForumsByEventId$Nodes>? nodes;

  @override
  List<Object?> get props => [ok, errors, nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$ForumsByEventId$Query$ForumsByEventIdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ForumsByEventId$Query extends JsonSerializable with EquatableMixin {
  ForumsByEventId$Query();

  factory ForumsByEventId$Query.fromJson(Map<String, dynamic> json) =>
      _$ForumsByEventId$QueryFromJson(json);

  late ForumsByEventId$Query$ForumsByEventId forumsByEventId;

  @override
  List<Object?> get props => [forumsByEventId];
  @override
  Map<String, dynamic> toJson() => _$ForumsByEventId$QueryToJson(this);
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
class LastChat$Query$LastChat$Errors extends JsonSerializable
    with EquatableMixin {
  LastChat$Query$LastChat$Errors();

  factory LastChat$Query$LastChat$Errors.fromJson(Map<String, dynamic> json) =>
      _$LastChat$Query$LastChat$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() => _$LastChat$Query$LastChat$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LastChat$Query$LastChat$Nodes$Author extends JsonSerializable
    with EquatableMixin {
  LastChat$Query$LastChat$Nodes$Author();

  factory LastChat$Query$LastChat$Nodes$Author.fromJson(
          Map<String, dynamic> json) =>
      _$LastChat$Query$LastChat$Nodes$AuthorFromJson(json);

  late int id;

  late String username;

  late String profilePhotoUrl;

  @override
  List<Object?> get props => [id, username, profilePhotoUrl];
  @override
  Map<String, dynamic> toJson() =>
      _$LastChat$Query$LastChat$Nodes$AuthorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LastChat$Query$LastChat$Nodes extends JsonSerializable
    with EquatableMixin {
  LastChat$Query$LastChat$Nodes();

  factory LastChat$Query$LastChat$Nodes.fromJson(Map<String, dynamic> json) =>
      _$LastChat$Query$LastChat$NodesFromJson(json);

  late int id;

  late String text;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime createdAt;

  late LastChat$Query$LastChat$Nodes$Author author;

  @override
  List<Object?> get props => [id, text, createdAt, author];
  @override
  Map<String, dynamic> toJson() => _$LastChat$Query$LastChat$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LastChat$Query$LastChat extends JsonSerializable with EquatableMixin {
  LastChat$Query$LastChat();

  factory LastChat$Query$LastChat.fromJson(Map<String, dynamic> json) =>
      _$LastChat$Query$LastChatFromJson(json);

  bool? ok;

  List<LastChat$Query$LastChat$Errors>? errors;

  LastChat$Query$LastChat$Nodes? nodes;

  @override
  List<Object?> get props => [ok, errors, nodes];
  @override
  Map<String, dynamic> toJson() => _$LastChat$Query$LastChatToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LastChat$Query extends JsonSerializable with EquatableMixin {
  LastChat$Query();

  factory LastChat$Query.fromJson(Map<String, dynamic> json) =>
      _$LastChat$QueryFromJson(json);

  late LastChat$Query$LastChat lastChat;

  @override
  List<Object?> get props => [lastChat];
  @override
  Map<String, dynamic> toJson() => _$LastChat$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$Me$Nodes$Interests extends JsonSerializable with EquatableMixin {
  Me$Query$Me$Nodes$Interests();

  factory Me$Query$Me$Nodes$Interests.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$Me$Nodes$InterestsFromJson(json);

  late int id;

  late String title;

  @override
  List<Object?> get props => [id, title];
  @override
  Map<String, dynamic> toJson() => _$Me$Query$Me$Nodes$InterestsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$Me$Nodes$MyEvents extends JsonSerializable with EquatableMixin {
  Me$Query$Me$Nodes$MyEvents();

  factory Me$Query$Me$Nodes$MyEvents.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$Me$Nodes$MyEventsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$Me$Query$Me$Nodes$MyEventsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$Me$Nodes$ChatNotifications extends JsonSerializable
    with EquatableMixin {
  Me$Query$Me$Nodes$ChatNotifications();

  factory Me$Query$Me$Nodes$ChatNotifications.fromJson(
          Map<String, dynamic> json) =>
      _$Me$Query$Me$Nodes$ChatNotificationsFromJson(json);

  late int notifications;

  late bool muted;

  @override
  List<Object?> get props => [notifications, muted];
  @override
  Map<String, dynamic> toJson() =>
      _$Me$Query$Me$Nodes$ChatNotificationsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$Me$Nodes extends JsonSerializable with EquatableMixin {
  Me$Query$Me$Nodes();

  factory Me$Query$Me$Nodes.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$Me$NodesFromJson(json);

  late int id;

  late String profilePhotoUrl;

  late String email;

  late bool verified;

  late String username;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime birthday;

  late List<Me$Query$Me$Nodes$Interests> interests;

  late List<Me$Query$Me$Nodes$MyEvents> myEvents;

  late List<Me$Query$Me$Nodes$ChatNotifications> chatNotifications;

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
  Map<String, dynamic> toJson() => _$Me$Query$Me$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$Me$Errors extends JsonSerializable with EquatableMixin {
  Me$Query$Me$Errors();

  factory Me$Query$Me$Errors.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$Me$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() => _$Me$Query$Me$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$Me extends JsonSerializable with EquatableMixin {
  Me$Query$Me();

  factory Me$Query$Me.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$MeFromJson(json);

  bool? ok;

  Me$Query$Me$Nodes? nodes;

  List<Me$Query$Me$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() => _$Me$Query$MeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query extends JsonSerializable with EquatableMixin {
  Me$Query();

  factory Me$Query.fromJson(Map<String, dynamic> json) =>
      _$Me$QueryFromJson(json);

  late Me$Query$Me me;

  @override
  List<Object?> get props => [me];
  @override
  Map<String, dynamic> toJson() => _$Me$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MyEvents$Query$MyEvents$Nodes$Creator extends JsonSerializable
    with EquatableMixin {
  MyEvents$Query$MyEvents$Nodes$Creator();

  factory MyEvents$Query$MyEvents$Nodes$Creator.fromJson(
          Map<String, dynamic> json) =>
      _$MyEvents$Query$MyEvents$Nodes$CreatorFromJson(json);

  late int id;

  late String profilePhotoUrl;

  late String username;

  @override
  List<Object?> get props => [id, profilePhotoUrl, username];
  @override
  Map<String, dynamic> toJson() =>
      _$MyEvents$Query$MyEvents$Nodes$CreatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MyEvents$Query$MyEvents$Nodes$Invited extends JsonSerializable
    with EquatableMixin {
  MyEvents$Query$MyEvents$Nodes$Invited();

  factory MyEvents$Query$MyEvents$Nodes$Invited.fromJson(
          Map<String, dynamic> json) =>
      _$MyEvents$Query$MyEvents$Nodes$InvitedFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$MyEvents$Query$MyEvents$Nodes$InvitedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MyEvents$Query$MyEvents$Nodes$RelatedInterests extends JsonSerializable
    with EquatableMixin {
  MyEvents$Query$MyEvents$Nodes$RelatedInterests();

  factory MyEvents$Query$MyEvents$Nodes$RelatedInterests.fromJson(
          Map<String, dynamic> json) =>
      _$MyEvents$Query$MyEvents$Nodes$RelatedInterestsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$MyEvents$Query$MyEvents$Nodes$RelatedInterestsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MyEvents$Query$MyEvents$Nodes extends JsonSerializable
    with EquatableMixin {
  MyEvents$Query$MyEvents$Nodes();

  factory MyEvents$Query$MyEvents$Nodes.fromJson(Map<String, dynamic> json) =>
      _$MyEvents$Query$MyEvents$NodesFromJson(json);

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

  late MyEvents$Query$MyEvents$Nodes$Creator creator;

  late List<MyEvents$Query$MyEvents$Nodes$Invited> invited;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime time;

  late String location;

  String? pictureUrl;

  late List<MyEvents$Query$MyEvents$Nodes$RelatedInterests> relatedInterests;

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
  Map<String, dynamic> toJson() => _$MyEvents$Query$MyEvents$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MyEvents$Query$MyEvents$Errors extends JsonSerializable
    with EquatableMixin {
  MyEvents$Query$MyEvents$Errors();

  factory MyEvents$Query$MyEvents$Errors.fromJson(Map<String, dynamic> json) =>
      _$MyEvents$Query$MyEvents$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() => _$MyEvents$Query$MyEvents$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MyEvents$Query$MyEvents extends JsonSerializable with EquatableMixin {
  MyEvents$Query$MyEvents();

  factory MyEvents$Query$MyEvents.fromJson(Map<String, dynamic> json) =>
      _$MyEvents$Query$MyEventsFromJson(json);

  bool? ok;

  List<MyEvents$Query$MyEvents$Nodes>? nodes;

  List<MyEvents$Query$MyEvents$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() => _$MyEvents$Query$MyEventsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MyEvents$Query extends JsonSerializable with EquatableMixin {
  MyEvents$Query();

  factory MyEvents$Query.fromJson(Map<String, dynamic> json) =>
      _$MyEvents$QueryFromJson(json);

  late MyEvents$Query$MyEvents myEvents;

  @override
  List<Object?> get props => [myEvents];
  @override
  Map<String, dynamic> toJson() => _$MyEvents$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chats$Query$Chats$Nodes$Author extends JsonSerializable
    with EquatableMixin {
  Chats$Query$Chats$Nodes$Author();

  factory Chats$Query$Chats$Nodes$Author.fromJson(Map<String, dynamic> json) =>
      _$Chats$Query$Chats$Nodes$AuthorFromJson(json);

  late int id;

  late String profilePhotoUrl;

  late String username;

  @override
  List<Object?> get props => [id, profilePhotoUrl, username];
  @override
  Map<String, dynamic> toJson() => _$Chats$Query$Chats$Nodes$AuthorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chats$Query$Chats$Nodes extends JsonSerializable with EquatableMixin {
  Chats$Query$Chats$Nodes();

  factory Chats$Query$Chats$Nodes.fromJson(Map<String, dynamic> json) =>
      _$Chats$Query$Chats$NodesFromJson(json);

  late int id;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime createdAt;

  late String text;

  late Chats$Query$Chats$Nodes$Author author;

  @override
  List<Object?> get props => [id, createdAt, text, author];
  @override
  Map<String, dynamic> toJson() => _$Chats$Query$Chats$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chats$Query$Chats$Errors extends JsonSerializable with EquatableMixin {
  Chats$Query$Chats$Errors();

  factory Chats$Query$Chats$Errors.fromJson(Map<String, dynamic> json) =>
      _$Chats$Query$Chats$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() => _$Chats$Query$Chats$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chats$Query$Chats extends JsonSerializable with EquatableMixin {
  Chats$Query$Chats();

  factory Chats$Query$Chats.fromJson(Map<String, dynamic> json) =>
      _$Chats$Query$ChatsFromJson(json);

  bool? ok;

  List<Chats$Query$Chats$Nodes>? nodes;

  List<Chats$Query$Chats$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() => _$Chats$Query$ChatsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chats$Query extends JsonSerializable with EquatableMixin {
  Chats$Query();

  factory Chats$Query.fromJson(Map<String, dynamic> json) =>
      _$Chats$QueryFromJson(json);

  late Chats$Query$Chats chats;

  @override
  List<Object?> get props => [chats];
  @override
  Map<String, dynamic> toJson() => _$Chats$QueryToJson(this);
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

@JsonSerializable(explicitToJson: true)
class EventUserPreviewArguments extends JsonSerializable with EquatableMixin {
  EventUserPreviewArguments({required this.userIds});

  @override
  factory EventUserPreviewArguments.fromJson(Map<String, dynamic> json) =>
      _$EventUserPreviewArgumentsFromJson(json);

  late List<int> userIds;

  @override
  List<Object?> get props => [userIds];
  @override
  Map<String, dynamic> toJson() => _$EventUserPreviewArgumentsToJson(this);
}

final EVENT_USER_PREVIEW_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'eventUserPreview'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userIds')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'Int'), isNonNull: true),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'usersById'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'ids'),
                  value: VariableNode(name: NameNode(value: 'userIds')))
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
                  ])),
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
                        name: NameNode(value: 'username'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class EventUserPreviewQuery
    extends GraphQLQuery<EventUserPreview$Query, EventUserPreviewArguments> {
  EventUserPreviewQuery({required this.variables});

  @override
  final DocumentNode document = EVENT_USER_PREVIEW_QUERY_DOCUMENT;

  @override
  final String operationName = 'eventUserPreview';

  @override
  final EventUserPreviewArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  EventUserPreview$Query parse(Map<String, dynamic> json) =>
      EventUserPreview$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ForumsByEventIdArguments extends JsonSerializable with EquatableMixin {
  ForumsByEventIdArguments({required this.eventIds});

  @override
  factory ForumsByEventIdArguments.fromJson(Map<String, dynamic> json) =>
      _$ForumsByEventIdArgumentsFromJson(json);

  late List<int> eventIds;

  @override
  List<Object?> get props => [eventIds];
  @override
  Map<String, dynamic> toJson() => _$ForumsByEventIdArgumentsToJson(this);
}

final FORUMS_BY_EVENT_ID_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'forumsByEventId'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'eventIds')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'Int'), isNonNull: true),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'forumsByEventId'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'ids'),
                  value: VariableNode(name: NameNode(value: 'eventIds')))
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
                  ])),
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
                        name: NameNode(value: 'userNotifications'),
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
                        ])),
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
                  ]))
            ]))
      ]))
]);

class ForumsByEventIdQuery
    extends GraphQLQuery<ForumsByEventId$Query, ForumsByEventIdArguments> {
  ForumsByEventIdQuery({required this.variables});

  @override
  final DocumentNode document = FORUMS_BY_EVENT_ID_QUERY_DOCUMENT;

  @override
  final String operationName = 'forumsByEventId';

  @override
  final ForumsByEventIdArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  ForumsByEventId$Query parse(Map<String, dynamic> json) =>
      ForumsByEventId$Query.fromJson(json);
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

@JsonSerializable(explicitToJson: true)
class LastChatArguments extends JsonSerializable with EquatableMixin {
  LastChatArguments({required this.forumId});

  @override
  factory LastChatArguments.fromJson(Map<String, dynamic> json) =>
      _$LastChatArgumentsFromJson(json);

  late int forumId;

  @override
  List<Object?> get props => [forumId];
  @override
  Map<String, dynamic> toJson() => _$LastChatArgumentsToJson(this);
}

final LAST_CHAT_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'lastChat'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'forumId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'lastChat'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'forumId'),
                  value: VariableNode(name: NameNode(value: 'forumId')))
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
                  ])),
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
                  ]))
            ]))
      ]))
]);

class LastChatQuery extends GraphQLQuery<LastChat$Query, LastChatArguments> {
  LastChatQuery({required this.variables});

  @override
  final DocumentNode document = LAST_CHAT_QUERY_DOCUMENT;

  @override
  final String operationName = 'lastChat';

  @override
  final LastChatArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  LastChat$Query parse(Map<String, dynamic> json) =>
      LastChat$Query.fromJson(json);
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
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'muted'),
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

final MY_EVENTS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'myEvents'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'myEvents'),
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

class MyEventsQuery extends GraphQLQuery<MyEvents$Query, JsonSerializable> {
  MyEventsQuery();

  @override
  final DocumentNode document = MY_EVENTS_QUERY_DOCUMENT;

  @override
  final String operationName = 'myEvents';

  @override
  List<Object?> get props => [document, operationName];
  @override
  MyEvents$Query parse(Map<String, dynamic> json) =>
      MyEvents$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ChatsArguments extends JsonSerializable with EquatableMixin {
  ChatsArguments({required this.forumId});

  @override
  factory ChatsArguments.fromJson(Map<String, dynamic> json) =>
      _$ChatsArgumentsFromJson(json);

  late int forumId;

  @override
  List<Object?> get props => [forumId];
  @override
  Map<String, dynamic> toJson() => _$ChatsArgumentsToJson(this);
}

final CHATS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'chats'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'forumId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'chats'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'forumId'),
                  value: VariableNode(name: NameNode(value: 'forumId')))
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
                        name: NameNode(value: 'text'),
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

class ChatsQuery extends GraphQLQuery<Chats$Query, ChatsArguments> {
  ChatsQuery({required this.variables});

  @override
  final DocumentNode document = CHATS_QUERY_DOCUMENT;

  @override
  final String operationName = 'chats';

  @override
  final ChatsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Chats$Query parse(Map<String, dynamic> json) => Chats$Query.fromJson(json);
}
