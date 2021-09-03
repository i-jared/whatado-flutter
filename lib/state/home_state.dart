import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/forum.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/providers/graphql/forums_provider.dart';

class HomeState extends ChangeNotifier {
  int _appBarPageNo;
  int _bottomBarPageNo;
  int _selectedDateIndex;

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
        _selectedDateIndex = 0,
        homePageController = PageController(),
        allEventsScrollController = ScrollController(),
        myProfileScrollController = ScrollController(),
        refreshController = RefreshController(initialRefresh: false),
        myEventsRefreshController = RefreshController(initialRefresh: false) {
    // check if scroll is at top
    // allEventsScrollController.addListener(() {
    // if (allEventsScrollController.offset <= 10 && !_allEventsAtTop) {
    // _allEventsAtTop = true;
    // notifyListeners();
    // } else if (allEventsScrollController.offset > 10 && _allEventsAtTop) {
    // _allEventsAtTop = false;
    // notifyListeners();
    // }
    // });
    // get initial events
    getNewEvents();
    getMyEvents().then((_) => getMyForums());
  }

  @override
  void dispose() {
    allEventsScrollController.dispose();
    homePageController.dispose();
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

  int get selectedDateIndex => _selectedDateIndex;
  set selectedDateIndex(int beginDateIndex) {
    _selectedDateIndex = beginDateIndex;
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
    final response = await query.events();
    allEvents = response.data ?? [];
    notifyListeners();
  }

  Future<void> getMyEvents() async {
    final query = EventsGqlProvider();
    final response = await query.myEvents();
    myEvents = response.data ?? [];
    notifyListeners();
  }

  Future<void> getMyForums() async {
    final query = ForumsGqlProvider();
    final response =
        await query.myForums(myEvents?.map((event) => event.id).toList() ?? []);
    myForums = response.data ?? [];
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
      await getNewEvents();
      refreshController.refreshCompleted();
    } catch (e) {
      refreshController.refreshFailed();
    }
  }

  void updateEvent(Event event) {
    final int index = allEvents!.indexWhere((val) => val.id == event.id);
    allEvents![index] = event;
    notifyListeners();
  }
}
