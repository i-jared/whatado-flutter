// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:whatado/utils/coercers.dart';
part 'queries_graphql_api.graphql.g.dart';

mixin EventUserMixin {
  late int id;
  late String name;
  late String photoUrls;
  late String bio;
  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime birthday;
}
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
  late int filterMinAge;
  late int filterMaxAge;
}
mixin UserFieldsMixin {
  late int id;
  late String photoUrls;
  late String phone;
  late bool verified;
  late String name;
  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime birthday;
  late String bio;
  late List<UserFieldsMixin$BlockedUsers> blockedUsers;
  late List<UserFieldsMixin$Friends> friends;
  late List<UserFieldsMixin$RequestedFriends> requestedFriends;
  late List<UserFieldsMixin$FriendRequests> friendRequests;
  late List<UserFieldsMixin$Interests> interests;
  late List<UserFieldsMixin$MyEvents> myEvents;
  late List<UserFieldsMixin$ChatNotifications> chatNotifications;
}
mixin ForumFieldsMixin {
  late int id;
  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime updatedAt;
  late List<ForumFieldsMixin$UserNotifications> userNotifications;
  late List<ForumFieldsMixin$Chats> chats;
  late ForumFieldsMixin$Event event;
}

@JsonSerializable(explicitToJson: true)
class Chats$Query$Chats$Nodes$Author extends JsonSerializable
    with EquatableMixin, EventUserMixin {
  Chats$Query$Chats$Nodes$Author();

  factory Chats$Query$Chats$Nodes$Author.fromJson(Map<String, dynamic> json) =>
      _$Chats$Query$Chats$Nodes$AuthorFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() => _$Chats$Query$Chats$Nodes$AuthorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chats$Query$Chats$Nodes$Survey$Answers$Votes extends JsonSerializable
    with EquatableMixin, EventUserMixin {
  Chats$Query$Chats$Nodes$Survey$Answers$Votes();

  factory Chats$Query$Chats$Nodes$Survey$Answers$Votes.fromJson(
          Map<String, dynamic> json) =>
      _$Chats$Query$Chats$Nodes$Survey$Answers$VotesFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() =>
      _$Chats$Query$Chats$Nodes$Survey$Answers$VotesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chats$Query$Chats$Nodes$Survey$Answers extends JsonSerializable
    with EquatableMixin {
  Chats$Query$Chats$Nodes$Survey$Answers();

  factory Chats$Query$Chats$Nodes$Survey$Answers.fromJson(
          Map<String, dynamic> json) =>
      _$Chats$Query$Chats$Nodes$Survey$AnswersFromJson(json);

  late int id;

  late String text;

  late List<Chats$Query$Chats$Nodes$Survey$Answers$Votes> votes;

  @override
  List<Object?> get props => [id, text, votes];
  @override
  Map<String, dynamic> toJson() =>
      _$Chats$Query$Chats$Nodes$Survey$AnswersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chats$Query$Chats$Nodes$Survey extends JsonSerializable
    with EquatableMixin {
  Chats$Query$Chats$Nodes$Survey();

  factory Chats$Query$Chats$Nodes$Survey.fromJson(Map<String, dynamic> json) =>
      _$Chats$Query$Chats$Nodes$SurveyFromJson(json);

  late int id;

  late String question;

  late List<Chats$Query$Chats$Nodes$Survey$Answers> answers;

  @override
  List<Object?> get props => [id, question, answers];
  @override
  Map<String, dynamic> toJson() => _$Chats$Query$Chats$Nodes$SurveyToJson(this);
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

  Chats$Query$Chats$Nodes$Survey? survey;

  @override
  List<Object?> get props => [id, createdAt, text, author, survey];
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

@JsonSerializable(explicitToJson: true)
class Event$Query$Event$Nodes extends JsonSerializable
    with EquatableMixin, EventFieldsMixin {
  Event$Query$Event$Nodes();

  factory Event$Query$Event$Nodes.fromJson(Map<String, dynamic> json) =>
      _$Event$Query$Event$NodesFromJson(json);

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
        filterMinAge,
        filterMaxAge
      ];
  @override
  Map<String, dynamic> toJson() => _$Event$Query$Event$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Event$Query$Event$Errors extends JsonSerializable with EquatableMixin {
  Event$Query$Event$Errors();

  factory Event$Query$Event$Errors.fromJson(Map<String, dynamic> json) =>
      _$Event$Query$Event$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() => _$Event$Query$Event$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Event$Query$Event extends JsonSerializable with EquatableMixin {
  Event$Query$Event();

  factory Event$Query$Event.fromJson(Map<String, dynamic> json) =>
      _$Event$Query$EventFromJson(json);

  bool? ok;

  Event$Query$Event$Nodes? nodes;

  List<Event$Query$Event$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() => _$Event$Query$EventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Event$Query extends JsonSerializable with EquatableMixin {
  Event$Query();

  factory Event$Query.fromJson(Map<String, dynamic> json) =>
      _$Event$QueryFromJson(json);

  late Event$Query$Event event;

  @override
  List<Object?> get props => [event];
  @override
  Map<String, dynamic> toJson() => _$Event$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EventFieldsMixin$Creator extends JsonSerializable
    with EquatableMixin, EventUserMixin {
  EventFieldsMixin$Creator();

  factory EventFieldsMixin$Creator.fromJson(Map<String, dynamic> json) =>
      _$EventFieldsMixin$CreatorFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
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
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
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
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
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
class Events$Query$Events$Nodes extends JsonSerializable
    with EquatableMixin, EventFieldsMixin {
  Events$Query$Events$Nodes();

  factory Events$Query$Events$Nodes.fromJson(Map<String, dynamic> json) =>
      _$Events$Query$Events$NodesFromJson(json);

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
        filterMinAge,
        filterMaxAge
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
class DateRangeInput extends JsonSerializable with EquatableMixin {
  DateRangeInput({required this.endDate, required this.startDate});

  factory DateRangeInput.fromJson(Map<String, dynamic> json) =>
      _$DateRangeInputFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime endDate;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime startDate;

  @override
  List<Object?> get props => [endDate, startDate];
  @override
  Map<String, dynamic> toJson() => _$DateRangeInputToJson(this);
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
    with EquatableMixin, EventUserMixin {
  EventUserPreview$Query$UsersById$Nodes();

  factory EventUserPreview$Query$UsersById$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$EventUserPreview$Query$UsersById$NodesFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
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
class FlaggedChats$Query$FlaggedChats$Nodes$Author extends JsonSerializable
    with EquatableMixin, EventUserMixin {
  FlaggedChats$Query$FlaggedChats$Nodes$Author();

  factory FlaggedChats$Query$FlaggedChats$Nodes$Author.fromJson(
          Map<String, dynamic> json) =>
      _$FlaggedChats$Query$FlaggedChats$Nodes$AuthorFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() =>
      _$FlaggedChats$Query$FlaggedChats$Nodes$AuthorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlaggedChats$Query$FlaggedChats$Nodes extends JsonSerializable
    with EquatableMixin {
  FlaggedChats$Query$FlaggedChats$Nodes();

  factory FlaggedChats$Query$FlaggedChats$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$FlaggedChats$Query$FlaggedChats$NodesFromJson(json);

  late int id;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime createdAt;

  late String text;

  late FlaggedChats$Query$FlaggedChats$Nodes$Author author;

  @override
  List<Object?> get props => [id, createdAt, text, author];
  @override
  Map<String, dynamic> toJson() =>
      _$FlaggedChats$Query$FlaggedChats$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlaggedChats$Query$FlaggedChats$Errors extends JsonSerializable
    with EquatableMixin {
  FlaggedChats$Query$FlaggedChats$Errors();

  factory FlaggedChats$Query$FlaggedChats$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$FlaggedChats$Query$FlaggedChats$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$FlaggedChats$Query$FlaggedChats$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlaggedChats$Query$FlaggedChats extends JsonSerializable
    with EquatableMixin {
  FlaggedChats$Query$FlaggedChats();

  factory FlaggedChats$Query$FlaggedChats.fromJson(Map<String, dynamic> json) =>
      _$FlaggedChats$Query$FlaggedChatsFromJson(json);

  bool? ok;

  List<FlaggedChats$Query$FlaggedChats$Nodes>? nodes;

  List<FlaggedChats$Query$FlaggedChats$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$FlaggedChats$Query$FlaggedChatsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlaggedChats$Query extends JsonSerializable with EquatableMixin {
  FlaggedChats$Query();

  factory FlaggedChats$Query.fromJson(Map<String, dynamic> json) =>
      _$FlaggedChats$QueryFromJson(json);

  late FlaggedChats$Query$FlaggedChats flaggedChats;

  @override
  List<Object?> get props => [flaggedChats];
  @override
  Map<String, dynamic> toJson() => _$FlaggedChats$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlaggedEvents$Query$FlaggedEvents$Nodes extends JsonSerializable
    with EquatableMixin, EventFieldsMixin {
  FlaggedEvents$Query$FlaggedEvents$Nodes();

  factory FlaggedEvents$Query$FlaggedEvents$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$FlaggedEvents$Query$FlaggedEvents$NodesFromJson(json);

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
        filterMinAge,
        filterMaxAge
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$FlaggedEvents$Query$FlaggedEvents$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlaggedEvents$Query$FlaggedEvents$Errors extends JsonSerializable
    with EquatableMixin {
  FlaggedEvents$Query$FlaggedEvents$Errors();

  factory FlaggedEvents$Query$FlaggedEvents$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$FlaggedEvents$Query$FlaggedEvents$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$FlaggedEvents$Query$FlaggedEvents$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlaggedEvents$Query$FlaggedEvents extends JsonSerializable
    with EquatableMixin {
  FlaggedEvents$Query$FlaggedEvents();

  factory FlaggedEvents$Query$FlaggedEvents.fromJson(
          Map<String, dynamic> json) =>
      _$FlaggedEvents$Query$FlaggedEventsFromJson(json);

  bool? ok;

  List<FlaggedEvents$Query$FlaggedEvents$Nodes>? nodes;

  List<FlaggedEvents$Query$FlaggedEvents$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$FlaggedEvents$Query$FlaggedEventsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlaggedEvents$Query extends JsonSerializable with EquatableMixin {
  FlaggedEvents$Query();

  factory FlaggedEvents$Query.fromJson(Map<String, dynamic> json) =>
      _$FlaggedEvents$QueryFromJson(json);

  late FlaggedEvents$Query$FlaggedEvents flaggedEvents;

  @override
  List<Object?> get props => [flaggedEvents];
  @override
  Map<String, dynamic> toJson() => _$FlaggedEvents$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlaggedUsers$Query$FlaggedUsers$Nodes extends JsonSerializable
    with EquatableMixin, UserFieldsMixin {
  FlaggedUsers$Query$FlaggedUsers$Nodes();

  factory FlaggedUsers$Query$FlaggedUsers$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$FlaggedUsers$Query$FlaggedUsers$NodesFromJson(json);

  @override
  List<Object?> get props => [
        id,
        photoUrls,
        phone,
        verified,
        name,
        birthday,
        bio,
        blockedUsers,
        friends,
        requestedFriends,
        friendRequests,
        interests,
        myEvents,
        chatNotifications
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$FlaggedUsers$Query$FlaggedUsers$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlaggedUsers$Query$FlaggedUsers$Errors extends JsonSerializable
    with EquatableMixin {
  FlaggedUsers$Query$FlaggedUsers$Errors();

  factory FlaggedUsers$Query$FlaggedUsers$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$FlaggedUsers$Query$FlaggedUsers$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$FlaggedUsers$Query$FlaggedUsers$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlaggedUsers$Query$FlaggedUsers extends JsonSerializable
    with EquatableMixin {
  FlaggedUsers$Query$FlaggedUsers();

  factory FlaggedUsers$Query$FlaggedUsers.fromJson(Map<String, dynamic> json) =>
      _$FlaggedUsers$Query$FlaggedUsersFromJson(json);

  bool? ok;

  List<FlaggedUsers$Query$FlaggedUsers$Nodes>? nodes;

  List<FlaggedUsers$Query$FlaggedUsers$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$FlaggedUsers$Query$FlaggedUsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlaggedUsers$Query extends JsonSerializable with EquatableMixin {
  FlaggedUsers$Query();

  factory FlaggedUsers$Query.fromJson(Map<String, dynamic> json) =>
      _$FlaggedUsers$QueryFromJson(json);

  late FlaggedUsers$Query$FlaggedUsers flaggedUsers;

  @override
  List<Object?> get props => [flaggedUsers];
  @override
  Map<String, dynamic> toJson() => _$FlaggedUsers$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserFieldsMixin$BlockedUsers extends JsonSerializable
    with EquatableMixin, EventUserMixin {
  UserFieldsMixin$BlockedUsers();

  factory UserFieldsMixin$BlockedUsers.fromJson(Map<String, dynamic> json) =>
      _$UserFieldsMixin$BlockedUsersFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() => _$UserFieldsMixin$BlockedUsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserFieldsMixin$Friends extends JsonSerializable
    with EquatableMixin, EventUserMixin {
  UserFieldsMixin$Friends();

  factory UserFieldsMixin$Friends.fromJson(Map<String, dynamic> json) =>
      _$UserFieldsMixin$FriendsFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() => _$UserFieldsMixin$FriendsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserFieldsMixin$RequestedFriends extends JsonSerializable
    with EquatableMixin, EventUserMixin {
  UserFieldsMixin$RequestedFriends();

  factory UserFieldsMixin$RequestedFriends.fromJson(
          Map<String, dynamic> json) =>
      _$UserFieldsMixin$RequestedFriendsFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() =>
      _$UserFieldsMixin$RequestedFriendsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserFieldsMixin$FriendRequests extends JsonSerializable
    with EquatableMixin, EventUserMixin {
  UserFieldsMixin$FriendRequests();

  factory UserFieldsMixin$FriendRequests.fromJson(Map<String, dynamic> json) =>
      _$UserFieldsMixin$FriendRequestsFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() => _$UserFieldsMixin$FriendRequestsToJson(this);
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

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime lastAccessed;

  late bool muted;

  @override
  List<Object?> get props => [lastAccessed, muted];
  @override
  Map<String, dynamic> toJson() =>
      _$UserFieldsMixin$ChatNotificationsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Forum$Query$Forum$Errors extends JsonSerializable with EquatableMixin {
  Forum$Query$Forum$Errors();

  factory Forum$Query$Forum$Errors.fromJson(Map<String, dynamic> json) =>
      _$Forum$Query$Forum$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() => _$Forum$Query$Forum$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Forum$Query$Forum$Nodes extends JsonSerializable
    with EquatableMixin, ForumFieldsMixin {
  Forum$Query$Forum$Nodes();

  factory Forum$Query$Forum$Nodes.fromJson(Map<String, dynamic> json) =>
      _$Forum$Query$Forum$NodesFromJson(json);

  @override
  List<Object?> get props => [id, updatedAt, userNotifications, chats, event];
  @override
  Map<String, dynamic> toJson() => _$Forum$Query$Forum$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Forum$Query$Forum extends JsonSerializable with EquatableMixin {
  Forum$Query$Forum();

  factory Forum$Query$Forum.fromJson(Map<String, dynamic> json) =>
      _$Forum$Query$ForumFromJson(json);

  bool? ok;

  List<Forum$Query$Forum$Errors>? errors;

  Forum$Query$Forum$Nodes? nodes;

  @override
  List<Object?> get props => [ok, errors, nodes];
  @override
  Map<String, dynamic> toJson() => _$Forum$Query$ForumToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Forum$Query extends JsonSerializable with EquatableMixin {
  Forum$Query();

  factory Forum$Query.fromJson(Map<String, dynamic> json) =>
      _$Forum$QueryFromJson(json);

  late Forum$Query$Forum forum;

  @override
  List<Object?> get props => [forum];
  @override
  Map<String, dynamic> toJson() => _$Forum$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ForumFieldsMixin$UserNotifications extends JsonSerializable
    with EquatableMixin {
  ForumFieldsMixin$UserNotifications();

  factory ForumFieldsMixin$UserNotifications.fromJson(
          Map<String, dynamic> json) =>
      _$ForumFieldsMixin$UserNotificationsFromJson(json);

  late int id;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime lastAccessed;

  late bool muted;

  @override
  List<Object?> get props => [id, lastAccessed, muted];
  @override
  Map<String, dynamic> toJson() =>
      _$ForumFieldsMixin$UserNotificationsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ForumFieldsMixin$Chats extends JsonSerializable with EquatableMixin {
  ForumFieldsMixin$Chats();

  factory ForumFieldsMixin$Chats.fromJson(Map<String, dynamic> json) =>
      _$ForumFieldsMixin$ChatsFromJson(json);

  late int id;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime createdAt;

  late String text;

  @override
  List<Object?> get props => [id, createdAt, text];
  @override
  Map<String, dynamic> toJson() => _$ForumFieldsMixin$ChatsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ForumFieldsMixin$Event extends JsonSerializable with EquatableMixin {
  ForumFieldsMixin$Event();

  factory ForumFieldsMixin$Event.fromJson(Map<String, dynamic> json) =>
      _$ForumFieldsMixin$EventFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$ForumFieldsMixin$EventToJson(this);
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
class ForumsByEventId$Query$ForumsByEventId$Nodes extends JsonSerializable
    with EquatableMixin, ForumFieldsMixin {
  ForumsByEventId$Query$ForumsByEventId$Nodes();

  factory ForumsByEventId$Query$ForumsByEventId$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$ForumsByEventId$Query$ForumsByEventId$NodesFromJson(json);

  @override
  List<Object?> get props => [id, updatedAt, userNotifications, chats, event];
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
class FriendsById$Query$FriendsById$Errors extends JsonSerializable
    with EquatableMixin {
  FriendsById$Query$FriendsById$Errors();

  factory FriendsById$Query$FriendsById$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$FriendsById$Query$FriendsById$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$FriendsById$Query$FriendsById$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FriendsById$Query$FriendsById$Nodes extends JsonSerializable
    with EquatableMixin, EventUserMixin {
  FriendsById$Query$FriendsById$Nodes();

  factory FriendsById$Query$FriendsById$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$FriendsById$Query$FriendsById$NodesFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() =>
      _$FriendsById$Query$FriendsById$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FriendsById$Query$FriendsById extends JsonSerializable
    with EquatableMixin {
  FriendsById$Query$FriendsById();

  factory FriendsById$Query$FriendsById.fromJson(Map<String, dynamic> json) =>
      _$FriendsById$Query$FriendsByIdFromJson(json);

  bool? ok;

  List<FriendsById$Query$FriendsById$Errors>? errors;

  List<FriendsById$Query$FriendsById$Nodes>? nodes;

  @override
  List<Object?> get props => [ok, errors, nodes];
  @override
  Map<String, dynamic> toJson() => _$FriendsById$Query$FriendsByIdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FriendsById$Query extends JsonSerializable with EquatableMixin {
  FriendsById$Query();

  factory FriendsById$Query.fromJson(Map<String, dynamic> json) =>
      _$FriendsById$QueryFromJson(json);

  late FriendsById$Query$FriendsById friendsById;

  @override
  List<Object?> get props => [friendsById];
  @override
  Map<String, dynamic> toJson() => _$FriendsById$QueryToJson(this);
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
    with EquatableMixin, EventUserMixin {
  LastChat$Query$LastChat$Nodes$Author();

  factory LastChat$Query$LastChat$Nodes$Author.fromJson(
          Map<String, dynamic> json) =>
      _$LastChat$Query$LastChat$Nodes$AuthorFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
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
class Me$Query$Me$Nodes extends JsonSerializable
    with EquatableMixin, UserFieldsMixin {
  Me$Query$Me$Nodes();

  factory Me$Query$Me$Nodes.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$Me$NodesFromJson(json);

  @override
  List<Object?> get props => [
        id,
        photoUrls,
        phone,
        verified,
        name,
        birthday,
        bio,
        blockedUsers,
        friends,
        requestedFriends,
        friendRequests,
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
class MyEvents$Query$MyEvents$Nodes extends JsonSerializable
    with EquatableMixin, EventFieldsMixin {
  MyEvents$Query$MyEvents$Nodes();

  factory MyEvents$Query$MyEvents$Nodes.fromJson(Map<String, dynamic> json) =>
      _$MyEvents$Query$MyEvents$NodesFromJson(json);

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
        filterMinAge,
        filterMaxAge
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
class PopularInterests$Query$PopularInterests$Nodes extends JsonSerializable
    with EquatableMixin {
  PopularInterests$Query$PopularInterests$Nodes();

  factory PopularInterests$Query$PopularInterests$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$PopularInterests$Query$PopularInterests$NodesFromJson(json);

  late int id;

  late String title;

  @override
  List<Object?> get props => [id, title];
  @override
  Map<String, dynamic> toJson() =>
      _$PopularInterests$Query$PopularInterests$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PopularInterests$Query$PopularInterests$Errors extends JsonSerializable
    with EquatableMixin {
  PopularInterests$Query$PopularInterests$Errors();

  factory PopularInterests$Query$PopularInterests$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$PopularInterests$Query$PopularInterests$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$PopularInterests$Query$PopularInterests$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PopularInterests$Query$PopularInterests extends JsonSerializable
    with EquatableMixin {
  PopularInterests$Query$PopularInterests();

  factory PopularInterests$Query$PopularInterests.fromJson(
          Map<String, dynamic> json) =>
      _$PopularInterests$Query$PopularInterestsFromJson(json);

  bool? ok;

  List<PopularInterests$Query$PopularInterests$Nodes>? nodes;

  List<PopularInterests$Query$PopularInterests$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$PopularInterests$Query$PopularInterestsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PopularInterests$Query extends JsonSerializable with EquatableMixin {
  PopularInterests$Query();

  factory PopularInterests$Query.fromJson(Map<String, dynamic> json) =>
      _$PopularInterests$QueryFromJson(json);

  late PopularInterests$Query$PopularInterests popularInterests;

  @override
  List<Object?> get props => [popularInterests];
  @override
  Map<String, dynamic> toJson() => _$PopularInterests$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchInterests$Query$SearchInterests$Nodes extends JsonSerializable
    with EquatableMixin {
  SearchInterests$Query$SearchInterests$Nodes();

  factory SearchInterests$Query$SearchInterests$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$SearchInterests$Query$SearchInterests$NodesFromJson(json);

  late int id;

  late String title;

  @override
  List<Object?> get props => [id, title];
  @override
  Map<String, dynamic> toJson() =>
      _$SearchInterests$Query$SearchInterests$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchInterests$Query$SearchInterests$Errors extends JsonSerializable
    with EquatableMixin {
  SearchInterests$Query$SearchInterests$Errors();

  factory SearchInterests$Query$SearchInterests$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$SearchInterests$Query$SearchInterests$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$SearchInterests$Query$SearchInterests$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchInterests$Query$SearchInterests extends JsonSerializable
    with EquatableMixin {
  SearchInterests$Query$SearchInterests();

  factory SearchInterests$Query$SearchInterests.fromJson(
          Map<String, dynamic> json) =>
      _$SearchInterests$Query$SearchInterestsFromJson(json);

  bool? ok;

  List<SearchInterests$Query$SearchInterests$Nodes>? nodes;

  List<SearchInterests$Query$SearchInterests$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$SearchInterests$Query$SearchInterestsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchInterests$Query extends JsonSerializable with EquatableMixin {
  SearchInterests$Query();

  factory SearchInterests$Query.fromJson(Map<String, dynamic> json) =>
      _$SearchInterests$QueryFromJson(json);

  late SearchInterests$Query$SearchInterests searchInterests;

  @override
  List<Object?> get props => [searchInterests];
  @override
  Map<String, dynamic> toJson() => _$SearchInterests$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchUsers$Query$SearchUsers$Nodes extends JsonSerializable
    with EquatableMixin, EventUserMixin {
  SearchUsers$Query$SearchUsers$Nodes();

  factory SearchUsers$Query$SearchUsers$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$SearchUsers$Query$SearchUsers$NodesFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() =>
      _$SearchUsers$Query$SearchUsers$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchUsers$Query$SearchUsers$Errors extends JsonSerializable
    with EquatableMixin {
  SearchUsers$Query$SearchUsers$Errors();

  factory SearchUsers$Query$SearchUsers$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$SearchUsers$Query$SearchUsers$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$SearchUsers$Query$SearchUsers$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchUsers$Query$SearchUsers extends JsonSerializable
    with EquatableMixin {
  SearchUsers$Query$SearchUsers();

  factory SearchUsers$Query$SearchUsers.fromJson(Map<String, dynamic> json) =>
      _$SearchUsers$Query$SearchUsersFromJson(json);

  bool? ok;

  List<SearchUsers$Query$SearchUsers$Nodes>? nodes;

  List<SearchUsers$Query$SearchUsers$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() => _$SearchUsers$Query$SearchUsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchUsers$Query extends JsonSerializable with EquatableMixin {
  SearchUsers$Query();

  factory SearchUsers$Query.fromJson(Map<String, dynamic> json) =>
      _$SearchUsers$QueryFromJson(json);

  late SearchUsers$Query$SearchUsers searchUsers;

  @override
  List<Object?> get props => [searchUsers];
  @override
  Map<String, dynamic> toJson() => _$SearchUsers$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$User$Nodes extends JsonSerializable
    with EquatableMixin, EventUserMixin {
  User$Query$User$Nodes();

  factory User$Query$User$Nodes.fromJson(Map<String, dynamic> json) =>
      _$User$Query$User$NodesFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() => _$User$Query$User$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$User$Errors extends JsonSerializable with EquatableMixin {
  User$Query$User$Errors();

  factory User$Query$User$Errors.fromJson(Map<String, dynamic> json) =>
      _$User$Query$User$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() => _$User$Query$User$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$User extends JsonSerializable with EquatableMixin {
  User$Query$User();

  factory User$Query$User.fromJson(Map<String, dynamic> json) =>
      _$User$Query$UserFromJson(json);

  bool? ok;

  User$Query$User$Nodes? nodes;

  List<User$Query$User$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() => _$User$Query$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query extends JsonSerializable with EquatableMixin {
  User$Query();

  factory User$Query.fromJson(Map<String, dynamic> json) =>
      _$User$QueryFromJson(json);

  late User$Query$User user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() => _$User$QueryToJson(this);
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
enum SortType {
  @JsonValue('NEWEST')
  newest,
  @JsonValue('SOONEST')
  soonest,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

@JsonSerializable(explicitToJson: true)
class ChatsArguments extends JsonSerializable with EquatableMixin {
  ChatsArguments(
      {required this.forumId, required this.take, required this.skip});

  @override
  factory ChatsArguments.fromJson(Map<String, dynamic> json) =>
      _$ChatsArgumentsFromJson(json);

  late int forumId;

  late int take;

  late int skip;

  @override
  List<Object?> get props => [forumId, take, skip];
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
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'take')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'skip')),
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
                  value: VariableNode(name: NameNode(value: 'forumId'))),
              ArgumentNode(
                  name: NameNode(value: 'take'),
                  value: VariableNode(name: NameNode(value: 'take'))),
              ArgumentNode(
                  name: NameNode(value: 'skip'),
                  value: VariableNode(name: NameNode(value: 'skip')))
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
                          FragmentSpreadNode(
                              name: NameNode(value: 'EventUser'),
                              directives: [])
                        ])),
                    FieldNode(
                        name: NameNode(value: 'survey'),
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
                              name: NameNode(value: 'question'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'answers'),
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
                                    name: NameNode(value: 'votes'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FragmentSpreadNode(
                                          name: NameNode(value: 'EventUser'),
                                          directives: [])
                                    ]))
                              ]))
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'birthday'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
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

@JsonSerializable(explicitToJson: true)
class EventArguments extends JsonSerializable with EquatableMixin {
  EventArguments({required this.eventId});

  @override
  factory EventArguments.fromJson(Map<String, dynamic> json) =>
      _$EventArgumentsFromJson(json);

  late int eventId;

  @override
  List<Object?> get props => [eventId];
  @override
  Map<String, dynamic> toJson() => _$EventArgumentsToJson(this);
}

final EVENT_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'event'),
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
            name: NameNode(value: 'event'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
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
            name: NameNode(value: 'filterMinAge'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'filterMaxAge'),
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'birthday'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class EventQuery extends GraphQLQuery<Event$Query, EventArguments> {
  EventQuery({required this.variables});

  @override
  final DocumentNode document = EVENT_QUERY_DOCUMENT;

  @override
  final String operationName = 'event';

  @override
  final EventArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Event$Query parse(Map<String, dynamic> json) => Event$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class EventsArguments extends JsonSerializable with EquatableMixin {
  EventsArguments(
      {required this.dateRange,
      required this.take,
      required this.skip,
      required this.sortType});

  @override
  factory EventsArguments.fromJson(Map<String, dynamic> json) =>
      _$EventsArgumentsFromJson(json);

  late DateRangeInput dateRange;

  late int take;

  late int skip;

  @JsonKey(unknownEnumValue: SortType.artemisUnknown)
  late SortType sortType;

  @override
  List<Object?> get props => [dateRange, take, skip, sortType];
  @override
  Map<String, dynamic> toJson() => _$EventsArgumentsToJson(this);
}

final EVENTS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'events'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'dateRange')),
            type: NamedTypeNode(
                name: NameNode(value: 'DateRangeInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'take')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'skip')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'sortType')),
            type: NamedTypeNode(
                name: NameNode(value: 'SortType'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'events'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'dateRange'),
                  value: VariableNode(name: NameNode(value: 'dateRange'))),
              ArgumentNode(
                  name: NameNode(value: 'take'),
                  value: VariableNode(name: NameNode(value: 'take'))),
              ArgumentNode(
                  name: NameNode(value: 'skip'),
                  value: VariableNode(name: NameNode(value: 'skip'))),
              ArgumentNode(
                  name: NameNode(value: 'sortType'),
                  value: VariableNode(name: NameNode(value: 'sortType')))
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
            name: NameNode(value: 'filterMinAge'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'filterMaxAge'),
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'birthday'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class EventsQuery extends GraphQLQuery<Events$Query, EventsArguments> {
  EventsQuery({required this.variables});

  @override
  final DocumentNode document = EVENTS_QUERY_DOCUMENT;

  @override
  final String operationName = 'events';

  @override
  final EventsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
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
                    FragmentSpreadNode(
                        name: NameNode(value: 'EventUser'), directives: [])
                  ]))
            ]))
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'birthday'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
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

final FLAGGED_CHATS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'flaggedChats'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'flaggedChats'),
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
                          FragmentSpreadNode(
                              name: NameNode(value: 'EventUser'),
                              directives: [])
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'birthday'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class FlaggedChatsQuery
    extends GraphQLQuery<FlaggedChats$Query, JsonSerializable> {
  FlaggedChatsQuery();

  @override
  final DocumentNode document = FLAGGED_CHATS_QUERY_DOCUMENT;

  @override
  final String operationName = 'flaggedChats';

  @override
  List<Object?> get props => [document, operationName];
  @override
  FlaggedChats$Query parse(Map<String, dynamic> json) =>
      FlaggedChats$Query.fromJson(json);
}

final FLAGGED_EVENTS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'flaggedEvents'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'flaggedEvents'),
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
            name: NameNode(value: 'filterMinAge'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'filterMaxAge'),
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'birthday'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class FlaggedEventsQuery
    extends GraphQLQuery<FlaggedEvents$Query, JsonSerializable> {
  FlaggedEventsQuery();

  @override
  final DocumentNode document = FLAGGED_EVENTS_QUERY_DOCUMENT;

  @override
  final String operationName = 'flaggedEvents';

  @override
  List<Object?> get props => [document, operationName];
  @override
  FlaggedEvents$Query parse(Map<String, dynamic> json) =>
      FlaggedEvents$Query.fromJson(json);
}

final FLAGGED_USERS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'flaggedUsers'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'flaggedUsers'),
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
            name: NameNode(value: 'photoUrls'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'phone'),
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'blockedUsers'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'EventUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'friends'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'EventUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'requestedFriends'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'EventUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'friendRequests'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'EventUser'), directives: [])
            ])),
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
                  name: NameNode(value: 'lastAccessed'),
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'birthday'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class FlaggedUsersQuery
    extends GraphQLQuery<FlaggedUsers$Query, JsonSerializable> {
  FlaggedUsersQuery();

  @override
  final DocumentNode document = FLAGGED_USERS_QUERY_DOCUMENT;

  @override
  final String operationName = 'flaggedUsers';

  @override
  List<Object?> get props => [document, operationName];
  @override
  FlaggedUsers$Query parse(Map<String, dynamic> json) =>
      FlaggedUsers$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ForumArguments extends JsonSerializable with EquatableMixin {
  ForumArguments({required this.forumId});

  @override
  factory ForumArguments.fromJson(Map<String, dynamic> json) =>
      _$ForumArgumentsFromJson(json);

  late int forumId;

  @override
  List<Object?> get props => [forumId];
  @override
  Map<String, dynamic> toJson() => _$ForumArgumentsToJson(this);
}

final FORUM_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'forum'),
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
            name: NameNode(value: 'forum'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
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
                    FragmentSpreadNode(
                        name: NameNode(value: 'ForumFields'), directives: [])
                  ]))
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'ForumFields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'Forum'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'id'),
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
                  name: NameNode(value: 'lastAccessed'),
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
            name: NameNode(value: 'chats'),
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
]);

class ForumQuery extends GraphQLQuery<Forum$Query, ForumArguments> {
  ForumQuery({required this.variables});

  @override
  final DocumentNode document = FORUM_QUERY_DOCUMENT;

  @override
  final String operationName = 'forum';

  @override
  final ForumArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Forum$Query parse(Map<String, dynamic> json) => Forum$Query.fromJson(json);
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
                    FragmentSpreadNode(
                        name: NameNode(value: 'ForumFields'), directives: [])
                  ]))
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'ForumFields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'Forum'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'id'),
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
                  name: NameNode(value: 'lastAccessed'),
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
            name: NameNode(value: 'chats'),
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

@JsonSerializable(explicitToJson: true)
class FriendsByIdArguments extends JsonSerializable with EquatableMixin {
  FriendsByIdArguments({required this.id});

  @override
  factory FriendsByIdArguments.fromJson(Map<String, dynamic> json) =>
      _$FriendsByIdArgumentsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$FriendsByIdArgumentsToJson(this);
}

final FRIENDS_BY_ID_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'friendsById'),
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
            name: NameNode(value: 'friendsById'),
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
                    FragmentSpreadNode(
                        name: NameNode(value: 'EventUser'), directives: [])
                  ]))
            ]))
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'birthday'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class FriendsByIdQuery
    extends GraphQLQuery<FriendsById$Query, FriendsByIdArguments> {
  FriendsByIdQuery({required this.variables});

  @override
  final DocumentNode document = FRIENDS_BY_ID_QUERY_DOCUMENT;

  @override
  final String operationName = 'friendsById';

  @override
  final FriendsByIdArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FriendsById$Query parse(Map<String, dynamic> json) =>
      FriendsById$Query.fromJson(json);
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
                          FragmentSpreadNode(
                              name: NameNode(value: 'EventUser'),
                              directives: [])
                        ]))
                  ]))
            ]))
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'birthday'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
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
            name: NameNode(value: 'photoUrls'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'phone'),
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'blockedUsers'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'EventUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'friends'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'EventUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'requestedFriends'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'EventUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'friendRequests'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'EventUser'), directives: [])
            ])),
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
                  name: NameNode(value: 'lastAccessed'),
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'birthday'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
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
            name: NameNode(value: 'filterMinAge'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'filterMaxAge'),
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'birthday'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
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

final POPULAR_INTERESTS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'popularInterests'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'popularInterests'),
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

class PopularInterestsQuery
    extends GraphQLQuery<PopularInterests$Query, JsonSerializable> {
  PopularInterestsQuery();

  @override
  final DocumentNode document = POPULAR_INTERESTS_QUERY_DOCUMENT;

  @override
  final String operationName = 'popularInterests';

  @override
  List<Object?> get props => [document, operationName];
  @override
  PopularInterests$Query parse(Map<String, dynamic> json) =>
      PopularInterests$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class SearchInterestsArguments extends JsonSerializable with EquatableMixin {
  SearchInterestsArguments({required this.partial});

  @override
  factory SearchInterestsArguments.fromJson(Map<String, dynamic> json) =>
      _$SearchInterestsArgumentsFromJson(json);

  late String partial;

  @override
  List<Object?> get props => [partial];
  @override
  Map<String, dynamic> toJson() => _$SearchInterestsArgumentsToJson(this);
}

final SEARCH_INTERESTS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'searchInterests'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'partial')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'searchInterests'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'partial'),
                  value: VariableNode(name: NameNode(value: 'partial')))
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

class SearchInterestsQuery
    extends GraphQLQuery<SearchInterests$Query, SearchInterestsArguments> {
  SearchInterestsQuery({required this.variables});

  @override
  final DocumentNode document = SEARCH_INTERESTS_QUERY_DOCUMENT;

  @override
  final String operationName = 'searchInterests';

  @override
  final SearchInterestsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  SearchInterests$Query parse(Map<String, dynamic> json) =>
      SearchInterests$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class SearchUsersArguments extends JsonSerializable with EquatableMixin {
  SearchUsersArguments({required this.partial});

  @override
  factory SearchUsersArguments.fromJson(Map<String, dynamic> json) =>
      _$SearchUsersArgumentsFromJson(json);

  late String partial;

  @override
  List<Object?> get props => [partial];
  @override
  Map<String, dynamic> toJson() => _$SearchUsersArgumentsToJson(this);
}

final SEARCH_USERS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'searchUsers'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'partial')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'searchUsers'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'partial'),
                  value: VariableNode(name: NameNode(value: 'partial')))
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
                        name: NameNode(value: 'EventUser'), directives: [])
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'birthday'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class SearchUsersQuery
    extends GraphQLQuery<SearchUsers$Query, SearchUsersArguments> {
  SearchUsersQuery({required this.variables});

  @override
  final DocumentNode document = SEARCH_USERS_QUERY_DOCUMENT;

  @override
  final String operationName = 'searchUsers';

  @override
  final SearchUsersArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  SearchUsers$Query parse(Map<String, dynamic> json) =>
      SearchUsers$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UserArguments extends JsonSerializable with EquatableMixin {
  UserArguments({required this.id});

  @override
  factory UserArguments.fromJson(Map<String, dynamic> json) =>
      _$UserArgumentsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$UserArgumentsToJson(this);
}

final USER_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'user'),
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
            name: NameNode(value: 'user'),
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
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'EventUser'), directives: [])
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'birthday'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class UserQuery extends GraphQLQuery<User$Query, UserArguments> {
  UserQuery({required this.variables});

  @override
  final DocumentNode document = USER_QUERY_DOCUMENT;

  @override
  final String operationName = 'user';

  @override
  final UserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  User$Query parse(Map<String, dynamic> json) => User$Query.fromJson(json);
}
