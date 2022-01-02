import 'package:whatado/models/answer.dart';

class Survey {
  String question;
  List<Answer> answers;

  Survey({
    required this.question,
    required this.answers,
  });

  factory Survey.fromGqlData(Map data) {
    return Survey(
      question: data['question'],
      answers: List<Answer>.from(
          data['answers']?.map((obj) => Answer.fromGqlData(obj)).toList() ??
              []),
    );
  }
}
