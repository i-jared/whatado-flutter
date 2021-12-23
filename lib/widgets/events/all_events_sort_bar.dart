import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/graphql/queries_graphql_api.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/widgets/input/sort_events_bottom_sheet.dart';

class AllEventsSortBar extends StatelessWidget {
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
              child: SortEventsBottomSheet()));
    }

    String getText() {
      if (homeState.sortType == SortType.newest) {
        return "New Events";
      } else {
        return "Upcoming Events";
      }
    }

    return Container(
        height: 40,
        alignment: Alignment.centerLeft,
        child: InkWell(
          onTap: () => onPressed(),
          child: Row(
            children: [
              const SizedBox(width: 24),
              Text(getText(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Icon(Icons.keyboard_arrow_down_outlined, size: 28)
            ],
          ),
        ));
  }
}
