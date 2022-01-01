//TODO track who votes for what...
class Survey {
  String question;
  List<String> answers;
  List<int> votes;

  Survey({
    required this.question,
    required this.answers,
    required this.votes,
  });

  factory Survey.fromGqlData(Map data) {
    return Survey(
      question: data['question'],
      answers: List<String>.from(data['answers']),
      votes: List<int>.from(data['votes']),
    );
  }
}
