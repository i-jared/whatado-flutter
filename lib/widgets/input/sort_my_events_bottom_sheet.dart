import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/home_state.dart';

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
      if (type == MySortType.current) {
        return "All Current";
      } else if (type == MySortType.mine) {
        return "My Events";
      } else if (type == MySortType.invited) {
        return "Invited Events";
      } else {
        return "Past Events";
      }
    }

    IconData getIcon(MySortType type) {
      if (type == MySortType.current) {
        return homeState.mySortType == type
            ? Icons.calendar_today
            : Icons.calendar_today_outlined;
      } else if (type == MySortType.mine) {
        return homeState.mySortType == type
            ? Icons.person_add
            : Icons.person_add_outlined;
      } else if (type == MySortType.invited) {
        return homeState.mySortType == type
            ? Icons.mark_email_read
            : Icons.mark_email_read_outlined;
      } else {
        return homeState.mySortType == type
            ? Icons.skip_previous
            : Icons.skip_previous_outlined;
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Text('Sort events by...',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
            Divider(),
            ...MySortType.values.map(
              (type) => Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: InkWell(
                  onTap: () => onPressed(type),
                  child: Row(
                    children: [
                      Container(
                          width: 40, child: Icon(getIcon(type), size: 30)),
                      Text(getText(type),
                          style: TextStyle(
                              fontWeight: homeState.mySortType == type
                                  ? FontWeight.bold
                                  : FontWeight.normal))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
