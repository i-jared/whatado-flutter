import 'package:flutter/material.dart';
import 'package:whatado/models/interest.dart';

class SetupState extends ChangeNotifier {
  List<Interest> selectedInterests;
  List<Interest> customInterests;
  List<Interest> popularInterests;

  SetupState()
      : selectedInterests = [],
        popularInterests = [],
        customInterests = [] {
    popularInterests.addAll([
      'Sports',
      'Theaters',
      'Movies',
      'Books',
      'Education',
      'IT',
      'Cooking',
      'Animals',
      'Science',
      'Dancing',
      'Adventures',
      'Food',
      'Games',
      'Fashion',
      'Health'
    ].map((val) => Interest(id: 1, name: val)).toList());
  }

  void addInterest(Interest interest) {
    selectedInterests.add(interest);
    notifyListeners();
  }

  void removeInterest(Interest interest) {
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
