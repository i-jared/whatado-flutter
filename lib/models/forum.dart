import 'package:whatado/models/chat.dart';
import 'package:whatado/models/chat_notification.dart';

class Forum {
  int id;
  ChatNotification userNotification;
  List<Chat> chats;
  int eventId;

  Forum(
      {required this.id,
      required this.eventId,
      required this.userNotification,
      this.chats = const []});

  factory Forum.fromGqlData(Map data) {
    return Forum(
        id: data['id'],
        eventId: data['event']['id'],
        userNotification: ChatNotification.fromGqlData(
            (data['userNotifications'] as List).first),
        chats: data['chats'] == null
            ? []
            : (data['chats'] as List)
                .map((val) => Chat.fromGqlData(val))
                .toList());
  }
}
