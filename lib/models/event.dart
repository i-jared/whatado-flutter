import 'package:whatado/models/user.dart';

class Event {
  User creator;
  String title;
  String description;
  String imageUrl;
  DateTime date;
  String location;

  Event(
      {required this.creator,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.date,
      required this.location});
}
