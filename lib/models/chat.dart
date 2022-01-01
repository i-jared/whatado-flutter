import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/survey.dart';

class Chat {
  int id;
  DateTime createdAt;
  String text;
  EventUser author;
  Survey? survey;

  Chat({
    required this.id,
    required this.createdAt,
    required this.text,
    required this.author,
    this.survey,
  });

  factory Chat.fromGqlData(Map data) {
    return Chat(
        id: data['id'],
        createdAt: DateTime.parse(data['createdAt']),
        text: data['text'],
        author: data['author'] == null
            ? EventUser(
                id: 0,
                name: 'n/a',
                bio: 'n/a',
                photoUrls: [
                  'https://styles.redditmedia.com/t5_2ldvug/styles/communityIcon_aq22b2qb50u41.png'
                ],
                birthday: DateTime.now())
            : EventUser.fromGqlData(data['author']),
        survey:
            data['survey'] == null ? null : Survey.fromGqlData(data['survey']));
  }
}
