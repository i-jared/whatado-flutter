import 'package:flutter/material.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/providers/graphql/me_query.dart';

class UserState extends ChangeNotifier {
  User? _user;

  User? get user => _user;

  set user(User? user) {
    _user = user;
    notifyListeners();
  }

  UserState() {
    initUser();
  }

  Future<void> initUser() async {
    final query = MeGqlQuery();
    final response = await query.me();
    user = response.data;
  }
}
