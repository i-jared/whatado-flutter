import 'package:flutter/material.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/providers/graphql/interest_provider.dart';
import 'package:whatado/providers/graphql/user_provider.dart';

class SetupState extends ChangeNotifier {
  List<Interest> selectedInterests;
  List<Interest> customInterests;
  List<Interest> popularInterests;

  SetupState()
      : selectedInterests = [],
        popularInterests = [],
        customInterests = [] {
    init();
  }

  void init() async {
    final provider = InterestGqlProvider();
    final result = await provider.popular();
    popularInterests.addAll(result.data ?? []);
    notifyListeners();
  }

  Future<void> saveInterests() async {
    // take the selected popular interests
    // take the selected custom interests
    // make sure the custom interests are not created already
    // create brand new interests
    // add them all to the user
    final provider = UserGqlProvider();
    final strings = [...selectedInterests, ...customInterests]
        .map((interest) => interest.title)
        .toList();
    await provider.addInterests(strings);
  }

  void selectInterest(Interest interest) {
    selectedInterests.add(interest);
    notifyListeners();
  }

  void unselectInterest(Interest interest) {
    selectedInterests.remove(interest);
    notifyListeners();
  }

  void removeCustomInterest(Interest interest) {
    customInterests.remove(interest);
    notifyListeners();
  }

  void addCustomInterest(Interest interest) {
    customInterests.add(interest);
    notifyListeners();
  }
}
