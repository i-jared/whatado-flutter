import 'package:flutter/material.dart';

class HomeState extends ChangeNotifier {
  int appBarPageNo;
  int bottomBarPageNo;
  PageController pageController;
  HomeState()
      : appBarPageNo = 0,
        bottomBarPageNo = 0,
        pageController = PageController();

  void setAppBarPage(int newPageNo) {
    this.appBarPageNo = newPageNo;
    notifyListeners();
  }

  void setBottomPage(int newPageNo) {
    this.bottomBarPageNo = newPageNo;
    notifyListeners();
  }

  void turnPage(int newPageNo) {
    if ((this.appBarPageNo - newPageNo).abs() == 1) {
      this
          .pageController
          .animateToPage(newPageNo,
              duration: Duration(milliseconds: 200), curve: Curves.easeInOut)
          .then((_) => notifyListeners());
    } else {
      pageController.jumpToPage(newPageNo);
    }
    notifyListeners();
  }
}
