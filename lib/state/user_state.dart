import 'package:flutter/material.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';

class UserState extends ChangeNotifier {
  User? _user;

  UserState() {
    getUser();
  }

  Future<void> save(List<Interest> interests, String bio) async {
    final provider = UserGqlProvider();
    if (interests != _user!.interests) {
      final strings = interests.map((interest) => interest.title).toList();
      await provider.addInterests(strings);
      _user!.interests = interests;
    }
    if (bio != _user!.bio) {
      await provider.updateBio(bio);
      _user!.bio = bio;
    }
    notifyListeners();
  }

  Future<void> getUser() async {
    final query = UserGqlProvider();
    final response = await query.me();
    _user = response.data;
    notifyListeners();
  }

  User? get user => _user;
  set user(User? user) {
    _user = user;
    notifyListeners();
  }
}
