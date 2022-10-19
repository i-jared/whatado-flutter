import 'package:whatado/models/event_user.dart';

class FriendRequest {
  int id;
  PublicUser? requested;
  PublicUser? requester;
  bool declined;

  FriendRequest({
    required this.id,
    this.requester,
    this.requested,
    required this.declined,
  });
  factory FriendRequest.fromGqlData(Map data) {
    return FriendRequest(
      id: data['id'],
      requested: data['requested'] == null ? null : PublicUser.fromGqlData(data['requested']),
      requester: data['requester'] == null ? null : PublicUser.fromGqlData((data['requester'])),
      declined: data['declined'],
    );
  }
}
