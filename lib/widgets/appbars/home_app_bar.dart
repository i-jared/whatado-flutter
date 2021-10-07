import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/home_state.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50.0);
  @override
  State<StatefulWidget> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  void initState() {
    super.initState();
    final homeState = Provider.of<HomeState>(context, listen: false);
    if (!(localStorageService.initialized ?? false))
      WidgetsBinding.instance?.addPostFrameCallback((_) =>
          ShowCaseWidget.of(context)?.startShowCase([
            homeState.showcase_1,
            homeState.showcase_2,
            homeState.showcase_3
          ]));
  }

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    Color? iconColor(int pageNo) =>
        homeState.appBarPageNo == pageNo ? Colors.white : Colors.grey[350];
    void turnPage(int newPageNo) {
      homeState.turnPage(newPageNo);
    }

    final switcherHeight = 42.0;
    final switcherMargin = (widget.preferredSize.height - switcherHeight) / 2;
    return AppBar(
      leadingWidth: 150,
      backgroundColor: Colors.grey[50],
      elevation: 0.0,
      leading: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Image.asset("assets/text_logo.png"),
      ),
      actions: [
        Container(
            width: 190,
            margin: EdgeInsets.only(
              right: 30,
              top: switcherMargin,
              bottom: switcherMargin,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Stack(
              children: [
                AnimatedPositioned(
                  top: 0,
                  left: 60.0 * homeState.appBarPageNo,
                  duration: Duration(milliseconds: 200),
                  child: Showcase(
                    key: homeState.showcase_1,
                    title: 'Home',
                    description:
                        'Click here to see a feed of events going on around you.',
                    titleTextStyle:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    descTextStyle: TextStyle(fontSize: 18),
                    child: Container(
                      width: 70,
                      height: switcherHeight,
                      decoration: BoxDecoration(
                        boxShadow: kElevationToShadow[2],
                        color: Color(0xffe85c3f),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 12),
                      child: Showcase(
                        key: homeState.showcase_4,
                        title: 'Home',
                        description:
                            'Click here to see a feed of events going on around you.',
                        titleTextStyle: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                        descTextStyle: TextStyle(fontSize: 18),
                        child: Center(
                          child: IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () => turnPage(0),
                              icon: Icon(
                                Icons.public_outlined,
                                size: 30,
                                color: iconColor(0),
                              )),
                        ),
                      ),
                    ),
                    Showcase(
                      key: homeState.showcase_2,
                      title: 'My Events',
                      description:
                          'This screen shows events you\'ve been invited to.',
                      titleTextStyle:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      descTextStyle: TextStyle(fontSize: 18),
                      child: Container(
                        child: IconButton(
                            padding: EdgeInsets.symmetric(horizontal: 0),
                            onPressed: () => turnPage(1),
                            icon: Icon(
                              Icons.event_available_outlined,
                              size: 30,
                              color: iconColor(1),
                            )),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      child: Showcase(
                        key: homeState.showcase_3,
                        title: 'Forums',
                        description: 'Chat with your event groups in forums!',
                        titleTextStyle: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                        descTextStyle: TextStyle(fontSize: 18),
                        child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () => turnPage(2),
                            icon: Icon(
                              Icons.forum_outlined,
                              size: 30,
                              color: iconColor(2),
                            )),
                      ),
                    )
                  ],
                ),
              ],
            ))
      ],
    );
  }
}
