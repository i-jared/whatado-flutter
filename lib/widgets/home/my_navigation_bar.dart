import 'package:flutter/material.dart';

class MyNavigationBar extends StatelessWidget {
  final Function indexSetState;
  final int selectedIndex;
  MyNavigationBar({required this.indexSetState, required this.selectedIndex});

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        width: MediaQuery.of(context).size.width,
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => indexSetState(0),
              icon: Icon(
                Icons.home_outlined,
                size: 35,
                color: selectedIndex == 0 ? Colors.red[300] : Colors.grey[850],
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => null,
              icon: Icon(Icons.add_circle, size: 50, color: Colors.red[300]),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => indexSetState(1),
              icon: Icon(
                Icons.person_outline,
                size: 35,
                color: selectedIndex == 1 ? Colors.red[300] : Colors.grey[850],
              ),
            ),
          ],
        ),
      );
}
