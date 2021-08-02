import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/screens/home/all_events.dart';
import 'package:whatado/screens/home/my_profile.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/widgets/home/home_app_bar.dart';
import 'package:whatado/widgets/home/my_navigation_bar.dart';

import 'my_events.dart';
import 'my_forums.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeState>(
        create: (_) => HomeState(),
        builder: (context, _) {
          final homeState = Provider.of<HomeState>(context);
          return Scaffold(
              appBar: HomeAppBar(),
              body: homeState.bottomBarPageNo == 0
                  ? PageView(
                      onPageChanged: (pageNo) =>
                          homeState.appBarPageNo = pageNo,
                      controller: homeState.homePageController,
                      children: [AllEvents(), MyEvents(), MyForums()],
                    )
                  : MyProfile(),
              bottomNavigationBar: MyNavigationBar(
                indexSetState: (pageNo) => homeState.bottomBarPageNo = pageNo,
                selectedIndex: homeState.bottomBarPageNo,
              ));
        });
  }
}
