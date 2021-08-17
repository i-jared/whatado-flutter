import 'package:whatado/models/forum.dart';
import 'package:whatado/models/user.dart';

class Chat {
  int id;
  DateTime createdAt;
  String text;
  User author;
  Forum forum;

  Chat(
      {required this.id,
      required this.createdAt,
      required this.text,
      required this.author,
      required this.forum});

  factory Chat.fromGqlData(Map data) {
    return Chat(
        id: data['id'],
        createdAt: data['createdAt'],
        text: data['text'],
        author: User.fromGqlData(data['author']),
        forum: Forum.fromGqlData(data['forum']));
  }
}
