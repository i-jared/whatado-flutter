import 'dart:typed_data';

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/services/service_provider.dart';

class UserState extends ChangeNotifier {
  User? _user;
  List<Uint8List>? _photos;
  Uint8List? _photo;
  Uint8List? ogphoto;
  List<Uint8List>? ogphotos;
  List<String>? _urls;
  bool _loading;

  Uint8List? get photo => _photo;

  set photo(Uint8List? photo) {
    _photo = photo;
    notifyListeners();
  }

  bool get loading => _loading;

  set loading(bool loading) {
    _loading = loading;
    notifyListeners();
  }

  void updatePhotos() async {
    if (user == null || user!.imageUrl.isEmpty) return;
    final imageUrl = user!.imageUrl;
    final initialPhotoData = await Future.wait(user!.photoUrls
        .map((url) async => (await NetworkAssetBundle(Uri.parse(url)).load(url))
            .buffer
            .asUint8List())
        .toList());
    photos = initialPhotoData;
    photo = (await NetworkAssetBundle(Uri.parse(imageUrl)).load(imageUrl))
        .buffer
        .asUint8List();
    ogphoto = photo;
    ogphotos = List.from(initialPhotoData);
  }

  UserState() : _loading = false {
    getUser();
  }

  List<String>? get urls => _urls;

  set urls(List<String>? urls) {
    _urls = urls;
    notifyListeners();
  }

  List<Uint8List>? get photos => _photos;

  set photos(List<Uint8List>? photos) {
    _photos = photos;
    notifyListeners();
  }

  Future<void> save(List<Interest> interests, String bio) async {
    final filter = UserFilterInput(bio: bio);
    final provider = UserGqlProvider();
    if (interests != _user!.interests) {
      final strings = interests.map((interest) => interest.title).toList();
      await provider.addInterests(strings);
      _user!.interests = interests;
    }
    List<String?> photoUrls = user!.photoUrls;
    String? photoUrl = user!.imageUrl;
    if (photo != ogphoto) {
      photoUrl = await cloudStorageService.uploadImage(photo!, user!.id,
          userImage: true);
      filter.profilePhotoUrl = photoUrl;
    }
    if (photos != ogphotos) {
      photoUrls = await Future.wait(photos!.map<Future<String?>>((data) {
        return cloudStorageService.uploadImage(data, user!.id, userImage: true);
      }));
      filter.photoUrls = json.encode(photoUrls);
    }

    await provider.updateUser(filter);
    _user!.bio = bio;
    _user!.photoUrls = List<String>.from(photoUrls);
    _user!.imageUrl = photoUrl!;
    notifyListeners();
  }

  Future<void> getUser() async {
    final query = UserGqlProvider();
    final response = await query.me();
    _user = response.data;
    updatePhotos();
    notifyListeners();
  }

  User? get user => _user;
  set user(User? user) {
    _user = user;
    notifyListeners();
  }
}
