import 'package:whatado/models/event_user.dart';

class Answer {
  int id;
  List<EventUser> votes;
  String text;

  Answer({required this.id, required this.votes, required this.text});

  factory Answer.fromGqlData(Map data) {
    return Answer(
        id: data['id'],
        text: data['text'] ?? '',
        votes: List<EventUser>.from(
            data['votes']?.map((v) => EventUser.fromGqlData(v)) ?? []));
  }
}
