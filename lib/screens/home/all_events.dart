import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/widgets/events/event_display.dart';
import 'package:whatado/widgets/home/calendar_selector.dart';

class AllEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final homeState = Provider.of<HomeState>(context);

    return SmartRefresher(
      controller: homeState.refreshController,
      onRefresh: homeState.allEventsRefresh,
      child: ListView(
        shrinkWrap:
            (homeState.allEvents != null && homeState.allEvents!.isEmpty),
        key: PageStorageKey(0),
        controller: homeState.allEventsScrollController,
        children: [
          CalendarSelector(width: width),
          if (homeState.allEvents == null)
            Container(
                height: MediaQuery.of(context).size.height - 200,
                child: Center(child: CircularProgressIndicator(value: null))),
          if (homeState.allEvents != null && homeState.allEvents!.isEmpty)
            Container(
              height: MediaQuery.of(context).size.height - 200,
              child: Center(
                child: Text('no events in your area.. :('),
              ),
            ),
          if (homeState.allEvents != null && homeState.allEvents!.isNotEmpty)
            ...homeState.allEvents!.map((e) => EventDisplay(event: e)).toList()
        ],
      ),
    );
  }
}
