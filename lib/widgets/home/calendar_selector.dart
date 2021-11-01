import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/home_state.dart';
import 'package:quiver/time.dart';

class _IndexedDate {
  final index;
  final dateTime;
  _IndexedDate(this.index, this.dateTime);
}

class CalendarSelector extends StatefulWidget {
  final double width;
  CalendarSelector({required this.width});
  @override
  State<StatefulWidget> createState() => _CalendarSelectorState();
}

class _CalendarSelectorState extends State<CalendarSelector> {
  final List<_IndexedDate> dates = List<_IndexedDate>.generate(100, (i) {
    final now = DateTime.now();
    return _IndexedDate(
        i, DateTime(now.year, now.month, now.day).add(Duration(days: i)));
  });

  final monthWidth = 70.0;
  int scrollingMonth = DateTime.now().month;
  ScrollController? calendarScrollController;

  @override
  void initState() {
    super.initState();
    calendarScrollController = ScrollController();
    final now = DateTime.now();
    final daysLeftThisMonth = daysInMonth(now.year, now.month) - now.day + 1;
    final daysNextMonth = daysInMonth(
        now.month == 12 ? now.year + 1 : now.year, (now.month + 1) % 12);
    final daysLastMonth = daysInMonth(
        now.month >= 11 ? now.year + 1 : now.year, (now.month + 2) % 12);
    final dayWidth = (widget.width - monthWidth) / 6;

    List<double> monthOffsets = [
      daysLeftThisMonth * dayWidth,
      daysNextMonth * dayWidth,
      daysLastMonth * dayWidth
    ];

    calendarScrollController!.addListener(() {
      final offset = calendarScrollController!.offset;
      if (offset < monthOffsets[0]) {
        if (scrollingMonth != now.month) {
          setState(() => scrollingMonth = now.month);
        }
      } else if (offset < monthOffsets[0] + monthOffsets[1]) {
        if (scrollingMonth != now.month + 1) {
          setState(() => scrollingMonth = now.month + 1);
        }
      } else if (offset < monthOffsets[0] + monthOffsets[1] + monthOffsets[2]) {
        if (scrollingMonth != now.month + 2) {
          setState(() => scrollingMonth = now.month + 2);
        }
      } else if (scrollingMonth != now.month + 3) {
        setState(() => scrollingMonth = now.month + 3);
      }
    });
  }

  @override
  void dispose() {
    calendarScrollController?.dispose();
    super.dispose();
  }

  String toDate(DateTime time) {
    return DateFormat('yyyy-MM-dd').format(time);
  }

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    final double width = MediaQuery.of(context).size.width;
    final now = DateTime.now();

    List<Widget> getDays(List<_IndexedDate> _dates) {
      return _dates
          .map((indexedDate) => InkWell(
                onTap: () {
                  homeState.selectedDate = indexedDate.dateTime;
                  homeState.refreshController.requestRefresh();
                },
                child: Material(
                  clipBehavior: Clip.antiAlias,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  )),
                  child: Container(
                      decoration: BoxDecoration(
                        color: homeState.selectedDate == indexedDate.dateTime
                            ? Color(0xff204865)
                            : Colors.white,
                      ),
                      height: double.infinity,
                      width: (width - monthWidth) / 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(indexedDate.dateTime.day.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: homeState.selectedDate ==
                                          indexedDate.dateTime
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 18)),
                          Text(DateFormat('EE').format(indexedDate.dateTime),
                              style: TextStyle(
                                color: homeState.selectedDate ==
                                        indexedDate.dateTime
                                    ? Colors.white
                                    : Colors.black,
                              )),
                        ],
                      )),
                ),
              ))
          .toList();
    }

    return Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.grey[50],
          boxShadow: kElevationToShadow[1],
        ),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                homeState.selectedDate = null;
                homeState.refreshController.requestRefresh();
              },
              child: Stack(
                children: [
                  Container(
                    width: monthWidth,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffe85c3f),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    child: Center(
                        child: Text(
                            DateFormat('MMM')
                                .format(DateTime(now.year, scrollingMonth)),
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))),
                  ),
                  if (homeState.selectedDate == null)
                    Material(
                        clipBehavior: Clip.antiAlias,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Container(
                            height: double.infinity,
                            width: 15,
                            decoration: BoxDecoration(
                              color: Color(0xff204865),
                              // borderRadius: BorderRadius.only(
                              // topRight: Radius.circular(10),
                              // bottomRight: Radius.circular(10))
                            )))
                ],
              ),
            ),
            Expanded(
                child: ListView(
                    controller: calendarScrollController,
                    scrollDirection: Axis.horizontal,
                    children: [...getDays(dates)]))
          ],
        ));
  }
}
