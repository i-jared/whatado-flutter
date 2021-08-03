import 'package:whatado/models/interest.dart';

class User {
  String email;
  String name;
  String imageUrl;
  String bio;
  List<Interest> interests;
  List<String> photoUrls;
  User({
    required this.email,
    required this.name,
    required this.imageUrl,
    this.bio = '',
    this.photoUrls = const [],
    this.interests = const [],
  });
}
