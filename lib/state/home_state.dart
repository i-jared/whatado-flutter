import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeState extends ChangeNotifier {
  int _appBarPageNo;
  int _bottomBarPageNo;
  int _selectedDateIndex;

  RefreshController refreshController;
  PageController homePageController;
  ScrollController allEventsScrollController;
  ScrollController myProfileScrollController;
  bool _allEventsAtTop;

  HomeState()
      : _appBarPageNo = 0,
        _bottomBarPageNo = 0,
        _selectedDateIndex = 0,
        _allEventsAtTop = true,
        homePageController = PageController(),
        allEventsScrollController = ScrollController(),
        myProfileScrollController = ScrollController(),
        refreshController = RefreshController(initialRefresh: false) {
    allEventsScrollController.addListener(() {
      if (allEventsScrollController.offset <= 10 && !_allEventsAtTop) {
        _allEventsAtTop = true;
        notifyListeners();
      } else if (allEventsScrollController.offset > 10 && _allEventsAtTop) {
        _allEventsAtTop = false;
        notifyListeners();
      }
    });
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

  void onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1000));
    refreshController.refreshCompleted();
    notifyListeners();
  }
}
