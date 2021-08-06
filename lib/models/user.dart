import 'package:whatado/models/interest.dart';

class User {
  int id;
  String email;
  String name;
  String imageUrl;
  String bio;
  List<Interest> interests;
  List<String> photoUrls;
  User({
    required this.id,
    required this.email,
    required this.name,
    required this.imageUrl,
    this.bio = '',
    this.photoUrls = const [],
    this.interests = const [],
  });

  static User? fromGqlData(Map? data) {
    if (data == null || data.isEmpty) return null;
    return User(
      id: data['id'],
      email: data['email'] ?? '',
      imageUrl: data['profilePhotoUrl'] ?? '',
      name: data['username'] ?? '',
      bio: data['bio'] ?? '',
      photoUrls: data['photoUrls'] ?? [],
    );
  }
}
