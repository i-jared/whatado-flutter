// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:whatado/utils/coercers.dart';
import 'package:geojson/geojson.dart';
part 'mutations_graphql_api.graphql.g.dart';

mixin PublicEventFieldsMixin {
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
  late PublicEventFieldsMixin$Creator creator;
  late List<PublicEventFieldsMixin$Invited> invited;
  late List<PublicEventFieldsMixin$Wannago> wannago;
  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime time;
  String? pictureUrl;
  late List<PublicEventFieldsMixin$RelatedInterests> relatedInterests;
  @JsonKey(unknownEnumValue: Privacy.artemisUnknown)
  late Privacy privacy;
  late bool screened;
  late String filterLocation;
  late double filterRadius;
  @JsonKey(unknownEnumValue: Gender.artemisUnknown)
  late Gender filterGender;
  late int filterMinAge;
  late int filterMaxAge;
}
mixin PublicUserMixin {
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
  late String displayLocation;
  @JsonKey(
      fromJson: fromGraphQLPointToDartGeoJsonPoint,
      toJson: fromDartGeoJsonPointToGraphQLPoint)
  late GeoJsonPoint coordinates;
  String? pictureUrl;
  late List<EventFieldsMixin$RelatedInterests> relatedInterests;
  @JsonKey(unknownEnumValue: Privacy.artemisUnknown)
  late Privacy privacy;
  late bool screened;
  late String filterLocation;
  late double filterRadius;
  @JsonKey(unknownEnumValue: Gender.artemisUnknown)
  late Gender filterGender;
  late int filterMinAge;
  late int filterMaxAge;
}
mixin GroupFieldsMixin {
  late int id;
  late String name;
  late int owner;
  late List<GroupFieldsMixin$Users> users;
  late List<GroupFieldsMixin$Requested> requested;
  late bool screened;
  late bool private;
  @JsonKey(
      fromJson: fromGraphQLPointNullableToDartGeoJsonPointNullable,
      toJson: fromDartGeoJsonPointNullableToGraphQLPointNullable)
  GeoJsonPoint? location;
  late String displayLocation;
  late List<GroupFieldsMixin$RelatedInterests> relatedInterests;
  late GroupFieldsMixin$Icon icon;
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
  late List<UserFieldsMixin$InverseFriends> inverseFriends;
  late List<UserFieldsMixin$Friends> friends;
  late List<UserFieldsMixin$RequestedFriends> requestedFriends;
  late List<UserFieldsMixin$FriendRequests> friendRequests;
  late List<UserFieldsMixin$Groups> groups;
  late List<UserFieldsMixin$RequestedGroups> requestedGroups;
  late List<UserFieldsMixin$Interests> interests;
  late List<UserFieldsMixin$MyEvents> myEvents;
  late List<UserFieldsMixin$ChatNotifications> chatNotifications;
  @JsonKey(unknownEnumValue: Gender.artemisUnknown)
  late Gender gender;
  @JsonKey(
      fromJson: fromGraphQLPointNullableToDartGeoJsonPointNullable,
      toJson: fromDartGeoJsonPointNullableToGraphQLPointNullable)
  GeoJsonPoint? location;
}
mixin ForumFieldsMixin {
  late int id;
  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime updatedAt;
  late bool chatDisabled;
  late List<ForumFieldsMixin$UserNotifications> userNotifications;
  late List<ForumFieldsMixin$Moderators> moderators;
  late List<ForumFieldsMixin$Chats> chats;
  late ForumFieldsMixin$Event event;
}

