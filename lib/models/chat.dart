import 'package:whatado/models/event_user.dart';

class Chat {
  int id;
  DateTime createdAt;
  String text;
  EventUser author;

  Chat({
    required this.id,
    required this.createdAt,
    required this.text,
    required this.author,
  });

  factory Chat.fromGqlData(Map data) {
    return Chat(
        id: data['id'],
        createdAt: DateTime.parse(data['createdAt']),
        text: data['text'],
        author: EventUser.fromGqlData(data['author']));
  }
}
