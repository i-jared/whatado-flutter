import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/widgets/home/home_app_bar.dart';
import 'package:whatado/widgets/home/my_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  void turnPage(int newPageNo, int oldPageNo) {
    if ((oldPageNo - newPageNo).abs() == 1) {
      pageController
          ?.animateToPage(newPageNo,
              duration: Duration(milliseconds: 200), curve: Curves.easeInOut)
          .then((_) => setState(() {}));
    } else {
      pageController?.jumpToPage(newPageNo);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeState>(
        create: (_) => HomeState(),
        builder: (context, _) {
          final homeState = Provider.of<HomeState>(context);
          return Scaffold(
              appBar: HomeAppBar(turnPage: turnPage),
              body: PageView(
                onPageChanged: (pageNo) => homeState.setAppBarPage(pageNo),
                controller: pageController,
                children: [
                  Container(),
                  Container(color: Colors.grey[200]),
                  Container(color: Colors.grey[400])
                ],
              ),
              bottomNavigationBar: MyNavigationBar(
                indexSetState: (pageNo) => homeState.setBottomPage(pageNo),
                selectedIndex: homeState.bottomBarPageNo,
              ));
        });
  }
}