@JsonSerializable(explicitToJson: true)
class AcceptFriend$Mutation$AcceptFriend$Errors extends JsonSerializable
    with EquatableMixin {
  AcceptFriend$Mutation$AcceptFriend$Errors();

  factory AcceptFriend$Mutation$AcceptFriend$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$AcceptFriend$Mutation$AcceptFriend$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$AcceptFriend$Mutation$AcceptFriend$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AcceptFriend$Mutation$AcceptFriend extends JsonSerializable
    with EquatableMixin {
  AcceptFriend$Mutation$AcceptFriend();

  factory AcceptFriend$Mutation$AcceptFriend.fromJson(
          Map<String, dynamic> json) =>
      _$AcceptFriend$Mutation$AcceptFriendFromJson(json);

  bool? nodes;

  List<AcceptFriend$Mutation$AcceptFriend$Errors>? errors;

  bool? ok;

  @override
  List<Object?> get props => [nodes, errors, ok];
  @override
  Map<String, dynamic> toJson() =>
      _$AcceptFriend$Mutation$AcceptFriendToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AcceptFriend$Mutation extends JsonSerializable with EquatableMixin {
  AcceptFriend$Mutation();

  factory AcceptFriend$Mutation.fromJson(Map<String, dynamic> json) =>
      _$AcceptFriend$MutationFromJson(json);

  late AcceptFriend$Mutation$AcceptFriend acceptFriend;

  @override
  List<Object?> get props => [acceptFriend];
  @override
  Map<String, dynamic> toJson() => _$AcceptFriend$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RemoveAccount$Mutation$RemoveAccount$Errors extends JsonSerializable
    with EquatableMixin {
  RemoveAccount$Mutation$RemoveAccount$Errors();

  factory RemoveAccount$Mutation$RemoveAccount$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$RemoveAccount$Mutation$RemoveAccount$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$RemoveAccount$Mutation$RemoveAccount$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RemoveAccount$Mutation$RemoveAccount extends JsonSerializable
    with EquatableMixin {
  RemoveAccount$Mutation$RemoveAccount();

  factory RemoveAccount$Mutation$RemoveAccount.fromJson(
          Map<String, dynamic> json) =>
      _$RemoveAccount$Mutation$RemoveAccountFromJson(json);

  bool? ok;

  bool? nodes;

  List<RemoveAccount$Mutation$RemoveAccount$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$RemoveAccount$Mutation$RemoveAccountToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RemoveAccount$Mutation extends JsonSerializable with EquatableMixin {
  RemoveAccount$Mutation();

  factory RemoveAccount$Mutation.fromJson(Map<String, dynamic> json) =>
      _$RemoveAccount$MutationFromJson(json);

  late RemoveAccount$Mutation$RemoveAccount removeAccount;

  @override
  List<Object?> get props => [removeAccount];
  @override
  Map<String, dynamic> toJson() => _$RemoveAccount$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddWannago$Mutation$AddWannago$Nodes extends JsonSerializable
    with EquatableMixin, PublicEventFieldsMixin {
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
        pictureUrl,
        relatedInterests,
        privacy,
        screened,
        filterLocation,
        filterRadius,
        filterGender,
        filterMinAge,
        filterMaxAge
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
class PublicEventFieldsMixin$Creator extends JsonSerializable
    with EquatableMixin, PublicUserMixin {
  PublicEventFieldsMixin$Creator();

  factory PublicEventFieldsMixin$Creator.fromJson(Map<String, dynamic> json) =>
      _$PublicEventFieldsMixin$CreatorFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() => _$PublicEventFieldsMixin$CreatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PublicEventFieldsMixin$Invited extends JsonSerializable
    with EquatableMixin, PublicUserMixin {
  PublicEventFieldsMixin$Invited();

  factory PublicEventFieldsMixin$Invited.fromJson(Map<String, dynamic> json) =>
      _$PublicEventFieldsMixin$InvitedFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() => _$PublicEventFieldsMixin$InvitedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PublicEventFieldsMixin$Wannago$User extends JsonSerializable
    with EquatableMixin, PublicUserMixin {
  PublicEventFieldsMixin$Wannago$User();

  factory PublicEventFieldsMixin$Wannago$User.fromJson(
          Map<String, dynamic> json) =>
      _$PublicEventFieldsMixin$Wannago$UserFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() =>
      _$PublicEventFieldsMixin$Wannago$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PublicEventFieldsMixin$Wannago extends JsonSerializable
    with EquatableMixin {
  PublicEventFieldsMixin$Wannago();

  factory PublicEventFieldsMixin$Wannago.fromJson(Map<String, dynamic> json) =>
      _$PublicEventFieldsMixin$WannagoFromJson(json);

  late int id;

  late bool declined;

  late PublicEventFieldsMixin$Wannago$User user;

  @override
  List<Object?> get props => [id, declined, user];
  @override
  Map<String, dynamic> toJson() => _$PublicEventFieldsMixin$WannagoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PublicEventFieldsMixin$RelatedInterests extends JsonSerializable
    with EquatableMixin {
  PublicEventFieldsMixin$RelatedInterests();

  factory PublicEventFieldsMixin$RelatedInterests.fromJson(
          Map<String, dynamic> json) =>
      _$PublicEventFieldsMixin$RelatedInterestsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$PublicEventFieldsMixin$RelatedInterestsToJson(this);
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
        displayLocation,
        coordinates,
        pictureUrl,
        relatedInterests,
        privacy,
        screened,
        filterLocation,
        filterRadius,
        filterGender,
        filterMinAge,
        filterMaxAge
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
class EventFieldsMixin$Creator extends JsonSerializable
    with EquatableMixin, PublicUserMixin {
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
    with EquatableMixin, PublicUserMixin {
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
    with EquatableMixin, PublicUserMixin {
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
class EventFilterInput extends JsonSerializable with EquatableMixin {
  EventFilterInput(
      {this.coordinates,
      this.createdAt,
      this.creatorId,
      this.description,
      this.displayLocation,
      this.filterGender,
      this.filterLocation,
      this.filterMaxAge,
      this.filterMinAge,
      this.filterRadius,
      this.forumId,
      this.groupId,
      this.id,
      this.invitedIds,
      this.location,
      this.pictureUrl,
      this.privacy,
      this.relatedInterestsIds,
      this.screened,
      this.time,
      this.title,
      this.updatedAt,
      this.wannagoIds});

  factory EventFilterInput.fromJson(Map<String, dynamic> json) =>
      _$EventFilterInputFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLPointNullableToDartGeoJsonPointNullable,
      toJson: fromDartGeoJsonPointNullableToGraphQLPointNullable)
  GeoJsonPoint? coordinates;

  String? createdAt;

  int? creatorId;

  String? description;

  String? displayLocation;

  @JsonKey(unknownEnumValue: Gender.artemisUnknown)
  Gender? filterGender;

  String? filterLocation;

  double? filterMaxAge;

  double? filterMinAge;

  double? filterRadius;

  int? forumId;

  int? groupId;

  int? id;

  List<int>? invitedIds;

  String? location;

  String? pictureUrl;

  @JsonKey(unknownEnumValue: Privacy.artemisUnknown)
  Privacy? privacy;

  List<int>? relatedInterestsIds;

  bool? screened;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? time;

  String? title;

  String? updatedAt;

  List<int>? wannagoIds;

  @override
  List<Object?> get props => [
        coordinates,
        createdAt,
        creatorId,
        description,
        displayLocation,
        filterGender,
        filterLocation,
        filterMaxAge,
        filterMinAge,
        filterRadius,
        forumId,
        groupId,
        id,
        invitedIds,
        location,
        pictureUrl,
        privacy,
        relatedInterestsIds,
        screened,
        time,
        title,
        updatedAt,
        wannagoIds
      ];
  @override
  Map<String, dynamic> toJson() => _$EventFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateGroup$Mutation$UpdateGroup$Nodes extends JsonSerializable
    with EquatableMixin, GroupFieldsMixin {
  UpdateGroup$Mutation$UpdateGroup$Nodes();

  factory UpdateGroup$Mutation$UpdateGroup$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateGroup$Mutation$UpdateGroup$NodesFromJson(json);

  @override
  List<Object?> get props => [
        id,
        name,
        owner,
        users,
        requested,
        screened,
        private,
        location,
        displayLocation,
        relatedInterests,
        icon
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateGroup$Mutation$UpdateGroup$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateGroup$Mutation$UpdateGroup$Errors extends JsonSerializable
    with EquatableMixin {
  UpdateGroup$Mutation$UpdateGroup$Errors();

  factory UpdateGroup$Mutation$UpdateGroup$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateGroup$Mutation$UpdateGroup$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateGroup$Mutation$UpdateGroup$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateGroup$Mutation$UpdateGroup extends JsonSerializable
    with EquatableMixin {
  UpdateGroup$Mutation$UpdateGroup();

  factory UpdateGroup$Mutation$UpdateGroup.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateGroup$Mutation$UpdateGroupFromJson(json);

  bool? ok;

  UpdateGroup$Mutation$UpdateGroup$Nodes? nodes;

  List<UpdateGroup$Mutation$UpdateGroup$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateGroup$Mutation$UpdateGroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateGroup$Mutation extends JsonSerializable with EquatableMixin {
  UpdateGroup$Mutation();

  factory UpdateGroup$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateGroup$MutationFromJson(json);

  late UpdateGroup$Mutation$UpdateGroup updateGroup;

  @override
  List<Object?> get props => [updateGroup];
  @override
  Map<String, dynamic> toJson() => _$UpdateGroup$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GroupFieldsMixin$Users extends JsonSerializable
    with EquatableMixin, PublicUserMixin {
  GroupFieldsMixin$Users();

  factory GroupFieldsMixin$Users.fromJson(Map<String, dynamic> json) =>
      _$GroupFieldsMixin$UsersFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() => _$GroupFieldsMixin$UsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GroupFieldsMixin$Requested extends JsonSerializable
    with EquatableMixin, PublicUserMixin {
  GroupFieldsMixin$Requested();

  factory GroupFieldsMixin$Requested.fromJson(Map<String, dynamic> json) =>
      _$GroupFieldsMixin$RequestedFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() => _$GroupFieldsMixin$RequestedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GroupFieldsMixin$RelatedInterests extends JsonSerializable
    with EquatableMixin {
  GroupFieldsMixin$RelatedInterests();

  factory GroupFieldsMixin$RelatedInterests.fromJson(
          Map<String, dynamic> json) =>
      _$GroupFieldsMixin$RelatedInterestsFromJson(json);

  late int id;

  late String title;

  @override
  List<Object?> get props => [id, title];
  @override
  Map<String, dynamic> toJson() =>
      _$GroupFieldsMixin$RelatedInterestsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GroupFieldsMixin$Icon extends JsonSerializable with EquatableMixin {
  GroupFieldsMixin$Icon();

  factory GroupFieldsMixin$Icon.fromJson(Map<String, dynamic> json) =>
      _$GroupFieldsMixin$IconFromJson(json);

  late int id;

  late String url;

  @override
  List<Object?> get props => [id, url];
  @override
  Map<String, dynamic> toJson() => _$GroupFieldsMixin$IconToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GroupFilterInput extends JsonSerializable with EquatableMixin {
  GroupFilterInput(
      {this.createdAt,
      this.displayLocation,
      this.groupIconId,
      this.id,
      this.location,
      this.name,
      this.owner,
      this.private,
      this.relatedInterestIds,
      this.requestedIds,
      this.screened,
      this.updatedAt,
      this.userIds});

  factory GroupFilterInput.fromJson(Map<String, dynamic> json) =>
      _$GroupFilterInputFromJson(json);

  String? createdAt;

  String? displayLocation;

  int? groupIconId;

  int? id;

  @JsonKey(
      fromJson: fromGraphQLPointNullableToDartGeoJsonPointNullable,
      toJson: fromDartGeoJsonPointNullableToGraphQLPointNullable)
  GeoJsonPoint? location;

  String? name;

  int? owner;

  bool? private;

  List<int>? relatedInterestIds;

  List<int>? requestedIds;

  bool? screened;

  String? updatedAt;

  List<int>? userIds;

  @override
  List<Object?> get props => [
        createdAt,
        displayLocation,
        groupIconId,
        id,
        location,
        name,
        owner,
        private,
        relatedInterestIds,
        requestedIds,
        screened,
        updatedAt,
        userIds
      ];
  @override
  Map<String, dynamic> toJson() => _$GroupFilterInputToJson(this);
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
        photoUrls,
        phone,
        verified,
        name,
        birthday,
        bio,
        blockedUsers,
        inverseFriends,
        friends,
        requestedFriends,
        friendRequests,
        groups,
        requestedGroups,
        interests,
        myEvents,
        chatNotifications,
        gender,
        location
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
class UserFieldsMixin$BlockedUsers extends JsonSerializable
    with EquatableMixin, PublicUserMixin {
  UserFieldsMixin$BlockedUsers();

  factory UserFieldsMixin$BlockedUsers.fromJson(Map<String, dynamic> json) =>
      _$UserFieldsMixin$BlockedUsersFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() => _$UserFieldsMixin$BlockedUsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserFieldsMixin$InverseFriends extends JsonSerializable
    with EquatableMixin, PublicUserMixin {
  UserFieldsMixin$InverseFriends();

  factory UserFieldsMixin$InverseFriends.fromJson(Map<String, dynamic> json) =>
      _$UserFieldsMixin$InverseFriendsFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() => _$UserFieldsMixin$InverseFriendsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserFieldsMixin$Friends extends JsonSerializable
    with EquatableMixin, PublicUserMixin {
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
    with EquatableMixin, PublicUserMixin {
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
    with EquatableMixin, PublicUserMixin {
  UserFieldsMixin$FriendRequests();

  factory UserFieldsMixin$FriendRequests.fromJson(Map<String, dynamic> json) =>
      _$UserFieldsMixin$FriendRequestsFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() => _$UserFieldsMixin$FriendRequestsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserFieldsMixin$Groups extends JsonSerializable
    with EquatableMixin, GroupFieldsMixin {
  UserFieldsMixin$Groups();

  factory UserFieldsMixin$Groups.fromJson(Map<String, dynamic> json) =>
      _$UserFieldsMixin$GroupsFromJson(json);

  @override
  List<Object?> get props => [
        id,
        name,
        owner,
        users,
        requested,
        screened,
        private,
        location,
        displayLocation,
        relatedInterests,
        icon
      ];
  @override
  Map<String, dynamic> toJson() => _$UserFieldsMixin$GroupsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserFieldsMixin$RequestedGroups extends JsonSerializable
    with EquatableMixin, GroupFieldsMixin {
  UserFieldsMixin$RequestedGroups();

  factory UserFieldsMixin$RequestedGroups.fromJson(Map<String, dynamic> json) =>
      _$UserFieldsMixin$RequestedGroupsFromJson(json);

  @override
  List<Object?> get props => [
        id,
        name,
        owner,
        users,
        requested,
        screened,
        private,
        location,
        displayLocation,
        relatedInterests,
        icon
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$UserFieldsMixin$RequestedGroupsToJson(this);
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
class UserFilterInput extends JsonSerializable with EquatableMixin {
  UserFilterInput(
      {this.bio,
      this.birthday,
      this.deviceId,
      this.gender,
      this.id,
      this.location,
      this.name,
      this.password,
      this.phone,
      this.photoUrls,
      this.verified});

  factory UserFilterInput.fromJson(Map<String, dynamic> json) =>
      _$UserFilterInputFromJson(json);

  String? bio;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? birthday;

  String? deviceId;

  @JsonKey(unknownEnumValue: Gender.artemisUnknown)
  Gender? gender;

  int? id;

  @JsonKey(
      fromJson: fromGraphQLPointNullableToDartGeoJsonPointNullable,
      toJson: fromDartGeoJsonPointNullableToGraphQLPointNullable)
  GeoJsonPoint? location;

  String? name;

  String? password;

  String? phone;

  String? photoUrls;

  bool? verified;

  @override
  List<Object?> get props => [
        bio,
        birthday,
        deviceId,
        gender,
        id,
        location,
        name,
        password,
        phone,
        photoUrls,
        verified
      ];
  @override
  Map<String, dynamic> toJson() => _$UserFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Access$Mutation$Access$Errors extends JsonSerializable
    with EquatableMixin {
  Access$Mutation$Access$Errors();

  factory Access$Mutation$Access$Errors.fromJson(Map<String, dynamic> json) =>
      _$Access$Mutation$Access$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() => _$Access$Mutation$Access$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Access$Mutation$Access extends JsonSerializable with EquatableMixin {
  Access$Mutation$Access();

  factory Access$Mutation$Access.fromJson(Map<String, dynamic> json) =>
      _$Access$Mutation$AccessFromJson(json);

  bool? ok;

  List<Access$Mutation$Access$Errors>? errors;

  bool? nodes;

  @override
  List<Object?> get props => [ok, errors, nodes];
  @override
  Map<String, dynamic> toJson() => _$Access$Mutation$AccessToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Access$Mutation extends JsonSerializable with EquatableMixin {
  Access$Mutation();

  factory Access$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Access$MutationFromJson(json);

  late Access$Mutation$Access access;

  @override
  List<Object?> get props => [access];
  @override
  Map<String, dynamic> toJson() => _$Access$MutationToJson(this);
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
class Unfriend$Mutation$Unfriend$Errors extends JsonSerializable
    with EquatableMixin {
  Unfriend$Mutation$Unfriend$Errors();

  factory Unfriend$Mutation$Unfriend$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$Unfriend$Mutation$Unfriend$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$Unfriend$Mutation$Unfriend$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Unfriend$Mutation$Unfriend extends JsonSerializable with EquatableMixin {
  Unfriend$Mutation$Unfriend();

  factory Unfriend$Mutation$Unfriend.fromJson(Map<String, dynamic> json) =>
      _$Unfriend$Mutation$UnfriendFromJson(json);

  bool? nodes;

  List<Unfriend$Mutation$Unfriend$Errors>? errors;

  bool? ok;

  @override
  List<Object?> get props => [nodes, errors, ok];
  @override
  Map<String, dynamic> toJson() => _$Unfriend$Mutation$UnfriendToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Unfriend$Mutation extends JsonSerializable with EquatableMixin {
  Unfriend$Mutation();

  factory Unfriend$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Unfriend$MutationFromJson(json);

  late Unfriend$Mutation$Unfriend unfriend;

  @override
  List<Object?> get props => [unfriend];
  @override
  Map<String, dynamic> toJson() => _$Unfriend$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CheckValidation$Mutation$CheckValidation$Errors extends JsonSerializable
    with EquatableMixin {
  CheckValidation$Mutation$CheckValidation$Errors();

  factory CheckValidation$Mutation$CheckValidation$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$CheckValidation$Mutation$CheckValidation$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$CheckValidation$Mutation$CheckValidation$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CheckValidation$Mutation$CheckValidation extends JsonSerializable
    with EquatableMixin {
  CheckValidation$Mutation$CheckValidation();

  factory CheckValidation$Mutation$CheckValidation.fromJson(
          Map<String, dynamic> json) =>
      _$CheckValidation$Mutation$CheckValidationFromJson(json);

  bool? ok;

  bool? nodes;

  List<CheckValidation$Mutation$CheckValidation$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$CheckValidation$Mutation$CheckValidationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CheckValidation$Mutation extends JsonSerializable with EquatableMixin {
  CheckValidation$Mutation();

  factory CheckValidation$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CheckValidation$MutationFromJson(json);

  late CheckValidation$Mutation$CheckValidation checkValidation;

  @override
  List<Object?> get props => [checkValidation];
  @override
  Map<String, dynamic> toJson() => _$CheckValidation$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SendCode$Mutation$SendCode$Errors extends JsonSerializable
    with EquatableMixin {
  SendCode$Mutation$SendCode$Errors();

  factory SendCode$Mutation$SendCode$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$SendCode$Mutation$SendCode$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$SendCode$Mutation$SendCode$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SendCode$Mutation$SendCode extends JsonSerializable with EquatableMixin {
  SendCode$Mutation$SendCode();

  factory SendCode$Mutation$SendCode.fromJson(Map<String, dynamic> json) =>
      _$SendCode$Mutation$SendCodeFromJson(json);

  bool? nodes;

  bool? ok;

  List<SendCode$Mutation$SendCode$Errors>? errors;

  @override
  List<Object?> get props => [nodes, ok, errors];
  @override
  Map<String, dynamic> toJson() => _$SendCode$Mutation$SendCodeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SendCode$Mutation extends JsonSerializable with EquatableMixin {
  SendCode$Mutation();

  factory SendCode$Mutation.fromJson(Map<String, dynamic> json) =>
      _$SendCode$MutationFromJson(json);

  late SendCode$Mutation$SendCode sendCode;

  @override
  List<Object?> get props => [sendCode];
  @override
  Map<String, dynamic> toJson() => _$SendCode$MutationToJson(this);
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
class CheckValidationLogin$Mutation$CheckValidationLogin$Jwt
    extends JsonSerializable with EquatableMixin {
  CheckValidationLogin$Mutation$CheckValidationLogin$Jwt();

  factory CheckValidationLogin$Mutation$CheckValidationLogin$Jwt.fromJson(
          Map<String, dynamic> json) =>
      _$CheckValidationLogin$Mutation$CheckValidationLogin$JwtFromJson(json);

  late String accessToken;

  late String refreshToken;

  @override
  List<Object?> get props => [accessToken, refreshToken];
  @override
  Map<String, dynamic> toJson() =>
      _$CheckValidationLogin$Mutation$CheckValidationLogin$JwtToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CheckValidationLogin$Mutation$CheckValidationLogin$Errors
    extends JsonSerializable with EquatableMixin {
  CheckValidationLogin$Mutation$CheckValidationLogin$Errors();

  factory CheckValidationLogin$Mutation$CheckValidationLogin$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$CheckValidationLogin$Mutation$CheckValidationLogin$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$CheckValidationLogin$Mutation$CheckValidationLogin$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CheckValidationLogin$Mutation$CheckValidationLogin
    extends JsonSerializable with EquatableMixin {
  CheckValidationLogin$Mutation$CheckValidationLogin();

  factory CheckValidationLogin$Mutation$CheckValidationLogin.fromJson(
          Map<String, dynamic> json) =>
      _$CheckValidationLogin$Mutation$CheckValidationLoginFromJson(json);

  bool? ok;

  bool? nodes;

  CheckValidationLogin$Mutation$CheckValidationLogin$Jwt? jwt;

  List<CheckValidationLogin$Mutation$CheckValidationLogin$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, jwt, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$CheckValidationLogin$Mutation$CheckValidationLoginToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CheckValidationLogin$Mutation extends JsonSerializable
    with EquatableMixin {
  CheckValidationLogin$Mutation();

  factory CheckValidationLogin$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CheckValidationLogin$MutationFromJson(json);

  late CheckValidationLogin$Mutation$CheckValidationLogin checkValidationLogin;

  @override
  List<Object?> get props => [checkValidationLogin];
  @override
  Map<String, dynamic> toJson() => _$CheckValidationLogin$MutationToJson(this);
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

  bool? nodes;

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
  UserInput(
      {this.birthday,
      this.gender,
      this.location,
      this.name,
      required this.password,
      this.phone});

  factory UserInput.fromJson(Map<String, dynamic> json) =>
      _$UserInputFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? birthday;

  @JsonKey(unknownEnumValue: Gender.artemisUnknown)
  Gender? gender;

  @JsonKey(
      fromJson: fromGraphQLPointNullableToDartGeoJsonPointNullable,
      toJson: fromDartGeoJsonPointNullableToGraphQLPointNullable)
  GeoJsonPoint? location;

  String? name;

  late String password;

  String? phone;

  @override
  List<Object?> get props =>
      [birthday, gender, location, name, password, phone];
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
class Mute$Mutation$Mute$Errors extends JsonSerializable with EquatableMixin {
  Mute$Mutation$Mute$Errors();

  factory Mute$Mutation$Mute$Errors.fromJson(Map<String, dynamic> json) =>
      _$Mute$Mutation$Mute$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() => _$Mute$Mutation$Mute$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Mute$Mutation$Mute extends JsonSerializable with EquatableMixin {
  Mute$Mutation$Mute();

  factory Mute$Mutation$Mute.fromJson(Map<String, dynamic> json) =>
      _$Mute$Mutation$MuteFromJson(json);

  bool? ok;

  List<Mute$Mutation$Mute$Errors>? errors;

  bool? nodes;

  @override
  List<Object?> get props => [ok, errors, nodes];
  @override
  Map<String, dynamic> toJson() => _$Mute$Mutation$MuteToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Mute$Mutation extends JsonSerializable with EquatableMixin {
  Mute$Mutation();

  factory Mute$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Mute$MutationFromJson(json);

  late Mute$Mutation$Mute mute;

  @override
  List<Object?> get props => [mute];
  @override
  Map<String, dynamic> toJson() => _$Mute$MutationToJson(this);
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
class CreateForum$Mutation$CreateForum$Nodes extends JsonSerializable
    with EquatableMixin, ForumFieldsMixin {
  CreateForum$Mutation$CreateForum$Nodes();

  factory CreateForum$Mutation$CreateForum$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$CreateForum$Mutation$CreateForum$NodesFromJson(json);

  @override
  List<Object?> get props => [
        id,
        updatedAt,
        chatDisabled,
        userNotifications,
        moderators,
        chats,
        event
      ];
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
class ForumFieldsMixin$Moderators extends JsonSerializable
    with EquatableMixin, PublicUserMixin {
  ForumFieldsMixin$Moderators();

  factory ForumFieldsMixin$Moderators.fromJson(Map<String, dynamic> json) =>
      _$ForumFieldsMixin$ModeratorsFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() => _$ForumFieldsMixin$ModeratorsToJson(this);
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
    with EquatableMixin, PublicUserMixin {
  CreateChat$Mutation$CreateChat$Nodes$Author();

  factory CreateChat$Mutation$CreateChat$Nodes$Author.fromJson(
          Map<String, dynamic> json) =>
      _$CreateChat$Mutation$CreateChat$Nodes$AuthorFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
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
class SurveyInput extends JsonSerializable with EquatableMixin {
  SurveyInput({required this.answers, required this.question});

  factory SurveyInput.fromJson(Map<String, dynamic> json) =>
      _$SurveyInputFromJson(json);

  late List<String> answers;

  late String question;

  @override
  List<Object?> get props => [answers, question];
  @override
  Map<String, dynamic> toJson() => _$SurveyInputToJson(this);
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

@JsonSerializable(explicitToJson: true)
class RemoveInvite$Mutation$RemoveInvite$Nodes extends JsonSerializable
    with EquatableMixin, EventFieldsMixin {
  RemoveInvite$Mutation$RemoveInvite$Nodes();

  factory RemoveInvite$Mutation$RemoveInvite$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$RemoveInvite$Mutation$RemoveInvite$NodesFromJson(json);

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
        displayLocation,
        coordinates,
        pictureUrl,
        relatedInterests,
        privacy,
        screened,
        filterLocation,
        filterRadius,
        filterGender,
        filterMinAge,
        filterMaxAge
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$RemoveInvite$Mutation$RemoveInvite$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RemoveInvite$Mutation$RemoveInvite$Errors extends JsonSerializable
    with EquatableMixin {
  RemoveInvite$Mutation$RemoveInvite$Errors();

  factory RemoveInvite$Mutation$RemoveInvite$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$RemoveInvite$Mutation$RemoveInvite$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$RemoveInvite$Mutation$RemoveInvite$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RemoveInvite$Mutation$RemoveInvite extends JsonSerializable
    with EquatableMixin {
  RemoveInvite$Mutation$RemoveInvite();

  factory RemoveInvite$Mutation$RemoveInvite.fromJson(
          Map<String, dynamic> json) =>
      _$RemoveInvite$Mutation$RemoveInviteFromJson(json);

  bool? ok;

  RemoveInvite$Mutation$RemoveInvite$Nodes? nodes;

  List<RemoveInvite$Mutation$RemoveInvite$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$RemoveInvite$Mutation$RemoveInviteToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RemoveInvite$Mutation extends JsonSerializable with EquatableMixin {
  RemoveInvite$Mutation();

  factory RemoveInvite$Mutation.fromJson(Map<String, dynamic> json) =>
      _$RemoveInvite$MutationFromJson(json);

  late RemoveInvite$Mutation$RemoveInvite removeInvite;

  @override
  List<Object?> get props => [removeInvite];
  @override
  Map<String, dynamic> toJson() => _$RemoveInvite$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateForum$Mutation$UpdateForum$Nodes extends JsonSerializable
    with EquatableMixin, ForumFieldsMixin {
  UpdateForum$Mutation$UpdateForum$Nodes();

  factory UpdateForum$Mutation$UpdateForum$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateForum$Mutation$UpdateForum$NodesFromJson(json);

  @override
  List<Object?> get props => [
        id,
        updatedAt,
        chatDisabled,
        userNotifications,
        moderators,
        chats,
        event
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateForum$Mutation$UpdateForum$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateForum$Mutation$UpdateForum$Errors extends JsonSerializable
    with EquatableMixin {
  UpdateForum$Mutation$UpdateForum$Errors();

  factory UpdateForum$Mutation$UpdateForum$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateForum$Mutation$UpdateForum$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateForum$Mutation$UpdateForum$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateForum$Mutation$UpdateForum extends JsonSerializable
    with EquatableMixin {
  UpdateForum$Mutation$UpdateForum();

  factory UpdateForum$Mutation$UpdateForum.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateForum$Mutation$UpdateForumFromJson(json);

  bool? ok;

  UpdateForum$Mutation$UpdateForum$Nodes? nodes;

  List<UpdateForum$Mutation$UpdateForum$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateForum$Mutation$UpdateForumToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateForum$Mutation extends JsonSerializable with EquatableMixin {
  UpdateForum$Mutation();

  factory UpdateForum$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateForum$MutationFromJson(json);

  late UpdateForum$Mutation$UpdateForum updateForum;

  @override
  List<Object?> get props => [updateForum];
  @override
  Map<String, dynamic> toJson() => _$UpdateForum$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ForumFilterInput extends JsonSerializable with EquatableMixin {
  ForumFilterInput({this.chatDisabled, this.id, this.moderatorsIds});

  factory ForumFilterInput.fromJson(Map<String, dynamic> json) =>
      _$ForumFilterInputFromJson(json);

  bool? chatDisabled;

  int? id;

  List<int>? moderatorsIds;

  @override
  List<Object?> get props => [chatDisabled, id, moderatorsIds];
  @override
  Map<String, dynamic> toJson() => _$ForumFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestFriend$Mutation$RequestFriend$Errors extends JsonSerializable
    with EquatableMixin {
  RequestFriend$Mutation$RequestFriend$Errors();

  factory RequestFriend$Mutation$RequestFriend$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$RequestFriend$Mutation$RequestFriend$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$RequestFriend$Mutation$RequestFriend$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestFriend$Mutation$RequestFriend extends JsonSerializable
    with EquatableMixin {
  RequestFriend$Mutation$RequestFriend();

  factory RequestFriend$Mutation$RequestFriend.fromJson(
          Map<String, dynamic> json) =>
      _$RequestFriend$Mutation$RequestFriendFromJson(json);

  bool? nodes;

  List<RequestFriend$Mutation$RequestFriend$Errors>? errors;

  bool? ok;

  @override
  List<Object?> get props => [nodes, errors, ok];
  @override
  Map<String, dynamic> toJson() =>
      _$RequestFriend$Mutation$RequestFriendToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestFriend$Mutation extends JsonSerializable with EquatableMixin {
  RequestFriend$Mutation();

  factory RequestFriend$Mutation.fromJson(Map<String, dynamic> json) =>
      _$RequestFriend$MutationFromJson(json);

  late RequestFriend$Mutation$RequestFriend requestFriend;

  @override
  List<Object?> get props => [requestFriend];
  @override
  Map<String, dynamic> toJson() => _$RequestFriend$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestGroup$Mutation$RequestGroup$Errors extends JsonSerializable
    with EquatableMixin {
  RequestGroup$Mutation$RequestGroup$Errors();

  factory RequestGroup$Mutation$RequestGroup$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$RequestGroup$Mutation$RequestGroup$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$RequestGroup$Mutation$RequestGroup$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestGroup$Mutation$RequestGroup extends JsonSerializable
    with EquatableMixin {
  RequestGroup$Mutation$RequestGroup();

  factory RequestGroup$Mutation$RequestGroup.fromJson(
          Map<String, dynamic> json) =>
      _$RequestGroup$Mutation$RequestGroupFromJson(json);

  bool? nodes;

  List<RequestGroup$Mutation$RequestGroup$Errors>? errors;

  bool? ok;

  @override
  List<Object?> get props => [nodes, errors, ok];
  @override
  Map<String, dynamic> toJson() =>
      _$RequestGroup$Mutation$RequestGroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestGroup$Mutation extends JsonSerializable with EquatableMixin {
  RequestGroup$Mutation();

  factory RequestGroup$Mutation.fromJson(Map<String, dynamic> json) =>
      _$RequestGroup$MutationFromJson(json);

  late RequestGroup$Mutation$RequestGroup requestGroup;

  @override
  List<Object?> get props => [requestGroup];
  @override
  Map<String, dynamic> toJson() => _$RequestGroup$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateReferral$Mutation$CreateReferral$Errors extends JsonSerializable
    with EquatableMixin {
  CreateReferral$Mutation$CreateReferral$Errors();

  factory CreateReferral$Mutation$CreateReferral$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$CreateReferral$Mutation$CreateReferral$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateReferral$Mutation$CreateReferral$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateReferral$Mutation$CreateReferral extends JsonSerializable
    with EquatableMixin {
  CreateReferral$Mutation$CreateReferral();

  factory CreateReferral$Mutation$CreateReferral.fromJson(
          Map<String, dynamic> json) =>
      _$CreateReferral$Mutation$CreateReferralFromJson(json);

  bool? ok;

  bool? nodes;

  List<CreateReferral$Mutation$CreateReferral$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateReferral$Mutation$CreateReferralToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateReferral$Mutation extends JsonSerializable with EquatableMixin {
  CreateReferral$Mutation();

  factory CreateReferral$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateReferral$MutationFromJson(json);

  late CreateReferral$Mutation$CreateReferral createReferral;

  @override
  List<Object?> get props => [createReferral];
  @override
  Map<String, dynamic> toJson() => _$CreateReferral$MutationToJson(this);
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
class UnblockUser$Mutation$UnblockUser$Errors extends JsonSerializable
    with EquatableMixin {
  UnblockUser$Mutation$UnblockUser$Errors();

  factory UnblockUser$Mutation$UnblockUser$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$UnblockUser$Mutation$UnblockUser$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$UnblockUser$Mutation$UnblockUser$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UnblockUser$Mutation$UnblockUser extends JsonSerializable
    with EquatableMixin {
  UnblockUser$Mutation$UnblockUser();

  factory UnblockUser$Mutation$UnblockUser.fromJson(
          Map<String, dynamic> json) =>
      _$UnblockUser$Mutation$UnblockUserFromJson(json);

  bool? ok;

  bool? nodes;

  List<UnblockUser$Mutation$UnblockUser$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$UnblockUser$Mutation$UnblockUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UnblockUser$Mutation extends JsonSerializable with EquatableMixin {
  UnblockUser$Mutation();

  factory UnblockUser$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UnblockUser$MutationFromJson(json);

  late UnblockUser$Mutation$UnblockUser unblockUser;

  @override
  List<Object?> get props => [unblockUser];
  @override
  Map<String, dynamic> toJson() => _$UnblockUser$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UnrequestFriend$Mutation$UnrequestFriend$Errors extends JsonSerializable
    with EquatableMixin {
  UnrequestFriend$Mutation$UnrequestFriend$Errors();

  factory UnrequestFriend$Mutation$UnrequestFriend$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$UnrequestFriend$Mutation$UnrequestFriend$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$UnrequestFriend$Mutation$UnrequestFriend$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UnrequestFriend$Mutation$UnrequestFriend extends JsonSerializable
    with EquatableMixin {
  UnrequestFriend$Mutation$UnrequestFriend();

  factory UnrequestFriend$Mutation$UnrequestFriend.fromJson(
          Map<String, dynamic> json) =>
      _$UnrequestFriend$Mutation$UnrequestFriendFromJson(json);

  bool? nodes;

  List<UnrequestFriend$Mutation$UnrequestFriend$Errors>? errors;

  bool? ok;

  @override
  List<Object?> get props => [nodes, errors, ok];
  @override
  Map<String, dynamic> toJson() =>
      _$UnrequestFriend$Mutation$UnrequestFriendToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UnrequestFriend$Mutation extends JsonSerializable with EquatableMixin {
  UnrequestFriend$Mutation();

  factory UnrequestFriend$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UnrequestFriend$MutationFromJson(json);

  late UnrequestFriend$Mutation$UnrequestFriend unrequestFriend;

  @override
  List<Object?> get props => [unrequestFriend];
  @override
  Map<String, dynamic> toJson() => _$UnrequestFriend$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Vote$Mutation$Vote$Errors extends JsonSerializable with EquatableMixin {
  Vote$Mutation$Vote$Errors();

  factory Vote$Mutation$Vote$Errors.fromJson(Map<String, dynamic> json) =>
      _$Vote$Mutation$Vote$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() => _$Vote$Mutation$Vote$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Vote$Mutation$Vote extends JsonSerializable with EquatableMixin {
  Vote$Mutation$Vote();

  factory Vote$Mutation$Vote.fromJson(Map<String, dynamic> json) =>
      _$Vote$Mutation$VoteFromJson(json);

  bool? ok;

  bool? nodes;

  List<Vote$Mutation$Vote$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() => _$Vote$Mutation$VoteToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Vote$Mutation extends JsonSerializable with EquatableMixin {
  Vote$Mutation();

  factory Vote$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Vote$MutationFromJson(json);

  late Vote$Mutation$Vote vote;

  @override
  List<Object?> get props => [vote];
  @override
  Map<String, dynamic> toJson() => _$Vote$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Unmute$Mutation$Unmute$Errors extends JsonSerializable
    with EquatableMixin {
  Unmute$Mutation$Unmute$Errors();

  factory Unmute$Mutation$Unmute$Errors.fromJson(Map<String, dynamic> json) =>
      _$Unmute$Mutation$Unmute$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() => _$Unmute$Mutation$Unmute$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Unmute$Mutation$Unmute extends JsonSerializable with EquatableMixin {
  Unmute$Mutation$Unmute();

  factory Unmute$Mutation$Unmute.fromJson(Map<String, dynamic> json) =>
      _$Unmute$Mutation$UnmuteFromJson(json);

  bool? ok;

  List<Unmute$Mutation$Unmute$Errors>? errors;

  bool? nodes;

  @override
  List<Object?> get props => [ok, errors, nodes];
  @override
  Map<String, dynamic> toJson() => _$Unmute$Mutation$UnmuteToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Unmute$Mutation extends JsonSerializable with EquatableMixin {
  Unmute$Mutation();

  factory Unmute$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Unmute$MutationFromJson(json);

  late Unmute$Mutation$Unmute unmute;

  @override
  List<Object?> get props => [unmute];
  @override
  Map<String, dynamic> toJson() => _$Unmute$MutationToJson(this);
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
        displayLocation,
        coordinates,
        pictureUrl,
        relatedInterests,
        privacy,
        screened,
        filterLocation,
        filterRadius,
        filterGender,
        filterMinAge,
        filterMaxAge
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
        displayLocation,
        coordinates,
        pictureUrl,
        relatedInterests,
        privacy,
        screened,
        filterLocation,
        filterRadius,
        filterGender,
        filterMinAge,
        filterMaxAge
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
      {required this.chatDisabled,
      required this.coordinates,
      required this.creatorId,
      required this.description,
      required this.displayLocation,
      required this.filterGender,
      required this.filterLocation,
      required this.filterMaxAge,
      required this.filterMinAge,
      required this.filterRadius,
      this.groupId,
      this.id,
      required this.invitedIds,
      required this.location,
      this.pictureUrl,
      required this.privacy,
      required this.relatedInterestsIds,
      required this.screened,
      required this.time,
      required this.title,
      required this.wannagoIds});

  factory EventInput.fromJson(Map<String, dynamic> json) =>
      _$EventInputFromJson(json);

  late bool chatDisabled;

  @JsonKey(
      fromJson: fromGraphQLPointToDartGeoJsonPoint,
      toJson: fromDartGeoJsonPointToGraphQLPoint)
  late GeoJsonPoint coordinates;

  late int creatorId;

  late String description;

  late String displayLocation;

  @JsonKey(unknownEnumValue: Gender.artemisUnknown)
  late Gender filterGender;

  late String filterLocation;

  late int filterMaxAge;

  late int filterMinAge;

  late double filterRadius;

  int? groupId;

  int? id;

  late List<int> invitedIds;

  late String location;

  String? pictureUrl;

  @JsonKey(unknownEnumValue: Privacy.artemisUnknown)
  late Privacy privacy;

  late List<int> relatedInterestsIds;

  late bool screened;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime time;

  late String title;

  late List<int> wannagoIds;

  @override
  List<Object?> get props => [
        chatDisabled,
        coordinates,
        creatorId,
        description,
        displayLocation,
        filterGender,
        filterLocation,
        filterMaxAge,
        filterMinAge,
        filterRadius,
        groupId,
        id,
        invitedIds,
        location,
        pictureUrl,
        privacy,
        relatedInterestsIds,
        screened,
        time,
        title,
        wannagoIds
      ];
  @override
  Map<String, dynamic> toJson() => _$EventInputToJson(this);
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
class CreateGroup$Mutation$CreateGroup$Nodes extends JsonSerializable
    with EquatableMixin, GroupFieldsMixin {
  CreateGroup$Mutation$CreateGroup$Nodes();

  factory CreateGroup$Mutation$CreateGroup$Nodes.fromJson(
          Map<String, dynamic> json) =>
      _$CreateGroup$Mutation$CreateGroup$NodesFromJson(json);

  @override
  List<Object?> get props => [
        id,
        name,
        owner,
        users,
        requested,
        screened,
        private,
        location,
        displayLocation,
        relatedInterests,
        icon
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateGroup$Mutation$CreateGroup$NodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateGroup$Mutation$CreateGroup$Errors extends JsonSerializable
    with EquatableMixin {
  CreateGroup$Mutation$CreateGroup$Errors();

  factory CreateGroup$Mutation$CreateGroup$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$CreateGroup$Mutation$CreateGroup$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateGroup$Mutation$CreateGroup$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateGroup$Mutation$CreateGroup extends JsonSerializable
    with EquatableMixin {
  CreateGroup$Mutation$CreateGroup();

  factory CreateGroup$Mutation$CreateGroup.fromJson(
          Map<String, dynamic> json) =>
      _$CreateGroup$Mutation$CreateGroupFromJson(json);

  bool? ok;

  CreateGroup$Mutation$CreateGroup$Nodes? nodes;

  List<CreateGroup$Mutation$CreateGroup$Errors>? errors;

  @override
  List<Object?> get props => [ok, nodes, errors];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateGroup$Mutation$CreateGroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateGroup$Mutation extends JsonSerializable with EquatableMixin {
  CreateGroup$Mutation();

  factory CreateGroup$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateGroup$MutationFromJson(json);

  late CreateGroup$Mutation$CreateGroup createGroup;

  @override
  List<Object?> get props => [createGroup];
  @override
  Map<String, dynamic> toJson() => _$CreateGroup$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GroupInput extends JsonSerializable with EquatableMixin {
  GroupInput(
      {required this.displayLocation,
      required this.groupIconId,
      this.id,
      required this.location,
      required this.name,
      required this.owner,
      required this.private,
      required this.relatedInterestIds,
      required this.screened,
      required this.userIds});

  factory GroupInput.fromJson(Map<String, dynamic> json) =>
      _$GroupInputFromJson(json);

  late String displayLocation;

  late int groupIconId;

  int? id;

  @JsonKey(
      fromJson: fromGraphQLPointToDartGeoJsonPoint,
      toJson: fromDartGeoJsonPointToGraphQLPoint)
  late GeoJsonPoint location;

  late String name;

  late int owner;

  late bool private;

  late List<int> relatedInterestIds;

  late bool screened;

  late List<int> userIds;

  @override
  List<Object?> get props => [
        displayLocation,
        groupIconId,
        id,
        location,
        name,
        owner,
        private,
        relatedInterestIds,
        screened,
        userIds
      ];
  @override
  Map<String, dynamic> toJson() => _$GroupInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LeaveGroup$Mutation$LeaveGroup$Errors extends JsonSerializable
    with EquatableMixin {
  LeaveGroup$Mutation$LeaveGroup$Errors();

  factory LeaveGroup$Mutation$LeaveGroup$Errors.fromJson(
          Map<String, dynamic> json) =>
      _$LeaveGroup$Mutation$LeaveGroup$ErrorsFromJson(json);

  String? field;

  late String message;

  @override
  List<Object?> get props => [field, message];
  @override
  Map<String, dynamic> toJson() =>
      _$LeaveGroup$Mutation$LeaveGroup$ErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LeaveGroup$Mutation$LeaveGroup extends JsonSerializable
    with EquatableMixin {
  LeaveGroup$Mutation$LeaveGroup();

  factory LeaveGroup$Mutation$LeaveGroup.fromJson(Map<String, dynamic> json) =>
      _$LeaveGroup$Mutation$LeaveGroupFromJson(json);

  bool? nodes;

  List<LeaveGroup$Mutation$LeaveGroup$Errors>? errors;

  bool? ok;

  @override
  List<Object?> get props => [nodes, errors, ok];
  @override
  Map<String, dynamic> toJson() => _$LeaveGroup$Mutation$LeaveGroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LeaveGroup$Mutation extends JsonSerializable with EquatableMixin {
  LeaveGroup$Mutation();

  factory LeaveGroup$Mutation.fromJson(Map<String, dynamic> json) =>
      _$LeaveGroup$MutationFromJson(json);

  late LeaveGroup$Mutation$LeaveGroup leaveGroup;

  @override
  List<Object?> get props => [leaveGroup];
  @override
  Map<String, dynamic> toJson() => _$LeaveGroup$MutationToJson(this);
}

enum Privacy {
  @JsonValue('GROUP')
  group,
  @JsonValue('PRIVATE')
  private,
  @JsonValue('PUBLIC')
  public,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
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
class AcceptFriendArguments extends JsonSerializable with EquatableMixin {
  AcceptFriendArguments({required this.id});

  @override
  factory AcceptFriendArguments.fromJson(Map<String, dynamic> json) =>
      _$AcceptFriendArgumentsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$AcceptFriendArgumentsToJson(this);
}

final ACCEPT_FRIEND_MUTATION_DOCUMENT_OPERATION_NAME = 'acceptFriend';
final ACCEPT_FRIEND_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'acceptFriend'),
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
            name: NameNode(value: 'acceptFriend'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                  ])),
              FieldNode(
                  name: NameNode(value: 'ok'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class AcceptFriendMutation
    extends GraphQLQuery<AcceptFriend$Mutation, AcceptFriendArguments> {
  AcceptFriendMutation({required this.variables});

  @override
  final DocumentNode document = ACCEPT_FRIEND_MUTATION_DOCUMENT;

  @override
  final String operationName = ACCEPT_FRIEND_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final AcceptFriendArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AcceptFriend$Mutation parse(Map<String, dynamic> json) =>
      AcceptFriend$Mutation.fromJson(json);
}

final REMOVE_ACCOUNT_MUTATION_DOCUMENT_OPERATION_NAME = 'removeAccount';
final REMOVE_ACCOUNT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'removeAccount'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'removeAccount'),
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

class RemoveAccountMutation
    extends GraphQLQuery<RemoveAccount$Mutation, JsonSerializable> {
  RemoveAccountMutation();

  @override
  final DocumentNode document = REMOVE_ACCOUNT_MUTATION_DOCUMENT;

  @override
  final String operationName = REMOVE_ACCOUNT_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  RemoveAccount$Mutation parse(Map<String, dynamic> json) =>
      RemoveAccount$Mutation.fromJson(json);
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

final ADD_WANNAGO_MUTATION_DOCUMENT_OPERATION_NAME = 'addWannago';
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
                        name: NameNode(value: 'PublicEventFields'),
                        directives: [])
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
      name: NameNode(value: 'PublicEventFields'),
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
                  name: NameNode(value: 'PublicUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'invited'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'PublicUser'), directives: [])
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
                        name: NameNode(value: 'PublicUser'), directives: [])
                  ]))
            ])),
        FieldNode(
            name: NameNode(value: 'time'),
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
            name: NameNode(value: 'privacy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'screened'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
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
      name: NameNode(value: 'PublicUser'),
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

class AddWannagoMutation
    extends GraphQLQuery<AddWannago$Mutation, AddWannagoArguments> {
  AddWannagoMutation({required this.variables});

  @override
  final DocumentNode document = ADD_WANNAGO_MUTATION_DOCUMENT;

  @override
  final String operationName = ADD_WANNAGO_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final AddWannagoArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AddWannago$Mutation parse(Map<String, dynamic> json) =>
      AddWannago$Mutation.fromJson(json);
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

final UPDATE_EVENT_MUTATION_DOCUMENT_OPERATION_NAME = 'updateEvent';
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
                  name: NameNode(value: 'PublicUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'invited'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'PublicUser'), directives: [])
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
                        name: NameNode(value: 'PublicUser'), directives: [])
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
            name: NameNode(value: 'displayLocation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'coordinates'),
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
            name: NameNode(value: 'privacy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'screened'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
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
      name: NameNode(value: 'PublicUser'),
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

class UpdateEventMutation
    extends GraphQLQuery<UpdateEvent$Mutation, UpdateEventArguments> {
  UpdateEventMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_EVENT_MUTATION_DOCUMENT;

  @override
  final String operationName = UPDATE_EVENT_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UpdateEventArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdateEvent$Mutation parse(Map<String, dynamic> json) =>
      UpdateEvent$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdateGroupArguments extends JsonSerializable with EquatableMixin {
  UpdateGroupArguments({required this.groupInput});

  @override
  factory UpdateGroupArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateGroupArgumentsFromJson(json);

  late GroupFilterInput groupInput;

  @override
  List<Object?> get props => [groupInput];
  @override
  Map<String, dynamic> toJson() => _$UpdateGroupArgumentsToJson(this);
}

final UPDATE_GROUP_MUTATION_DOCUMENT_OPERATION_NAME = 'updateGroup';
final UPDATE_GROUP_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateGroup'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'groupInput')),
            type: NamedTypeNode(
                name: NameNode(value: 'GroupFilterInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateGroup'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'options'),
                  value: VariableNode(name: NameNode(value: 'groupInput')))
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
                        name: NameNode(value: 'GroupFields'), directives: [])
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
      name: NameNode(value: 'GroupFields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'Group'), isNonNull: false)),
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
            name: NameNode(value: 'owner'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'users'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'PublicUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'requested'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'PublicUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'screened'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'private'),
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
            name: NameNode(value: 'displayLocation'),
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
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'title'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'icon'),
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
                  name: NameNode(value: 'url'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'PublicUser'),
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

class UpdateGroupMutation
    extends GraphQLQuery<UpdateGroup$Mutation, UpdateGroupArguments> {
  UpdateGroupMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_GROUP_MUTATION_DOCUMENT;

  @override
  final String operationName = UPDATE_GROUP_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UpdateGroupArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdateGroup$Mutation parse(Map<String, dynamic> json) =>
      UpdateGroup$Mutation.fromJson(json);
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

final UPDATE_USER_MUTATION_DOCUMENT_OPERATION_NAME = 'updateUser';
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
                  name: NameNode(value: 'PublicUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'inverseFriends'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'PublicUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'friends'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'PublicUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'requestedFriends'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'PublicUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'friendRequests'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'PublicUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'groups'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'GroupFields'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'requestedGroups'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'GroupFields'), directives: [])
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
            ])),
        FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'location'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'PublicUser'),
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
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'GroupFields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'Group'), isNonNull: false)),
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
            name: NameNode(value: 'owner'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'users'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'PublicUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'requested'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'PublicUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'screened'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'private'),
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
            name: NameNode(value: 'displayLocation'),
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
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'title'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'icon'),
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
                  name: NameNode(value: 'url'),
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
  final String operationName = UPDATE_USER_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UpdateUserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdateUser$Mutation parse(Map<String, dynamic> json) =>
      UpdateUser$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AccessArguments extends JsonSerializable with EquatableMixin {
  AccessArguments({required this.id});

  @override
  factory AccessArguments.fromJson(Map<String, dynamic> json) =>
      _$AccessArgumentsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$AccessArgumentsToJson(this);
}

final ACCESS_MUTATION_DOCUMENT_OPERATION_NAME = 'access';
final ACCESS_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'access'),
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
            name: NameNode(value: 'access'),
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
                  selectionSet: null)
            ]))
      ]))
]);

class AccessMutation extends GraphQLQuery<Access$Mutation, AccessArguments> {
  AccessMutation({required this.variables});

  @override
  final DocumentNode document = ACCESS_MUTATION_DOCUMENT;

  @override
  final String operationName = ACCESS_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final AccessArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Access$Mutation parse(Map<String, dynamic> json) =>
      Access$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ForgotPasswordArguments extends JsonSerializable with EquatableMixin {
  ForgotPasswordArguments({required this.phone});

  @override
  factory ForgotPasswordArguments.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordArgumentsFromJson(json);

  late String phone;

  @override
  List<Object?> get props => [phone];
  @override
  Map<String, dynamic> toJson() => _$ForgotPasswordArgumentsToJson(this);
}

final FORGOT_PASSWORD_MUTATION_DOCUMENT_OPERATION_NAME = 'forgotPassword';
final FORGOT_PASSWORD_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'forgotPassword'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'phone')),
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
                  name: NameNode(value: 'phone'),
                  value: VariableNode(name: NameNode(value: 'phone')))
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
  final String operationName = FORGOT_PASSWORD_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final ForgotPasswordArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  ForgotPassword$Mutation parse(Map<String, dynamic> json) =>
      ForgotPassword$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UnfriendArguments extends JsonSerializable with EquatableMixin {
  UnfriendArguments({required this.id});

  @override
  factory UnfriendArguments.fromJson(Map<String, dynamic> json) =>
      _$UnfriendArgumentsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$UnfriendArgumentsToJson(this);
}

final UNFRIEND_MUTATION_DOCUMENT_OPERATION_NAME = 'unfriend';
final UNFRIEND_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'unfriend'),
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
            name: NameNode(value: 'unfriend'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                  ])),
              FieldNode(
                  name: NameNode(value: 'ok'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class UnfriendMutation
    extends GraphQLQuery<Unfriend$Mutation, UnfriendArguments> {
  UnfriendMutation({required this.variables});

  @override
  final DocumentNode document = UNFRIEND_MUTATION_DOCUMENT;

  @override
  final String operationName = UNFRIEND_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UnfriendArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Unfriend$Mutation parse(Map<String, dynamic> json) =>
      Unfriend$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CheckValidationArguments extends JsonSerializable with EquatableMixin {
  CheckValidationArguments({required this.code});

  @override
  factory CheckValidationArguments.fromJson(Map<String, dynamic> json) =>
      _$CheckValidationArgumentsFromJson(json);

  late String code;

  @override
  List<Object?> get props => [code];
  @override
  Map<String, dynamic> toJson() => _$CheckValidationArgumentsToJson(this);
}

final CHECK_VALIDATION_MUTATION_DOCUMENT_OPERATION_NAME = 'checkValidation';
final CHECK_VALIDATION_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'checkValidation'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'code')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'checkValidation'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'code'),
                  value: VariableNode(name: NameNode(value: 'code')))
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

class CheckValidationMutation
    extends GraphQLQuery<CheckValidation$Mutation, CheckValidationArguments> {
  CheckValidationMutation({required this.variables});

  @override
  final DocumentNode document = CHECK_VALIDATION_MUTATION_DOCUMENT;

  @override
  final String operationName =
      CHECK_VALIDATION_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CheckValidationArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CheckValidation$Mutation parse(Map<String, dynamic> json) =>
      CheckValidation$Mutation.fromJson(json);
}

final SEND_CODE_MUTATION_DOCUMENT_OPERATION_NAME = 'sendCode';
final SEND_CODE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'sendCode'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'sendCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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

class SendCodeMutation
    extends GraphQLQuery<SendCode$Mutation, JsonSerializable> {
  SendCodeMutation();

  @override
  final DocumentNode document = SEND_CODE_MUTATION_DOCUMENT;

  @override
  final String operationName = SEND_CODE_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  SendCode$Mutation parse(Map<String, dynamic> json) =>
      SendCode$Mutation.fromJson(json);
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

final ADD_INTERESTS_MUTATION_DOCUMENT_OPERATION_NAME = 'addInterests';
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
  final String operationName = ADD_INTERESTS_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final AddInterestsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AddInterests$Mutation parse(Map<String, dynamic> json) =>
      AddInterests$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CheckValidationLoginArguments extends JsonSerializable
    with EquatableMixin {
  CheckValidationLoginArguments({required this.code, required this.phone});

  @override
  factory CheckValidationLoginArguments.fromJson(Map<String, dynamic> json) =>
      _$CheckValidationLoginArgumentsFromJson(json);

  late String code;

  late String phone;

  @override
  List<Object?> get props => [code, phone];
  @override
  Map<String, dynamic> toJson() => _$CheckValidationLoginArgumentsToJson(this);
}

final CHECK_VALIDATION_LOGIN_MUTATION_DOCUMENT_OPERATION_NAME =
    'checkValidationLogin';
final CHECK_VALIDATION_LOGIN_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'checkValidationLogin'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'code')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'phone')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'checkValidationLogin'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'code'),
                  value: VariableNode(name: NameNode(value: 'code'))),
              ArgumentNode(
                  name: NameNode(value: 'phone'),
                  value: VariableNode(name: NameNode(value: 'phone')))
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

class CheckValidationLoginMutation extends GraphQLQuery<
    CheckValidationLogin$Mutation, CheckValidationLoginArguments> {
  CheckValidationLoginMutation({required this.variables});

  @override
  final DocumentNode document = CHECK_VALIDATION_LOGIN_MUTATION_DOCUMENT;

  @override
  final String operationName =
      CHECK_VALIDATION_LOGIN_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CheckValidationLoginArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CheckValidationLogin$Mutation parse(Map<String, dynamic> json) =>
      CheckValidationLogin$Mutation.fromJson(json);
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

final LOGIN_MUTATION_DOCUMENT_OPERATION_NAME = 'login';
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
  final String operationName = LOGIN_MUTATION_DOCUMENT_OPERATION_NAME;

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

final REGISTER_MUTATION_DOCUMENT_OPERATION_NAME = 'register';
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
  final String operationName = REGISTER_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final RegisterArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Register$Mutation parse(Map<String, dynamic> json) =>
      Register$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class MuteArguments extends JsonSerializable with EquatableMixin {
  MuteArguments({required this.id});

  @override
  factory MuteArguments.fromJson(Map<String, dynamic> json) =>
      _$MuteArgumentsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$MuteArgumentsToJson(this);
}

final MUTE_MUTATION_DOCUMENT_OPERATION_NAME = 'mute';
final MUTE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'mute'),
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
            name: NameNode(value: 'mute'),
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
                  selectionSet: null)
            ]))
      ]))
]);

class MuteMutation extends GraphQLQuery<Mute$Mutation, MuteArguments> {
  MuteMutation({required this.variables});

  @override
  final DocumentNode document = MUTE_MUTATION_DOCUMENT;

  @override
  final String operationName = MUTE_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final MuteArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Mute$Mutation parse(Map<String, dynamic> json) =>
      Mute$Mutation.fromJson(json);
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

final UPDATE_PHOTOS_MUTATION_DOCUMENT_OPERATION_NAME = 'updatePhotos';
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
  final String operationName = UPDATE_PHOTOS_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UpdatePhotosArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdatePhotos$Mutation parse(Map<String, dynamic> json) =>
      UpdatePhotos$Mutation.fromJson(json);
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

final CREATE_FORUM_MUTATION_DOCUMENT_OPERATION_NAME = 'createForum';
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
                    FragmentSpreadNode(
                        name: NameNode(value: 'ForumFields'), directives: [])
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
            name: NameNode(value: 'chatDisabled'),
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
            name: NameNode(value: 'moderators'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'PublicUser'), directives: [])
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
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'PublicUser'),
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

class CreateForumMutation
    extends GraphQLQuery<CreateForum$Mutation, CreateForumArguments> {
  CreateForumMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_FORUM_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_FORUM_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateForumArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateForum$Mutation parse(Map<String, dynamic> json) =>
      CreateForum$Mutation.fromJson(json);
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

final FLAG_EVENT_MUTATION_DOCUMENT_OPERATION_NAME = 'flagEvent';
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
  final String operationName = FLAG_EVENT_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final FlagEventArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FlagEvent$Mutation parse(Map<String, dynamic> json) =>
      FlagEvent$Mutation.fromJson(json);
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

final BLOCK_USER_MUTATION_DOCUMENT_OPERATION_NAME = 'blockUser';
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
  final String operationName = BLOCK_USER_MUTATION_DOCUMENT_OPERATION_NAME;

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
  CreateChatArguments({required this.chatInput, this.surveyInput});

  @override
  factory CreateChatArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateChatArgumentsFromJson(json);

  late ChatInput chatInput;

  final SurveyInput? surveyInput;

  @override
  List<Object?> get props => [chatInput, surveyInput];
  @override
  Map<String, dynamic> toJson() => _$CreateChatArgumentsToJson(this);
}

final CREATE_CHAT_MUTATION_DOCUMENT_OPERATION_NAME = 'createChat';
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
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'surveyInput')),
            type: NamedTypeNode(
                name: NameNode(value: 'SurveyInput'), isNonNull: false),
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
                  value: VariableNode(name: NameNode(value: 'chatInput'))),
              ArgumentNode(
                  name: NameNode(value: 'surveyOptions'),
                  value: VariableNode(name: NameNode(value: 'surveyInput')))
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
                          FragmentSpreadNode(
                              name: NameNode(value: 'PublicUser'),
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
      name: NameNode(value: 'PublicUser'),
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

class CreateChatMutation
    extends GraphQLQuery<CreateChat$Mutation, CreateChatArguments> {
  CreateChatMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_CHAT_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_CHAT_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateChatArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateChat$Mutation parse(Map<String, dynamic> json) =>
      CreateChat$Mutation.fromJson(json);
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

final DELETE_EVENT_MUTATION_DOCUMENT_OPERATION_NAME = 'deleteEvent';
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
  final String operationName = DELETE_EVENT_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final DeleteEventArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  DeleteEvent$Mutation parse(Map<String, dynamic> json) =>
      DeleteEvent$Mutation.fromJson(json);
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

final UPDATE_WANNAGO_MUTATION_DOCUMENT_OPERATION_NAME = 'updateWannago';
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
  final String operationName = UPDATE_WANNAGO_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UpdateWannagoArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdateWannago$Mutation parse(Map<String, dynamic> json) =>
      UpdateWannago$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class RemoveInviteArguments extends JsonSerializable with EquatableMixin {
  RemoveInviteArguments({required this.eventId, required this.userId});

  @override
  factory RemoveInviteArguments.fromJson(Map<String, dynamic> json) =>
      _$RemoveInviteArgumentsFromJson(json);

  late int eventId;

  late int userId;

  @override
  List<Object?> get props => [eventId, userId];
  @override
  Map<String, dynamic> toJson() => _$RemoveInviteArgumentsToJson(this);
}

final REMOVE_INVITE_MUTATION_DOCUMENT_OPERATION_NAME = 'removeInvite';
final REMOVE_INVITE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'removeInvite'),
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
            name: NameNode(value: 'removeInvite'),
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
                  name: NameNode(value: 'PublicUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'invited'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'PublicUser'), directives: [])
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
                        name: NameNode(value: 'PublicUser'), directives: [])
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
            name: NameNode(value: 'displayLocation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'coordinates'),
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
            name: NameNode(value: 'privacy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'screened'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
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
      name: NameNode(value: 'PublicUser'),
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

class RemoveInviteMutation
    extends GraphQLQuery<RemoveInvite$Mutation, RemoveInviteArguments> {
  RemoveInviteMutation({required this.variables});

  @override
  final DocumentNode document = REMOVE_INVITE_MUTATION_DOCUMENT;

  @override
  final String operationName = REMOVE_INVITE_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final RemoveInviteArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  RemoveInvite$Mutation parse(Map<String, dynamic> json) =>
      RemoveInvite$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdateForumArguments extends JsonSerializable with EquatableMixin {
  UpdateForumArguments({required this.options});

  @override
  factory UpdateForumArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateForumArgumentsFromJson(json);

  late ForumFilterInput options;

  @override
  List<Object?> get props => [options];
  @override
  Map<String, dynamic> toJson() => _$UpdateForumArgumentsToJson(this);
}

final UPDATE_FORUM_MUTATION_DOCUMENT_OPERATION_NAME = 'updateForum';
final UPDATE_FORUM_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateForum'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'options')),
            type: NamedTypeNode(
                name: NameNode(value: 'ForumFilterInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateForum'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'options'),
                  value: VariableNode(name: NameNode(value: 'options')))
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
                        name: NameNode(value: 'ForumFields'), directives: [])
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
            name: NameNode(value: 'chatDisabled'),
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
            name: NameNode(value: 'moderators'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'PublicUser'), directives: [])
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
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'PublicUser'),
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

class UpdateForumMutation
    extends GraphQLQuery<UpdateForum$Mutation, UpdateForumArguments> {
  UpdateForumMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_FORUM_MUTATION_DOCUMENT;

  @override
  final String operationName = UPDATE_FORUM_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UpdateForumArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdateForum$Mutation parse(Map<String, dynamic> json) =>
      UpdateForum$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class RequestFriendArguments extends JsonSerializable with EquatableMixin {
  RequestFriendArguments({required this.id});

  @override
  factory RequestFriendArguments.fromJson(Map<String, dynamic> json) =>
      _$RequestFriendArgumentsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$RequestFriendArgumentsToJson(this);
}

final REQUEST_FRIEND_MUTATION_DOCUMENT_OPERATION_NAME = 'requestFriend';
final REQUEST_FRIEND_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'requestFriend'),
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
            name: NameNode(value: 'requestFriend'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                  ])),
              FieldNode(
                  name: NameNode(value: 'ok'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class RequestFriendMutation
    extends GraphQLQuery<RequestFriend$Mutation, RequestFriendArguments> {
  RequestFriendMutation({required this.variables});

  @override
  final DocumentNode document = REQUEST_FRIEND_MUTATION_DOCUMENT;

  @override
  final String operationName = REQUEST_FRIEND_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final RequestFriendArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  RequestFriend$Mutation parse(Map<String, dynamic> json) =>
      RequestFriend$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class RequestGroupArguments extends JsonSerializable with EquatableMixin {
  RequestGroupArguments({required this.id});

  @override
  factory RequestGroupArguments.fromJson(Map<String, dynamic> json) =>
      _$RequestGroupArgumentsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$RequestGroupArgumentsToJson(this);
}

final REQUEST_GROUP_MUTATION_DOCUMENT_OPERATION_NAME = 'requestGroup';
final REQUEST_GROUP_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'requestGroup'),
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
            name: NameNode(value: 'requestGroup'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                  ])),
              FieldNode(
                  name: NameNode(value: 'ok'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class RequestGroupMutation
    extends GraphQLQuery<RequestGroup$Mutation, RequestGroupArguments> {
  RequestGroupMutation({required this.variables});

  @override
  final DocumentNode document = REQUEST_GROUP_MUTATION_DOCUMENT;

  @override
  final String operationName = REQUEST_GROUP_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final RequestGroupArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  RequestGroup$Mutation parse(Map<String, dynamic> json) =>
      RequestGroup$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateReferralArguments extends JsonSerializable with EquatableMixin {
  CreateReferralArguments({required this.phone, this.eventId, this.groupId});

  @override
  factory CreateReferralArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateReferralArgumentsFromJson(json);

  late String phone;

  final int? eventId;

  final int? groupId;

  @override
  List<Object?> get props => [phone, eventId, groupId];
  @override
  Map<String, dynamic> toJson() => _$CreateReferralArgumentsToJson(this);
}

final CREATE_REFERRAL_MUTATION_DOCUMENT_OPERATION_NAME = 'createReferral';
final CREATE_REFERRAL_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createReferral'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'phone')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'eventId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'groupId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'createReferral'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'phone'),
                  value: VariableNode(name: NameNode(value: 'phone'))),
              ArgumentNode(
                  name: NameNode(value: 'eventId'),
                  value: VariableNode(name: NameNode(value: 'eventId'))),
              ArgumentNode(
                  name: NameNode(value: 'groupId'),
                  value: VariableNode(name: NameNode(value: 'groupId')))
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

class CreateReferralMutation
    extends GraphQLQuery<CreateReferral$Mutation, CreateReferralArguments> {
  CreateReferralMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_REFERRAL_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_REFERRAL_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateReferralArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateReferral$Mutation parse(Map<String, dynamic> json) =>
      CreateReferral$Mutation.fromJson(json);
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

final CREATE_INTEREST_MUTATION_DOCUMENT_OPERATION_NAME = 'createInterest';
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
  final String operationName = CREATE_INTEREST_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateInterestArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateInterest$Mutation parse(Map<String, dynamic> json) =>
      CreateInterest$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UnblockUserArguments extends JsonSerializable with EquatableMixin {
  UnblockUserArguments({required this.userId});

  @override
  factory UnblockUserArguments.fromJson(Map<String, dynamic> json) =>
      _$UnblockUserArgumentsFromJson(json);

  late int userId;

  @override
  List<Object?> get props => [userId];
  @override
  Map<String, dynamic> toJson() => _$UnblockUserArgumentsToJson(this);
}

final UNBLOCK_USER_MUTATION_DOCUMENT_OPERATION_NAME = 'unblockUser';
final UNBLOCK_USER_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'unblockUser'),
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
            name: NameNode(value: 'unblockUser'),
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

class UnblockUserMutation
    extends GraphQLQuery<UnblockUser$Mutation, UnblockUserArguments> {
  UnblockUserMutation({required this.variables});

  @override
  final DocumentNode document = UNBLOCK_USER_MUTATION_DOCUMENT;

  @override
  final String operationName = UNBLOCK_USER_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UnblockUserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UnblockUser$Mutation parse(Map<String, dynamic> json) =>
      UnblockUser$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UnrequestFriendArguments extends JsonSerializable with EquatableMixin {
  UnrequestFriendArguments({required this.id});

  @override
  factory UnrequestFriendArguments.fromJson(Map<String, dynamic> json) =>
      _$UnrequestFriendArgumentsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$UnrequestFriendArgumentsToJson(this);
}

final UNREQUEST_FRIEND_MUTATION_DOCUMENT_OPERATION_NAME = 'unrequestFriend';
final UNREQUEST_FRIEND_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'unrequestFriend'),
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
            name: NameNode(value: 'unrequestFriend'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                  ])),
              FieldNode(
                  name: NameNode(value: 'ok'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class UnrequestFriendMutation
    extends GraphQLQuery<UnrequestFriend$Mutation, UnrequestFriendArguments> {
  UnrequestFriendMutation({required this.variables});

  @override
  final DocumentNode document = UNREQUEST_FRIEND_MUTATION_DOCUMENT;

  @override
  final String operationName =
      UNREQUEST_FRIEND_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UnrequestFriendArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UnrequestFriend$Mutation parse(Map<String, dynamic> json) =>
      UnrequestFriend$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class VoteArguments extends JsonSerializable with EquatableMixin {
  VoteArguments(
      {required this.chatId, required this.answerId, required this.forumId});

  @override
  factory VoteArguments.fromJson(Map<String, dynamic> json) =>
      _$VoteArgumentsFromJson(json);

  late int chatId;

  late int answerId;

  late int forumId;

  @override
  List<Object?> get props => [chatId, answerId, forumId];
  @override
  Map<String, dynamic> toJson() => _$VoteArgumentsToJson(this);
}

final VOTE_MUTATION_DOCUMENT_OPERATION_NAME = 'vote';
final VOTE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'vote'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'chatId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'answerId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'forumId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'vote'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'chatId'),
                  value: VariableNode(name: NameNode(value: 'chatId'))),
              ArgumentNode(
                  name: NameNode(value: 'answerId'),
                  value: VariableNode(name: NameNode(value: 'answerId'))),
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

class VoteMutation extends GraphQLQuery<Vote$Mutation, VoteArguments> {
  VoteMutation({required this.variables});

  @override
  final DocumentNode document = VOTE_MUTATION_DOCUMENT;

  @override
  final String operationName = VOTE_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final VoteArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Vote$Mutation parse(Map<String, dynamic> json) =>
      Vote$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UnmuteArguments extends JsonSerializable with EquatableMixin {
  UnmuteArguments({required this.id});

  @override
  factory UnmuteArguments.fromJson(Map<String, dynamic> json) =>
      _$UnmuteArgumentsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$UnmuteArgumentsToJson(this);
}

final UNMUTE_MUTATION_DOCUMENT_OPERATION_NAME = 'unmute';
final UNMUTE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'unmute'),
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
            name: NameNode(value: 'unmute'),
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
                  selectionSet: null)
            ]))
      ]))
]);

class UnmuteMutation extends GraphQLQuery<Unmute$Mutation, UnmuteArguments> {
  UnmuteMutation({required this.variables});

  @override
  final DocumentNode document = UNMUTE_MUTATION_DOCUMENT;

  @override
  final String operationName = UNMUTE_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UnmuteArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Unmute$Mutation parse(Map<String, dynamic> json) =>
      Unmute$Mutation.fromJson(json);
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

final ADD_INVITE_MUTATION_DOCUMENT_OPERATION_NAME = 'addInvite';
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
                  name: NameNode(value: 'PublicUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'invited'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'PublicUser'), directives: [])
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
                        name: NameNode(value: 'PublicUser'), directives: [])
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
            name: NameNode(value: 'displayLocation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'coordinates'),
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
            name: NameNode(value: 'privacy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'screened'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
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
      name: NameNode(value: 'PublicUser'),
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

class AddInviteMutation
    extends GraphQLQuery<AddInvite$Mutation, AddInviteArguments> {
  AddInviteMutation({required this.variables});

  @override
  final DocumentNode document = ADD_INVITE_MUTATION_DOCUMENT;

  @override
  final String operationName = ADD_INVITE_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final AddInviteArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AddInvite$Mutation parse(Map<String, dynamic> json) =>
      AddInvite$Mutation.fromJson(json);
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

final FLAG_USER_MUTATION_DOCUMENT_OPERATION_NAME = 'flagUser';
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
  final String operationName = FLAG_USER_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final FlagUserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FlagUser$Mutation parse(Map<String, dynamic> json) =>
      FlagUser$Mutation.fromJson(json);
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

final CREATE_EVENT_MUTATION_DOCUMENT_OPERATION_NAME = 'createEvent';
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
                  name: NameNode(value: 'PublicUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'invited'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'PublicUser'), directives: [])
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
                        name: NameNode(value: 'PublicUser'), directives: [])
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
            name: NameNode(value: 'displayLocation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'coordinates'),
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
            name: NameNode(value: 'privacy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'screened'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
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
      name: NameNode(value: 'PublicUser'),
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

class CreateEventMutation
    extends GraphQLQuery<CreateEvent$Mutation, CreateEventArguments> {
  CreateEventMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_EVENT_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_EVENT_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateEventArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateEvent$Mutation parse(Map<String, dynamic> json) =>
      CreateEvent$Mutation.fromJson(json);
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

final DELETE_WANNAGO_MUTATION_DOCUMENT_OPERATION_NAME = 'deleteWannago';
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
  final String operationName = DELETE_WANNAGO_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final DeleteWannagoArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  DeleteWannago$Mutation parse(Map<String, dynamic> json) =>
      DeleteWannago$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateGroupArguments extends JsonSerializable with EquatableMixin {
  CreateGroupArguments({required this.groupInput});

  @override
  factory CreateGroupArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateGroupArgumentsFromJson(json);

  late GroupInput groupInput;

  @override
  List<Object?> get props => [groupInput];
  @override
  Map<String, dynamic> toJson() => _$CreateGroupArgumentsToJson(this);
}

final CREATE_GROUP_MUTATION_DOCUMENT_OPERATION_NAME = 'createGroup';
final CREATE_GROUP_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createGroup'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'groupInput')),
            type: NamedTypeNode(
                name: NameNode(value: 'GroupInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'createGroup'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'options'),
                  value: VariableNode(name: NameNode(value: 'groupInput')))
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
                        name: NameNode(value: 'GroupFields'), directives: [])
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
      name: NameNode(value: 'GroupFields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'Group'), isNonNull: false)),
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
            name: NameNode(value: 'owner'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'users'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'PublicUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'requested'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'PublicUser'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'screened'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'private'),
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
            name: NameNode(value: 'displayLocation'),
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
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'title'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'icon'),
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
                  name: NameNode(value: 'url'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'PublicUser'),
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

class CreateGroupMutation
    extends GraphQLQuery<CreateGroup$Mutation, CreateGroupArguments> {
  CreateGroupMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_GROUP_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_GROUP_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateGroupArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateGroup$Mutation parse(Map<String, dynamic> json) =>
      CreateGroup$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class LeaveGroupArguments extends JsonSerializable with EquatableMixin {
  LeaveGroupArguments({required this.id});

  @override
  factory LeaveGroupArguments.fromJson(Map<String, dynamic> json) =>
      _$LeaveGroupArgumentsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$LeaveGroupArgumentsToJson(this);
}

final LEAVE_GROUP_MUTATION_DOCUMENT_OPERATION_NAME = 'leaveGroup';
final LEAVE_GROUP_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'leaveGroup'),
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
            name: NameNode(value: 'leaveGroup'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                  ])),
              FieldNode(
                  name: NameNode(value: 'ok'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class LeaveGroupMutation
    extends GraphQLQuery<LeaveGroup$Mutation, LeaveGroupArguments> {
  LeaveGroupMutation({required this.variables});

  @override
  final DocumentNode document = LEAVE_GROUP_MUTATION_DOCUMENT;

  @override
  final String operationName = LEAVE_GROUP_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final LeaveGroupArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  LeaveGroup$Mutation parse(Map<String, dynamic> json) =>
      LeaveGroup$Mutation.fromJson(json);
}
