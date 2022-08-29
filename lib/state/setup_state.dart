import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/providers/graphql/interest_provider.dart';
import 'package:whatado/providers/graphql/user_provider.dart';

class SetupState extends ChangeNotifier {
  List<Interest> selectedInterests;
  List<Interest> customInterests;
  List<Interest> popularInterests;
  TextEditingController bioController;
  DateTime? _birthdate;

  Gender? _gender;

  List<File?> _photos;
  List<Uint8List?> _photosImageData;

  SetupState()
      : selectedInterests = [],
        popularInterests = [],
        customInterests = [],
        _photosImageData = [],
        _photos = [],
        bioController = TextEditingController() {
    bioController.addListener(notifyListeners);
    init();
  }

  Gender? get gender => _gender;

  set gender(Gender? gender) {
    _gender = gender;
    notifyListeners();
  }

  DateTime? get birthdate => _birthdate;
  set birthdate(DateTime? newDate) {
    _birthdate = newDate;
    notifyListeners();
  }

  List<Uint8List?> get photosImageData => _photosImageData;

  set photosImageData(List<Uint8List?> photosImageData) {
    _photosImageData = photosImageData;
    notifyListeners();
  }

  List<File?> get photos => _photos;

  set photos(List<File?> photos) {
    _photos = photos;
    notifyListeners();
  }

  void removePhoto(File? xfile) {
    final index = photos.indexOf(xfile);
    photos.removeAt(index);
    photosImageData.removeAt(index);
    notifyListeners();
  }

  void init() async {
    final provider = InterestGqlProvider();
    final result = await provider.popular();
    popularInterests.addAll(result.data ?? []);
    notifyListeners();
  }

  Future<bool> saveInterests() async {
    final provider = UserGqlProvider();
    final strings =
        [...selectedInterests, ...customInterests].map((interest) => interest.title).toList();
    final result = await provider.addInterests(strings);
    return result.ok;
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
