import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/widgets/input/sort_my_events_bottom_sheet.dart';

class MyEventsSortBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    void onPressed() {
      showModalBottomSheet<dynamic>(
          isScrollControlled: true,
          barrierColor: Colors.transparent,
          context: context,
          builder: (BuildContext context) => BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: SortMyEventsBottomSheet()));
    }

    String getText() {
      if (homeState.mySortType == MySortType.current) {
        return "New Events";
      } else if (homeState.mySortType == MySortType.mine) {
        return "Hosting Events";
      } else if (homeState.mySortType == MySortType.invited) {
        return "Going to Events";
      } else {
        return "Past Events";
      }
    }

    return Container(
        height: 40,
        alignment: Alignment.centerLeft,
        child: InkWell(
            onTap: () => onPressed(),
            child: Row(children: [
              SizedBox(width: 24),
              Text(getText(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Icon(Icons.keyboard_arrow_down_outlined, size: 28)
            ])));
  }
}
