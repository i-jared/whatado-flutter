import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/widgets/events/event_display.dart';
import 'package:whatado/widgets/events/my_event_display.dart';
import 'package:whatado/widgets/home/calendar_selector.dart';

class MyEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final homeState = Provider.of<HomeState>(context);

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
                    ...homeState.myEvents!
                        .map((e) => MyEventDisplay(event: e))
                        .toList()
                  ],
                ),
              );
  }
}
