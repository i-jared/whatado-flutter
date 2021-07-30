import 'package:flutter/material.dart';

class HomeState extends ChangeNotifier {
  int appBarPageNo;
  int bottomBarPageNo;
  HomeState()
      : appBarPageNo = 0,
        bottomBarPageNo = 0;

  void setAppBarPage(int newPageNo) {
    this.appBarPageNo = newPageNo;
    notifyListeners();
  }

  void setBottomPage(int newPageNo) {
    this.bottomBarPageNo = newPageNo;
    notifyListeners();
  }
}
