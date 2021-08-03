import 'package:whatado/models/interest.dart';

class User {
  String email;
  String name;
  String imageUrl;
  List<Interest> interests;
  User(
      {required this.email,
      required this.name,
      required this.imageUrl,
      this.interests = const []});
}
