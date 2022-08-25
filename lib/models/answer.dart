import 'package:whatado/models/event_user.dart';

class Answer {
  int id;
  List<PublicUser> votes;
  String text;

  Answer({required this.id, required this.votes, required this.text});

  factory Answer.fromGqlData(Map data) {
    return Answer(
        id: data['id'],
        text: data['text'] ?? '',
        votes: List<PublicUser>.from(data['votes']?.map((v) => PublicUser.fromGqlData(v)) ?? []));
  }
}
