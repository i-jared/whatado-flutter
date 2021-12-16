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
          context: context,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          )),
          builder: (BuildContext context) => SortEventsBottomSheet());
    }

    List<Widget> getRow() {
      if (homeState.sortType == SortType.newest) {
        return [
          Container(
            width: 40,
            child: Icon(Icons.new_releases_outlined, size: 20),
          ),
          Text("New Events"),
          Icon(Icons.keyboard_arrow_down_outlined)
        ];
      } else {
        return [
          Container(
            width: 40,
            child: Icon(Icons.calendar_today_outlined, size: 20),
          ),
          Text("Upcoming Events"),
          Icon(Icons.keyboard_arrow_down_outlined)
        ];
      }
    }

    return Container(
        height: 40,
        alignment: Alignment.centerLeft,
        child: InkWell(
          onTap: () => onPressed(),
          child: Row(children: getRow()),
        ));
  }
}
