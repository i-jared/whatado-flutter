import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:fuzzywuzzy/fuzzywuzzy.dart';
import 'package:fuzzywuzzy/model/extracted_result.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/group.dart' as g;
import 'package:whatado/models/my_contact.dart';
import 'package:whatado/models/public_event.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/providers/graphql/group_provider.dart';
import 'package:whatado/providers/graphql/user_provider.dart';

class SearchState extends ChangeNotifier {
  int _selectedSearchType;
  PageController searchPageController;
  int get selectedSearchType => _selectedSearchType;
  set selectedSearchType(int newVal) {
    if (newVal != selectedSearchType) {
      if (selectedSearchType == 0) {
        _lastEventSearch = searchController.text;
      } else if (selectedSearchType == 1) {
        _lastPersonSearch = searchController.text;
      } else if (selectedSearchType == 2) {
        _lastGroupSearch = searchController.text;
      }
      _selectedSearchType = newVal;
      if (newVal == 0) {
        _debounceEvents();
      } else if (newVal == 1) {
        _debounceUsers();
      } else if (newVal == 2) {
        _debounceGroups();
      } else {
        _debounceContacts();
      }
      notifyListeners();
    }
  }

  List<MyContact>? _contacts;
  List<PublicUser>? _userContacts;
  List<PublicUser>? _filteredUserContacts;
  List<PublicUser>? _filteredUsers;
  List<g.Group>? _filteredGroups;
  List<MyContact>? _nonUserContacts;
  List<MyContact>? _filteredNonUserContacts;
  List<PublicEvent>? _filteredEvents;
  List<String>? _referrals;
  TextEditingController searchController;
  Timer? _contactsDebounceTimer;
  Timer? _usersDebounceTimer;
  Timer? _groupsDebounceTimer;
  Timer? _eventsDebounceTimer;
  bool _contactsLoading;
  bool _usersLoading;
  bool _groupsLoading;
  bool _eventsLoading;
  bool? _contactsPermission;
  String? _lastEventSearch;
  String? _lastPersonSearch;
  String? _lastGroupSearch;
  String? _lastSearchText;

  List<MyContact>? get nonUserContacts => _nonUserContacts;
  List<MyContact>? get filteredNonUserContacts => _filteredNonUserContacts;
  List<PublicUser>? get filteredUserContacts => _filteredUserContacts;
  List<PublicUser>? get filteredUsers => _filteredUsers;
  List<g.Group>? get filteredGroups => _filteredGroups;
  List<PublicEvent>? get filteredEvents => _filteredEvents;
  List<PublicUser>? get userContacts => _userContacts;
  bool get contactsLoading => _contactsLoading;
  bool get usersLoading => _usersLoading;
  bool get groupsLoading => _groupsLoading;
  bool get eventsLoading => _eventsLoading;
  bool? get contactsPermission => _contactsPermission;
  set contactsPermission(bool? newPermission) {
    _contactsPermission = newPermission;
    notifyListeners();
  }

  SearchState()
      : _selectedSearchType = 0,
        _contactsLoading = true,
        _usersLoading = true,
        _groupsLoading = true,
        _eventsLoading = true,
        searchPageController = PageController(keepPage: true),
        searchController = TextEditingController() {
    searchController.addListener(() {
      if (searchController.text == _lastSearchText) return;
      _lastSearchText = searchController.text;
      if (_selectedSearchType == 0) {
        _debounceEvents();
      } else if (_selectedSearchType == 1) {
        _debounceUsers();
      } else if (_selectedSearchType == 2) {
        _debounceGroups();
      } else if (_selectedSearchType == 3 && _contacts != null) {
        _debounceContacts();
      }
    });
    _debounceEvents();
  }

  Future<void> reset() async {
    searchController.text = '';

    notifyListeners();
  }

  void turnPage(int newPageNo) {
    if ((this.selectedSearchType - newPageNo).abs() == 1) {
      this
          .searchPageController
          .animateToPage(newPageNo, duration: Duration(milliseconds: 200), curve: Curves.easeInOut)
          .then((_) => notifyListeners());
    } else {
      searchPageController.jumpToPage(newPageNo);
    }
    notifyListeners();
  }

  Future<void> loadContacts() async {
    // get permissin to load contacts
    _contactsPermission = await FlutterContacts.requestPermission(readonly: true);
    if (_contactsPermission!) {
      final provider = UserGqlProvider();
      // get your referrals
      final referralsResult = await provider.myReferrals();
      _referrals = referralsResult.data;
      // load contacts then get list of all contacts not already users
      List<Contact> rawContacts =
          await FlutterContacts.getContacts(withThumbnail: true, withProperties: true);
      // get list of non null contacts' primary phones
      _contacts = rawContacts.map((c) {
        String? formattedPhone;
        if (c.phones.isNotEmpty) {
          String rawPhone = c.phones.first.number;
          String strippedPhone = rawPhone.replaceAll(RegExp(r'[\(\)-\s]'), '');
          formattedPhone = strippedPhone.startsWith('+')
              ? strippedPhone
              : strippedPhone.length == 10
                  ? "+1" + strippedPhone
                  : null;
        }
        return MyContact(
          displayName: c.displayName,
          thumbnail: c.thumbnail,
          phone: formattedPhone,
          referred: _referrals?.contains(formattedPhone) ?? false,
        );
      }).toList();
      final allNumbers = _contacts?.map((c) => c.phone).whereNotNull().toList() ?? [];
      final result = await provider.numbersNotUsers(allNumbers);
      final numbersNotUsers = result.data ?? [];
      final numbersUsers = allNumbers.where((p) => !numbersNotUsers.contains(p)).toList();
      // get list of non user contacts
      _nonUserContacts = _contacts?.where((c) => numbersNotUsers.contains(c.phone)).toList();
      _filteredNonUserContacts = _nonUserContacts;
      // get list of user contacts
      final usersResult = await provider.usersFromContacts(numbersUsers);
      _userContacts = usersResult.data ?? [];
      _filteredUserContacts = _userContacts;
    }
    _contactsLoading = false;
    _usersLoading = false;
    notifyListeners();
  }

