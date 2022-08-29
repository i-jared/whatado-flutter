import 'package:collection/collection.dart';
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
        // create url list with spaces for new photos
        final missingIndices =
            photos!.mapIndexed((i, p) => !ogphotos!.contains(p) ? i : null).whereNotNull().toList();
        final spacedUrls =
            photoUrls.mapIndexed((i, url) => missingIndices.contains(i) ? null : url).toList();
        if (newPhotos.isNotEmpty) {
          // upload photos that don't exist already
          // TODO upload securely using url from server
          List<String?> uploadedUrls = await Future.wait(newPhotos.map<Future<String?>>((data) {
            return cloudStorageService.uploadImage(data, user!.id, userImage: true);
          }));
          // replace missing urls with new uploaded urls
          uploadedUrls.forEach((url) => spacedUrls[spacedUrls.indexOf(null)] = url);
          photoUrls = spacedUrls;
        }
      }

      final result = await provider.updateUser(input);
      if (!result.ok) {
        return false;
      }
      _user!.bio = bio;
      _user!.photoUrls = List<String>.from(photoUrls);
      notifyListeners();
      return true;
    } catch (e) {
      logger.e(e);
      return false;
    }
  }

  Future<void> getUser() async {
    final query = UserGqlProvider();
    final response = await query.me();
    _user = response.data;
    await updatePhotos();
    notifyListeners();
  }

  Future<void> updateFriendRequest(PublicUser newUser, {bool add = true}) async {
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
