import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/search_state.dart';
import 'package:whatado/widgets/events/event_display.dart';

class SearchEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final searchState = Provider.of<SearchState>(context);
    if (searchState.eventsLoading) {
      return Center(child: CircularProgressIndicator());
    }
    if (searchState.filteredEvents == null) {
      return Center(child: CircularProgressIndicator());
    }
    if (searchState.filteredEvents!.isEmpty) {
      return Center(child: Text('No events to list'));
    }
    int eventsLength = searchState.filteredEvents!.length;

    return ListView.builder(
        itemCount: eventsLength * 2 + (eventsLength > 0 ? 1 : 0),
        itemBuilder: (context, i) {
          if (i == 0) {
            // TODO: put interest selector here
            return SizedBox.shrink();
            // return Padding(
            // padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
            // child: Text('Suggested Events',
            // style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            // );
          }
          if (i.isOdd) {
            return Divider();
          }
          int j = i ~/ 2 - 1;
          return EventDisplay(event: searchState.filteredEvents![j]);
        });
  }
}
