import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/events/my_event_display.dart';
import 'package:whatado/widgets/events/shadow_box.dart';

class MyEvents extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyEventsState();
}

class _MyEventsState extends State<MyEvents> with TickerProviderStateMixin {
  late bool expanded;
  @override
  void initState() {
    super.initState();
    expanded = true;
    _controller.value = 1.0;
  }

  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 500),
    lowerBound: 0.2,
    vsync: this,
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    final userState = Provider.of<UserState>(context);
    List<Event> tempEvents = homeState.myEvents
            ?.where((e) => isSameDay(e.time, homeState.selectedDate ?? DateTime.now()))
            .toList() ??
        [];
    final dateFormat = DateFormat('EEE, M-d-y');
    final readableDateFormat = DateFormat('MMM d');
    final String emptyText =
        "No events on ${readableDateFormat.format(homeState.selectedDate ?? DateTime.now())}";
    // switch (homeState.mySortType) {
    //   case MySortType.current:
    //     tempEvents =
    //         homeState.myEvents?.where((event) => event.time.isAfter(DateTime.now())).toList() ?? [];
    //     break;
    //   case MySortType.mine:
    //     tempEvents =
    //         homeState.myEvents?.where((event) => event.creator.id == userState.user?.id).toList() ??
    //             [];
    //     break;
    //   case MySortType.invited:
    //     tempEvents =
    //         homeState.myEvents?.where((event) => event.creator.id != userState.user?.id).toList() ??
    //             [];
    //     break;
    //   case MySortType.past:
    //     tempEvents =
    //         homeState.myEvents?.where((event) => event.time.isBefore(DateTime.now())).toList() ??
    //             [];
    //     break;
    // }

    return SmartRefresher(
      controller: homeState.myEventsRefreshController,
      onRefresh: homeState.myEventsRefresh,
      child: (homeState.myEvents != null && homeState.myEvents!.isEmpty)
          ? Container(
              child: Center(
                child: Text(emptyText),
              ),
            )
          : (homeState.myEvents == null)
              ? Center(child: CircularProgressIndicator(value: null))
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
                          child: ShadowBox(
                            child: SizeTransition(
                              axisAlignment: -1,
                              sizeFactor: _animation,
                              child: Container(
                                // height: MediaQuery.of(context).size.width,
                                // width: MediaQuery.of(context).size.width,
                                child: TableCalendar(
                                    availableGestures: AvailableGestures.none,
                                    headerStyle: HeaderStyle(
                                        formatButtonVisible: false, headerPadding: EdgeInsets.zero),
                                    daysOfWeekHeight: 50,
                                    daysOfWeekStyle: DaysOfWeekStyle(
                                        weekdayStyle: const TextStyle(
                                            color: const Color(0xFF4F4F4F),
                                            fontWeight: FontWeight.bold),
                                        weekendStyle: const TextStyle(
                                            color: const Color(0xFF6A6A6A),
                                            fontWeight: FontWeight.bold),
                                        dowTextFormatter: (day, locale) =>
                                            DateFormat.E(locale).format(day)),
                                    calendarBuilders: CalendarBuilders(
                                        defaultBuilder: (context, day, focusedDay) {
                                          final List<Event>? matchingEvents = homeState.myEvents
                                              ?.where((e) => isSameDay(e.time, day))
                                              .toList();
                                          return Container(
                                              child: Stack(
                                            children: [
                                              Center(child: Text(day.day.toString())),
                                              if (matchingEvents != null &&
                                                  matchingEvents.isNotEmpty)
                                                _buildEventIndicatorRow(matchingEvents, userState),
                                            ],
                                          ));
                                        },
                                        headerTitleBuilder: (context, day) => Center(
                                            child: Text(DateFormat('MMMM y').format(day),
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold, fontSize: 18))),
                                        todayBuilder: (context, day, focusedDay) {
                                          final List<Event>? matchingEvents = homeState.myEvents
                                              ?.where((e) => isSameDay(e.time, day))
                                              .toList();
                                          return Container(
                                              // decoration: BoxDecoration(
                                              // border: Border.all(width: 2.0, color: Colors.grey[400]!),
                                              // borderRadius: BorderRadius.circular(AppRadii.button)),
                                              child: Stack(
                                            children: [
                                              Center(child: Text(day.day.toString())),
                                              if (matchingEvents != null &&
                                                  matchingEvents.isNotEmpty)
                                                _buildEventIndicatorRow(matchingEvents, userState),
                                            ],
                                          ));
                                        },
                                        selectedBuilder: (context, day, focusedDay) {
                                          final List<Event>? matchingEvents = homeState.myEvents
                                              ?.where((e) => isSameDay(e.time, day))
                                              .toList();
                                          return Container(
                                              decoration: BoxDecoration(
                                                  color: AppColors.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(AppRadii.button)),
                                              child: Stack(
                                                children: [
                                                  Center(
                                                      child: Text(day.day.toString(),
                                                          style: TextStyle(color: Colors.white))),
                                                  if (matchingEvents != null &&
                                                      matchingEvents.isNotEmpty)
                                                    _buildEventIndicatorRow(
                                                        matchingEvents, userState),
                                                ],
                                              ));
                                        }),
                                    selectedDayPredicate: (day) =>
                                        dateFormat.format(day) ==
                                        dateFormat.format(homeState.selectedDate ?? DateTime.now()),
                                    // enabledDayPredicate: (day) =>
                                    // homeState.myEvents?.any((e) => isSameDay(e.time, day)) ??
                                    // false,
                                    onDaySelected: (selectedDay, focusedDay) =>
                                        homeState.selectedDate = selectedDay,
                                    currentDay: null,
                                    focusedDay: homeState.selectedDate ?? DateTime.now(),
                                    firstDay: DateTime.now(),
                                    lastDay: DateTime.now().add(Duration(days: 365))),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            right: 10,
                            bottom: 10,
                            child: Container(
                              height: 50,
                              width: 50,
                              child: InkWell(
                                onTap: () {
                                  setState(() => expanded = !expanded);
                                  if (expanded == true)
                                    _controller.forward();
                                  else
                                    _controller.reverse();
                                },
                                child: Icon(expanded ? Icons.arrow_upward : Icons.arrow_downward,
                                    color: AppColors.primary),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromARGB(255, 216, 216, 216),
                                        offset: Offset(0.0, 0.0),
                                        blurRadius: 12,
                                        spreadRadius: -4.0,
                                        blurStyle: BlurStyle.normal)
                                  ]),
                            )),
                      ],
                    ),
                    tempEvents.isEmpty
                        ? Center(child: Text(emptyText))
                        : Expanded(
                            child: ListView(
                              key: PageStorageKey(0),
                              children: [
                                if (tempEvents.isNotEmpty)
                                  ...tempEvents.map((e) => MyEventDisplay(event: e)).toList()
                              ],
                            ),
                          ),
                  ],
                ),
    );
  }
}

bool isSameDay(DateTime a, DateTime b) => a.year == b.year && a.day == b.day && a.month == b.month;

Widget _buildEventIndicator([bool mine = false]) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 1.0, vertical: 3),
    height: 7,
    width: 7,
    decoration: BoxDecoration(
        color: mine ? Colors.blue : Colors.red, borderRadius: BorderRadius.circular(10)),
  );
}

Widget _buildEventIndicatorRow(matchingEvents, userState) {
  return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (matchingEvents.any((e) => e.creator.id == userState.user?.id))
            _buildEventIndicator(true),
          if (matchingEvents.any((e) => e.creator.id != userState.user?.id))
            _buildEventIndicator(false),
        ],
      ));
}