  Future<void> updateReferrals(String phone) async {
    if (_referrals == null) {
      _referrals = [phone];
    } else {
      _referrals!.add(phone);
    }
    if (_nonUserContacts != null) {
      int i = _nonUserContacts!.indexWhere((c) => c.phone == phone);
      _nonUserContacts![i] = _nonUserContacts![i].copyWith(referred: true);
    }
    if (_filteredNonUserContacts != null) {
      int i = _filteredNonUserContacts!.indexWhere((c) => c.phone == phone);
      _filteredNonUserContacts![i] = _filteredNonUserContacts![i].copyWith(referred: true);
    }
    notifyListeners();
  }

  void _debounceEvents() async {
    if (searchController.text == _lastEventSearch) return;
    _eventsLoading = true;
    _eventsDebounceTimer?.cancel();
    if (searchController.text.isEmpty) {
      final provider = EventsGqlProvider();
      final result = await provider.suggestedEvents();
      if (result.ok) {
        _filteredEvents = result.data ?? [];
      } else {
        _filteredEvents = [];
      }
      _eventsLoading = false;
      notifyListeners();
      return;
    }
    _eventsDebounceTimer = Timer(Duration(seconds: 2), () async {
      final provider = EventsGqlProvider();
      final result = await provider.searchEvents(searchController.text);
      _filteredEvents = result.data;
      _eventsLoading = false;
      notifyListeners();
    });
    notifyListeners();
  }

  void _debounceGroups() async {
    if (searchController.text == _lastGroupSearch) return;
    _groupsLoading = true;
    _groupsDebounceTimer?.cancel();
    if (searchController.text.isEmpty) {
      final provider = GroupGqlProvider();
      final result = await provider.suggestedGroups();
      if (result.ok) {
        _filteredGroups = result.data ?? [];
      } else {
        _filteredGroups = [];
      }
      _groupsLoading = false;
      notifyListeners();
      return;
    }
    _groupsDebounceTimer = Timer(Duration(seconds: 2), () async {
      final provider = GroupGqlProvider();
      final result = await provider.searchGroups(searchController.text);
      _filteredGroups = result.data;
      print('group result: ${result.data?.map((e) => e.name)}');
      _groupsLoading = false;
      notifyListeners();
    });
    notifyListeners();
  }

  void _debounceUsers() async {
    if (searchController.text == _lastPersonSearch) return;
    _usersLoading = true;
    _usersDebounceTimer?.cancel();
    if (searchController.text.isEmpty) {
      final provider = UserGqlProvider();
      final result = await provider.suggestedUsers();
      if (result.ok) {
        _filteredUsers = result.data ?? [];
      } else {
        _filteredUsers = _userContacts;
      }
      _usersLoading = false;
      notifyListeners();
      return;
    }
    _usersDebounceTimer = Timer(Duration(seconds: 2), () async {
      final provider = UserGqlProvider();
      final result = await provider.searchUsers(searchController.text);
      _filteredUsers = result.data;
      print('result: ${result.data?.map((e) => e.name)}');
      _usersLoading = false;
      notifyListeners();
    });
    notifyListeners();
  }

  void _debounceContacts() {
    _contactsLoading = true;
    _contactsDebounceTimer?.cancel();
    if (searchController.text.isEmpty) {
      _filteredNonUserContacts = _nonUserContacts;
      _filteredUserContacts = _userContacts;
      _contactsLoading = false;
      notifyListeners();
      return;
    }
    _contactsDebounceTimer = Timer(Duration(seconds: 2), () {
      List<ExtractedResult<MyContact>> nonUserResult = extractAllSorted<MyContact>(
          query: searchController.text,
          choices: _nonUserContacts ?? [],
          getter: (c) => c.displayName,
          cutoff: 50);
      List<ExtractedResult<PublicUser>> userResult = extractAllSorted<PublicUser>(
          query: searchController.text,
          choices: _userContacts ?? [],
          getter: (u) => u.name,
          cutoff: 50);
      _filteredNonUserContacts = nonUserResult.map((r) => r.choice).toList();
      _filteredUserContacts = userResult.map((r) => r.choice).toList();
      _contactsLoading = false;
      notifyListeners();
    });
    notifyListeners();
  }

  @override
  void dispose() {
    searchPageController.dispose();
    searchController.dispose();
    super.dispose();
  }
}
