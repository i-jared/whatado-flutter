import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/graphql/queries_graphql_api.dart';
import 'package:whatado/state/home_state.dart';

class SortEventsBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);

    Widget getRow(SortType type) {
      if (type == SortType.newest) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: InkWell(
              onTap: () {
                homeState.sortType = type;
                homeState.allEventsRefresh();
                Navigator.pop(context);
              },
              child: Row(children: [
                Container(
                  width: 40,
                  child: Icon(
                      homeState.sortType == type
                          ? Icons.new_releases
                          : Icons.new_releases_outlined,
                      size: 30),
                ),
                Text("New",
                    style: TextStyle(
                        fontWeight: homeState.sortType == type
                            ? FontWeight.bold
                            : FontWeight.normal)),
              ])),
        );
      } else if (type == SortType.soonest) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: InkWell(
            onTap: () {
              homeState.sortType = type;
              homeState.allEventsRefresh();
              Navigator.pop(context);
            },
            child: Row(children: [
              Container(
                width: 40,
                child: Icon(
                    homeState.sortType == type
                        ? Icons.calendar_today
                        : Icons.calendar_today_outlined,
                    size: 30),
              ),
              Text("Upcoming",
                  style: TextStyle(
                      fontWeight: homeState.sortType == type
                          ? FontWeight.bold
                          : FontWeight.normal)),
            ]),
          ),
        );
      } else {
        return SizedBox.shrink();
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
            ...SortType.values.map((type) => getRow(type)),
          ],
        ),
      ),
    );
  }
}
