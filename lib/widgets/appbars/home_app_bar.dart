import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/home_state.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    Color? iconColor(int pageNo) =>
        homeState.appBarPageNo == pageNo ? Colors.white : Colors.grey[350];
    void turnPage(int newPageNo) {
      homeState.turnPage(newPageNo);
    }

    final switcherHeight = 42.0;
    final switcherMargin = (preferredSize.height - switcherHeight) / 2;
    return AppBar(
      leadingWidth: 150,
      backgroundColor: Colors.grey[50],
      elevation: 1.0,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        padding: EdgeInsets.only(left: 20),
                        onPressed: () => turnPage(0),
                        icon: Icon(
                          Icons.public_outlined,
                          size: 30,
                          color: iconColor(0),
                        )),
                    IconButton(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        onPressed: () => turnPage(1),
                        icon: Icon(
                          Icons.event_available_outlined,
                          size: 30,
                          color: iconColor(1),
                        )),
                    IconButton(
                        padding: EdgeInsets.only(right: 20),
                        onPressed: () => turnPage(2),
                        icon: Icon(
                          Icons.forum_outlined,
                          size: 30,
                          color: iconColor(2),
                        ))
                  ],
                ),
              ],
            ))
      ],
    );
  }
}