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
          context: context,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          )),
          builder: (BuildContext context) => SortMyEventsBottomSheet());
    }

    List<Widget> getRow() {
      if (homeState.mySortType == MySortType.current) {
        return [
          Container(
            width: 40,
            child: Icon(Icons.calendar_today_outlined, size: 20),
          ),
          Text("All Current"),
          Icon(Icons.keyboard_arrow_down_outlined)
        ];
      } else if (homeState.mySortType == MySortType.mine) {
        return [
          Container(
            width: 40,
            child: Icon(Icons.person_add_outlined, size: 20),
          ),
          Text("My Events"),
          Icon(Icons.keyboard_arrow_down_outlined)
        ];
      } else if (homeState.mySortType == MySortType.invited) {
        return [
          Container(
            width: 40,
            child: Icon(Icons.mark_email_read_outlined, size: 20),
          ),
          Text("Invited Events"),
          Icon(Icons.keyboard_arrow_down_outlined)
        ];
      } else {
        return [
          Container(
            width: 40,
            child: Icon(Icons.skip_previous_outlined, size: 20),
          ),
          Text("Past Events"),
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
