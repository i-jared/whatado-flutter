import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/screens/add_event/add_event.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/state/search_state.dart';
import 'package:whatado/state/user_state.dart';

class MyNavigationBar extends StatelessWidget {
  final Function indexSetState;
  final int selectedIndex;
  MyNavigationBar({required this.indexSetState, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    final searchState = Provider.of<SearchState>(context);
    final eventState = Provider.of<AddEventState>(context);
    final userState = Provider.of<UserState>(context);
    final friendRequests = userState.user!.friendRequests.isNotEmpty;
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 5),
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration:
            BoxDecoration(border: Border(top: BorderSide(color: Colors.grey[200] ?? Colors.grey))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => indexSetState(0),
              icon: Icon(
                Icons.home_outlined,
                size: 35,
                color: selectedIndex == 0 ? AppColors.primary : Colors.grey[850],
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () async {
                searchState.selectedSearchType = 0;
                searchState.searchController.text = '';
                indexSetState(1);
                if (selectedIndex != 1) await searchState.loadContacts();
              },
              icon: Icon(
                Icons.search_outlined,
                size: 35,
                color: selectedIndex == 1 ? AppColors.primary : Colors.grey[850],
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                eventState.clear();
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddEvent()))
                    .then((_) async {
                  await Future.delayed(Duration(milliseconds: 500));
                  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
                    systemNavigationBarColor: Colors.transparent,
                    statusBarColor: Colors.transparent,
                  ));
                });
              },
              icon: Icon(Icons.add_circle_outline,
                  size: 35, color: Colors.grey[850]), //AppColors.primary),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => indexSetState(2),
              icon: Icon(
                Icons.settings_outlined,
                size: 32,
                color: selectedIndex == 2 ? AppColors.primary : Colors.grey[850],
              ),
            ),
            Stack(children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () => indexSetState(3),
                icon: Icon(
                  Icons.person_outline,
                  size: 35,
                  color: selectedIndex == 3 ? AppColors.primary : Colors.grey[850],
                ),
              ),
              if (friendRequests)
                Positioned(
                  top: 5,
                  right: 10,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.primary,
                    ),
                  ),
                )
            ]),
          ],
        ),
      ),
    );
  }
}
