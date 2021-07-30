import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/widgets/home/home_app_bar.dart';
import 'package:whatado/widgets/home/my_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeState>(
        create: (_) => HomeState(),
        builder: (context, _) {
          final homeState = Provider.of<HomeState>(context);
          return Scaffold(
              appBar: HomeAppBar(),
              body: PageView(
                onPageChanged: (pageNo) => homeState.setAppBarPage(pageNo),
                controller: homeState.pageController,
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
