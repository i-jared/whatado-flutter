import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';
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
            child: ListView(
              shrinkWrap: (homeState.allEvents != null && homeState.allEvents!.isEmpty),
              key: PageStorageKey(0),
              controller: homeState.allEventsScrollController,
              children: [
                if (userState.user?.location == null && !(homeState.locationPermission ?? true))
                  Container(
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
                  ),
                if (homeState.allEvents == null || homeState.otherEvents == null)
                  Container(
                      height: MediaQuery.of(context).size.height - 200,
                      child: Center(child: CircularProgressIndicator(value: null))),
                if (homeState.allEvents != null &&
                    homeState.allEvents!.isEmpty &&
                    homeState.otherEvents != null &&
                    homeState.otherEvents!.isEmpty)
                  Container(
                    height: MediaQuery.of(context).size.height - 200,
                    child: Center(
                      child: Text('No events to display.. :('),
                    ),
                  ),
                if ((homeState.allEvents != null && homeState.allEvents!.isNotEmpty) ||
                    (homeState.otherEvents != null && homeState.otherEvents!.isNotEmpty))
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: AllEventsSortBar(),
                  ),
                if (homeState.allEvents != null && homeState.allEvents!.isNotEmpty)
                  ...homeState.allEvents!
                      .where((event) => !(userState.user?.blockedUsers
                              .map((u) => u.id)
                              .contains(event.creator.id) ??
                          false))
                      .map((e) {
                    return EventDisplay(event: e);
                  }).toList(),
                // if (homeState.otherEvents != null &&
                //     homeState.otherEvents!.isNotEmpty)
                //   FadeIn(
                //       duration: Duration(seconds: 2),
                //       child: Center(
                //           child: Text('Look at these events',
                //               style: TextStyle(fontSize: 30)))),
                if (homeState.otherEvents != null && homeState.otherEvents!.isNotEmpty)
                  ...homeState.otherEvents!
                      .where((event) => !(userState.user?.blockedUsers
                              .map((u) => u.id)
                              .contains(event.creator.id) ??
                          false))
                      .map((e) => EventDisplay(event: e))
                      .toList()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
