import 'package:whatado/models/user.dart';

class Answer {
  List<User> votes;
  String text;

  Answer({required this.votes, required this.text});

  factory Answer.fromGqlData(Map data) {
    return Answer(
        text: data['text'] ?? '',
        votes: List<User>.from(
            data['votes']?.map((v) => User.fromGqlData(v)) ?? []));
  }
}
