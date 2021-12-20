import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:whatado/screens/add_event/add_event.dart';
import 'package:whatado/state/add_event_state.dart';

class MyNavigationBar extends StatelessWidget {
  final Function indexSetState;
  final int selectedIndex;
  MyNavigationBar({required this.indexSetState, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    final eventState = Provider.of<AddEventState>(context);
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 5),
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(color: Colors.grey[200] ?? Colors.grey))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => indexSetState(0),
              icon: Icon(
                Icons.home_outlined,
                size: 35,
                color:
                    selectedIndex == 0 ? Color(0xfff7941d) : Colors.grey[850],
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => indexSetState(1),
              icon: Icon(
                Icons.search_outlined,
                size: 35,
                color:
                    selectedIndex == 1 ? Color(0xfff7941d) : Colors.grey[850],
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                eventState.clear();
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddEvent()))
                    .then((_) async {
                  await Future.delayed(Duration(milliseconds: 500));
                  SystemChrome.setSystemUIOverlayStyle(
                      SystemUiOverlayStyle.dark.copyWith(
                    systemNavigationBarColor: Colors.grey[50],
                    statusBarColor: Colors.transparent,
                  ));
                });
              },
              icon: Icon(Icons.add_circle_outline,
                  size: 35, color: Colors.grey[850]), //Color(0xfff7941d)),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => indexSetState(2),
              icon: Icon(
                Icons.settings_outlined,
                size: 32,
                color:
                    selectedIndex == 2 ? Color(0xfff7941d) : Colors.grey[850],
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => indexSetState(3),
              icon: Icon(
                Icons.person_outline,
                size: 35,
                color:
                    selectedIndex == 3 ? Color(0xfff7941d) : Colors.grey[850],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
