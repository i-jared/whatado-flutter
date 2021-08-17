import 'package:flutter/cupertino.dart';
import 'package:whatado/models/chat.dart';
import 'package:whatado/models/chat_notification.dart';
import 'package:whatado/models/event.dart';

class Forum {
  int id;
  List<ChatNotification> userNotifications;
  List<Chat> chats;
  Event event;

  Forum(
      {required this.id,
      required this.event,
      this.userNotifications = const [],
      this.chats = const []});
  factory Forum.fromGqlData(Map data) {
    return Forum(
        event: Event.fromGqlData(data['event']),
        id: data['id'],
        userNotifications: (data['chatNotifications'] as List)
            .map((val) => ChatNotification.fromGqlData(val))
            .toList(),
        chats: (data['chats'] as List)
            .map((val) => Chat.fromGqlData(val))
            .toList());
  }
}
