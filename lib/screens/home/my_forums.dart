import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/widgets/forums/forum_card.dart';

class MyForums extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    final myForums = homeState.myForums;
    final myEvents = homeState.myEvents;
    return myForums == null
        ? Center(child: CircularProgressIndicator())
        : myForums.isNotEmpty
            ? ListView.separated(
                separatorBuilder: (context, i) => SizedBox(height: 30),
                itemCount: myForums.length,
                itemBuilder: (context, i) {
                  final forum = myForums[i];
                  final event = myEvents!
                      .firstWhere((event) => event.id == forum.eventId);
                  return ForumCard(event: event, forum: forum);
                })
            : Container(child: Center(child: Text('no forums')));
  }
}
