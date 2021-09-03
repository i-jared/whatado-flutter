import 'package:flutter/material.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';

class UserState extends ChangeNotifier {
  User? _user;

  User? get user => _user;

  set user(User? user) {
    _user = user;
    notifyListeners();
  }

  UserState() {
    getUser();
  }

  Future<void> getUser() async {
    final query = UserGqlProvider();
    final response = await query.me();
    user = response.data;
    notifyListeners();
  }
}
