import 'package:whatado/models/forum.dart';
import 'package:whatado/models/user.dart';

class ChatNotification {
  int id;
  int notifications;
  Forum forum;
  User user;

  ChatNotification(
      {required this.id,
      required this.notifications,
      required this.forum,
      required this.user});
  factory ChatNotification.fromGqlData(Map data) {
    return ChatNotification(
        id: data['id'],
        notifications: data['notifications'],
        forum: Forum.fromGqlData(data['forum']),
        user: User.fromGqlData(data['user']));
  }
}
