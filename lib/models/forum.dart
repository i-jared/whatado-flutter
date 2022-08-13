import 'package:whatado/models/chat.dart';
import 'package:whatado/models/chat_notification.dart';

class Forum {
  int id;
  DateTime updatedAt;
  ChatNotification userNotification;
  List<Chat> chats;
  int eventId;
  Chat? lastMessage;
  bool chatDisabled;
  int? ownerId;

  Forum(
      {required this.id,
      required this.updatedAt,
      required this.eventId,
      required this.userNotification,
      this.chatDisabled = false,
      this.ownerId,
      this.chats = const []});

  factory Forum.fromGqlData(Map data) {
    print('jcl $data');
    return Forum(
        id: data['id'],
        ownerId: data['ownerId'],
        chatDisabled: data['chatDisabled'] ?? false,
        updatedAt: DateTime.parse(data['updatedAt']),
        eventId: data['event']['id'],
        userNotification:
            ChatNotification.fromGqlData((data['userNotifications'] as List).first),
        chats: data['chats'] == null
            ? []
            : (data['chats'] as List).map((val) => Chat.fromGqlData(val)).toList());
  }
}
