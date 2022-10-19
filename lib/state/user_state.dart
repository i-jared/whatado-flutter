import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/providers/graphql/interest_provider.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/utils/logger.dart';

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
    _urls = user!.photoUrls;
    photos = initialPhotoData;
    ogphotos = List.from(initialPhotoData);
  }

  UserState()
      : _loading = false,
        _loggedIn = false {
    init();
  }

  Future<void> init() async {
    final user = await getUserUser();
    if (user != null) await analyticsService.init(user);
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

  Future<bool> save(List<Interest> interests, String bio) async {
    try {
      final input = UserFilterInput(bio: bio);
      final provider = UserGqlProvider();
      if (interests != _user!.interests) {
        final strings = interests.map((interest) => interest.title).toList();
        final result = await provider.addInterests(strings);
        _user!.interests = interests;
        if (!result.ok) {
          return false;
        }
      }
      List<String?> photoUrls = user!.photoUrls;
      if (photos != ogphotos && photos != null) {
        // get new photos
        final newPhotos = photos!.where((p) => !(ogphotos?.contains(p) ?? false));
        // you added at least one photo
        if (newPhotos.isNotEmpty) {
          // create url list with spaces for new photos
          int firstNewIndex = photos!.indexWhere((p) => !ogphotos!.contains(p));
          final newIndices =
              List<int>.generate(photos!.length - firstNewIndex, (i) => i + firstNewIndex);
          // it's not gauranteed that the photourls are mapped with the photos. need to compare somehow.
          // get list of not missing ogphotos indices (indices of where the photo item is in ogphotos)
          // then it will match up with photourls
          final spacedUrls = List<String?>.generate(
              photos!.length,
              (i) => newIndices.contains(i)
                  ? null
                  : photoUrls[ogphotos!.indexWhere((p) => p == photos![i])]);

          // upload photos that don't exist already
          // TODO upload securely using url from server
          List<String?> uploadedUrls = await Future.wait(newPhotos.map<Future<String?>>((data) {
            return cloudStorageService.uploadImage(data, user!.id, userImage: true);
          }));
          // replace missing urls with new uploaded urls
          uploadedUrls.forEach((url) => spacedUrls[spacedUrls.indexOf(null)] = url);
          photoUrls = spacedUrls;
          input.photoUrls = json.encode(photoUrls);
        } else {
          // you only took away photos
          List<int> missingIndices = ogphotos!
              .mapIndexed<int?>((i, p) => !photos!.contains(p) ? i : null)
              .whereNotNull()
              .toList();
          List<String?> uploadedUrls = photoUrls
              .whereIndexed((i, p) => !missingIndices.contains(i))
              .toList(); // remove the missing urls
          photoUrls = uploadedUrls;
          input.photoUrls = json.encode(uploadedUrls);
        }
      }

      final result = await provider.updateUser(input);
      if (result.ok) return await getUser();
      return false;
    } catch (e, stack) {
      logger.e(e, null, stack);
      return false;
    }
  }

  Future<User?> getUserUser() async {
    // get user but return user
    final query = UserGqlProvider();
    final response = await query.me();
    if (response.data != null) {
      _user = response.data;
      _user!.groups.sort((a, b) => b.id.compareTo(a.id));
      await updatePhotos();
      notifyListeners();
    }
    return _user;
  }

  Future<bool> getUser() async {
    // get user return a success bool
    final query = UserGqlProvider();
    final response = await query.me();
    // don't ever get a null user.
    if (response.data != null) {
      _user = response.data;
      _user!.groups.sort((a, b) => b.id.compareTo(a.id));
      await updatePhotos();
      notifyListeners();
    }
    return response.ok;
  }

  Future<void> updateFriendRequest(PublicUser newUser, {bool add = true}) async {
    if (add) {
      user?.sentFriendRequests.add(newUser);
    } else {
      user?.sentFriendRequests.remove(newUser);
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

  Future<void> removeGroupRequests(Group group, PublicUser removeUser) async {
    int i = user!.groups.indexWhere((g) => g.id == group.id);
    if (i < 0) return;
    group.requested = group.requested.where((u) => u.id != removeUser.id).toList();
    user!.groups[i] = group;
    notifyListeners();
  }

  Future<void> updateGroupMembers(Group group, PublicUser newuser, {bool add = true}) async {
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

  bool setupComplete() {
    if (user == null) {
      getUser();
      return false;
    }
    return user!.bio != '' &&
        user!.photoUrls.isNotEmpty &&
        user!.interests.isNotEmpty &&
        (DateTime.now().year - user!.birthday.year > 16);
  }

  int setupStep() {
    if (user == null) return 0;
    if (user!.interests.isEmpty) return 0;
    if (user!.bio.isEmpty) return 1;
    if (DateTime.now().year - user!.birthday.year <= 16) return 2;
    if (user!.photoUrls.isEmpty) return 4;
    return 5;
  }
}
