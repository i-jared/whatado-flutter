import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/providers/graphql/interest_provider.dart';
import 'package:whatado/providers/graphql/user_provider.dart';

class SetupState extends ChangeNotifier {
  List<Interest> selectedInterests;
  List<Interest> customInterests;
  List<Interest> popularInterests;
  TextEditingController bioController;

  File? _profilePhoto;
  Uint8List? _profileImageData;
  List<File?> _photos;
  List<Uint8List?> _photosImageData;

  SetupState()
      : selectedInterests = [],
        popularInterests = [],
        customInterests = [],
        _photosImageData = [],
        _photos = [],
        bioController = TextEditingController() {
    bioController.addListener(() {
      notifyListeners();
    });
    init();
  }

  Uint8List? get profileImageData => _profileImageData;

  set profileImageData(Uint8List? profileImageData) {
    _profileImageData = profileImageData;
    notifyListeners();
  }

  File? get profilePhoto => _profilePhoto;

  set profilePhoto(File? profilePhoto) {
    _profilePhoto = profilePhoto;
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

  Future<void> saveBio() async {
    final provider = UserGqlProvider();
    await provider.updateBio(bioController.text);
  }

  Future<void> saveInterests() async {
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
