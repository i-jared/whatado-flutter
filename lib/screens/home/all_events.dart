import 'dart:math';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/logger.dart';
import 'package:whatado/widgets/events/all_events_sort_bar.dart';
import 'package:whatado/widgets/events/event_display.dart';
import 'package:whatado/widgets/home/calendar_selector.dart';

class AllEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final homeState = Provider.of<HomeState>(context);
    final userState = Provider.of<UserState>(context);

    return Column(
      children: [
        CalendarSelector(width: width),
        Expanded(
          child: SmartRefresher(
              controller: homeState.refreshController,
              onRefresh: homeState.allEventsRefresh,
              child: getMainWidget(context, userState, homeState)),
        ),
      ],
    );
  }

  Widget getMainWidget(BuildContext context, UserState userState, HomeState homeState) {
    // if either list is null, we're still loading
    if (homeState.allEvents == null || homeState.otherEvents == null || homeState.allAds == null)
      return Container(
          height: MediaQuery.of(context).size.height - 200,
          child: Center(child: CircularProgressIndicator(value: null)));

    // location is still null after requesting, you need to allow location permission
    if (userState.user?.location == null && !(homeState.locationPermission ?? true))
      return Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height - 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Please allow permission to access location.'),
            TextButton(
                child: Text('access location'),
                onPressed: () async {
                  final permissionResult = await Permission.location.request();
                  if (permissionResult.isGranted || permissionResult.isLimited) {
                    final updateResult = await homeState.loadLocation();
                    if (updateResult) {
                      await homeState.load();
                    }
                  }
                }),
          ],
        ),
      );

    // events are loaded but they're empty. no events to display.
    if (homeState.allEvents!.isEmpty && homeState.otherEvents!.isEmpty)
      return Container(
        height: MediaQuery.of(context).size.height - 200,
        child: Center(
          child: Text('No events to display.. :('),
        ),
      );

    // main event and ad feed
    final homeLen = homeState.allEvents!.length;
    final othLen = homeState.otherEvents!.length;
    final adLen = (homeLen + othLen) ~/ 5;
    final eventsLength = homeLen + othLen + adLen;

    return ListView.builder(
        key: PageStorageKey(0),
        controller: homeState.allEventsScrollController,
        itemCount: eventsLength + 1,
        itemBuilder: (context, i) {
          if (i == 0)
            return Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: AllEventsSortBar(),
            );
          if (i % 5 == 0) {
            // display ad
            // when ad is seen, set the ad state in home state to seen.
            return VisibilityDetector(
                key: Key(i.toString()), onVisibilityChanged: (info) {}, child: SizedBox.shrink());
          }
          if (i - 1 < homeLen + i ~/ 5) {
            return EventDisplay(event: homeState.allEvents![i - 1 - (i ~/ 5)]);
          }
          return EventDisplay(event: homeState.otherEvents![i - 1 - homeLen - (i ~/ 5)]);
        });
  }
}
