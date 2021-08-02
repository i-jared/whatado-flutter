import 'package:flutter/material.dart';

class HomeState extends ChangeNotifier {
  int _appBarPageNo;
  int _bottomBarPageNo;
  int _selectedDateIndex;

  PageController homePageController;

  HomeState()
      : _appBarPageNo = 0,
        _bottomBarPageNo = 0,
        _selectedDateIndex = 0,
        homePageController = PageController();

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

  @override
  void dispose() {
    homePageController.dispose();
    super.dispose();
  }
}
