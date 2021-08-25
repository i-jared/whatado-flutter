import 'package:flutter/material.dart';
import 'package:whatado/screens/add_event/add_event.dart';

class MyNavigationBar extends StatelessWidget {
  final Function indexSetState;
  final int selectedIndex;
  MyNavigationBar({required this.indexSetState, required this.selectedIndex});

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
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
                    selectedIndex == 0 ? Color(0xffe85c3f) : Colors.grey[850],
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AddEvent())),
              icon: Icon(Icons.add_circle_outline,
                  size: 35, color: Colors.grey[850]), //Color(0xffe85c3f)),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => indexSetState(1),
              icon: Icon(
                Icons.person_outline,
                size: 35,
                color:
                    selectedIndex == 1 ? Color(0xffe85c3f) : Colors.grey[850],
              ),
            ),
          ],
        ),
      );
}
