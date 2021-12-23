import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/events/my_event_display.dart';
import 'package:whatado/widgets/events/my_events_sort_bar.dart';

class MyEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    final userState = Provider.of<UserState>(context);
    List<Event> tempEvents = [];
    switch (homeState.mySortType) {
      case MySortType.current:
        tempEvents = homeState.myEvents ?? [];
        break;
      case MySortType.mine:
        tempEvents = homeState.myEvents
                ?.where((event) => event.creator.id == userState.user?.id)
                .toList() ??
            [];
        break;
      case MySortType.invited:
        tempEvents = homeState.myEvents
                ?.where((event) => event.creator.id != userState.user?.id)
                .toList() ??
            [];
        break;
      case MySortType.past:
        tempEvents = homeState.myEvents
                ?.where((event) => event.time.isBefore(DateTime.now()))
                .toList() ??
            [];
        break;
    }

    return (homeState.myEvents != null && homeState.myEvents!.isEmpty)
        ? Container(
            child: Center(
              child: Text('no events to display :('),
            ),
          )
        : (homeState.myEvents == null)
            ? Center(child: CircularProgressIndicator(value: null))
            : SmartRefresher(
                controller: homeState.myEventsRefreshController,
                onRefresh: homeState.myEventsRefresh,
                child: ListView(
                  key: PageStorageKey(0),
                  children: [
                    Divider(),
                    MyEventsSortBar(),
                    if (tempEvents.isEmpty)
                      Container(
                          height: MediaQuery.of(context).size.height - 205,
                          child:
                              Center(child: Text('No events to display :('))),
                    if (tempEvents.isNotEmpty)
                      ...tempEvents
                          .map((e) => MyEventDisplay(event: e))
                          .toList()
                  ],
                ),
              );
  }
}
