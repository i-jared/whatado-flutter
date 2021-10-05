import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/forum.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/providers/graphql/forums_provider.dart';

class HomeState extends ChangeNotifier {
  int _appBarPageNo;
  int _bottomBarPageNo;
  int _skip;
  DateTime? _selectedDate;

  RefreshController refreshController;
  RefreshController myEventsRefreshController;
  PageController homePageController;
  ScrollController allEventsScrollController;
  ScrollController myProfileScrollController;

  List<Event>? allEvents;
  List<Event>? myEvents;
  List<Forum>? myForums;

  HomeState()
      : _appBarPageNo = 0,
        _bottomBarPageNo = 0,
        _skip = 0,
        homePageController = PageController(keepPage: true),
        allEventsScrollController = ScrollController(),
        myProfileScrollController = ScrollController(),
        refreshController = RefreshController(initialRefresh: false),
        myEventsRefreshController = RefreshController(initialRefresh: false) {
    allEventsScrollController.addListener(() async {
      if (allEventsScrollController.position.atEdge &&
          allEventsScrollController.position.pixels != 0) {
        await getNewEvents();
      }
    });
    // get initial events
    getNewEvents();
    getMyEvents().then((myEvents) =>
        myEvents == null || myEvents.isEmpty ? myForums = [] : getMyForums());
  }

  @override
  void dispose() {
    allEventsScrollController.dispose();
    homePageController.dispose();
    refreshController.dispose();
    myEventsRefreshController.dispose();
    super.dispose();
  }

  int get appBarPageNo => _appBarPageNo;
  set appBarPageNo(int newPageNo) {
    _appBarPageNo = newPageNo;
    notifyListeners();
  }

  int get bottomBarPageNo => _bottomBarPageNo;
  set bottomBarPageNo(int newPageNo) {
    _bottomBarPageNo = newPageNo;
    notifyListeners();
  }

  DateTime? get selectedDate => _selectedDate;
  set selectedDate(DateTime? beginDateIndex) {
    if (_selectedDate != beginDateIndex) {
      allEvents = null;
      _skip = 0;
    }
    _selectedDate = beginDateIndex;
    notifyListeners();
  }

  void turnPage(int newPageNo) {
    if ((this.appBarPageNo - newPageNo).abs() == 1) {
      this
          .homePageController
          .animateToPage(newPageNo,
              duration: Duration(milliseconds: 200), curve: Curves.easeInOut)
          .then((_) => notifyListeners());
    } else {
      homePageController.jumpToPage(newPageNo);
    }
    notifyListeners();
  }

  Future<void> getNewEvents() async {
    final query = EventsGqlProvider();
    final start = _selectedDate ?? DateTime.now();
    final end = _selectedDate?.add(Duration(days: 1)) ??
        DateTime.now().add(Duration(days: 1000));
    final response = await query.events(start, end, 20, _skip);
    _skip += 20;
    if (allEvents == null)
      allEvents = response.data ?? [];
    else
      allEvents!.addAll(response.data ?? []);
    notifyListeners();
  }

  Future<List<Event>?> getMyEvents() async {
    final query = EventsGqlProvider();
    final response = await query.myEvents();
    myEvents = response.data ?? [];
    notifyListeners();
    return myEvents;
  }

  Future<void> getMyForums() async {
    final query = ForumsGqlProvider();
    final response =
        await query.myForums(myEvents?.map((event) => event.id).toList() ?? []);
    myForums = response.data ?? [];
    await Future.wait(myForums!.map((forum) async {
      await FirebaseMessaging.instance.subscribeToTopic('${forum.id}');
    }));
    notifyListeners();
  }

  Future<void> myEventsRefresh() async {
    try {
      await getMyEvents();
      await getMyForums();
      myEventsRefreshController.refreshCompleted();
    } catch (e) {
      myEventsRefreshController.refreshFailed();
    }
  }

  Future<void> allEventsRefresh() async {
    try {
      allEvents = null;
      _skip = 0;
      await getNewEvents();
      refreshController.refreshCompleted();
    } catch (e) {
      refreshController.refreshFailed();
    }
  }

  void updateEvent(Event event) {
    int index = allEvents!.indexWhere((val) => val.id == event.id);
    if (index == -1) {
      return;
    }
    allEvents![index] = event;
    notifyListeners();
  }

  void removeEvent(Event event) {
    if (allEvents?.contains(event) ?? false) allEvents?.remove(event);
    if (myEvents?.contains(event) ?? false) {
      myEvents?.remove(event);
      myForums?.removeWhere((forum) => forum.eventId == event.id);
    }
    notifyListeners();
  }

  void updateMyEvent(Event event) {
    final int myindex = myEvents!.indexWhere((val) => val.id == event.id);
    if (myindex == -1) {
      return;
    }
    myEvents![myindex] = event;
    notifyListeners();
  }
}
