import 'dart:typed_data';

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/services/service_provider.dart';

class UserState extends ChangeNotifier {
  User? _user;
  List<Uint8List>? _photos;
  List<Uint8List>? ogphotos;
  List<String>? _urls;
  bool _loading;
  bool _loggedIn;

  bool get loggedIn => _loggedIn;

  set loggedIn(bool loggedIn) {
    _loggedIn = loggedIn;
    notifyListeners();
  }

  bool get loading => _loading;

  set loading(bool loading) {
    _loading = loading;
    notifyListeners();
  }

  Future<void> updatePhotos() async {
    if (user == null) return;
    final initialPhotoData = await Future.wait(user!.photoUrls
        .map((url) async =>
            (await NetworkAssetBundle(Uri.parse(url)).load(url)).buffer.asUint8List())
        .toList());
    photos = initialPhotoData;
    ogphotos = List.from(initialPhotoData);
  }

  UserState()
      : _loading = false,
        _loggedIn = false {
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
    if (photos != ogphotos) {
      photoUrls = await Future.wait(photos!.map<Future<String?>>((data) {
        return cloudStorageService.uploadImage(data, user!.id, userImage: true);
      }));
      filter.photoUrls = json.encode(photoUrls);
    }

    await provider.updateUser(filter);
    _user!.bio = bio;
    _user!.photoUrls = List<String>.from(photoUrls);
    notifyListeners();
  }

  Future<void> getUser() async {
    final query = UserGqlProvider();
    final response = await query.me();
    _user = response.data;
    await updatePhotos();
    notifyListeners();
  }

  Future<void> updateFriendRequest(EventUser newUser, {bool add = true}) async {
    if (add) {
      user?.requestedFriends.add(newUser);
    } else {
      user?.requestedFriends.remove(newUser);
    }
    notifyListeners();
  }

  Future<void> updateGroupRequest(Group group, {bool add = true}) async {
    if (add) {
      user?.requestedGroups.add(group);
    } else {
      user?.requestedGroups.remove(group);
    }
    notifyListeners();
  }

  Future<void> removeGroupRequests(Group group, EventUser removeUser) async {
    int i = user!.groups.indexWhere((g) => g.id == group.id);
    if (i < 0) return;
    group.requested = group.requested.where((u) => u.id != removeUser.id).toList();
    user!.groups[i] = group;
    notifyListeners();
  }

  Future<void> updateGroupMembers(Group group, EventUser newuser,
      {bool add = true}) async {
    if (add) {
      group.users = [...group.users, newuser];
      int i = user!.groups.indexWhere((g) => g.id == group.id);
      user?.groups[i] = group;
    } else {
      group.users = group.users.where((u) => u.id != newuser.id).toList();
      int i = user!.groups.indexWhere((g) => g.id == group.id);
      user?.groups[i] = group;
    }
    notifyListeners();
  }

  User? get user => _user;
  set user(User? user) {
    _user = user;
    notifyListeners();
  }
}
