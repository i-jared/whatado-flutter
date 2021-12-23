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
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xfffff2e2),
                          borderRadius: BorderRadius.circular(15)),
                      width: 60,
                      height: 60,
                      child: Icon(getIcon(type),
                          size: 30, color: Color(0xfff7941d))),
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

    return Container(
      height: 500,
      decoration: BoxDecoration(
          boxShadow: kElevationToShadow[16],
          color: Colors.grey[50],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
                child: Container(
                    height: 7,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5)))),
            SizedBox(height: 30),
            Text('Sort Events By',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
            SizedBox(height: 20),
            Expanded(
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, i) => items[i],
                    separatorBuilder: (context, i) => Divider(),
                    itemCount: items.length))
          ],
        ),
      ),
    );
  }
}
