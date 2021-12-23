import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/widgets/buttons/shaded_icon.dart';
import 'package:whatado/widgets/input/bottom_sheet_list.dart';

class SortMyEventsBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);

    void onPressed(MySortType type) {
      homeState.mySortType = type;
      homeState.myEventsRefresh();
      Navigator.pop(context);
    }

    String getText(MySortType type) {
      if (type == MySortType.mine) {
        return "Hosting Events";
      } else if (type == MySortType.invited) {
        return "Going to Events";
      } else if (type == MySortType.current) {
        return "New Events";
      } else {
        return "Past Events";
      }
    }

    IconData getIcon(MySortType type) {
      if (type == MySortType.mine) {
        return homeState.mySortType == type
            ? Icons.record_voice_over
            : Icons.record_voice_over_outlined;
      } else if (type == MySortType.invited) {
        return homeState.mySortType == type
            ? Icons.directions_walk
            : Icons.directions_walk_outlined;
      } else if (type == MySortType.current) {
        return homeState.mySortType == type
            ? Icons.calendar_today
            : Icons.calendar_today_outlined;
      } else {
        return homeState.mySortType == type
            ? Icons.access_time_filled
            : Icons.access_time;
      }
    }

    List<Widget> items = MySortType.values
        .map(
          (type) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: InkWell(
              onTap: () => onPressed(type),
              child: Row(
                children: [
                  ShadedIcon(icon: getIcon(type), width: 60, iconSize: 30),
                  SizedBox(width: 20),
                  Text(getText(type), style: TextStyle(fontSize: 20)),
                  Spacer(),
                  if (homeState.mySortType == type)
                    Icon(Icons.check_circle_outline_rounded,
                        color: Color(0xfff7941d), size: 40)
                ],
              ),
            ),
          ),
        )
        .toList();

    return BottomSheetList(items: items);
  }
}
