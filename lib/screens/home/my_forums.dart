import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/widgets/forums/forum_card.dart';

class MyForums extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    return homeState.myForums == null || homeState.lastMessages == null
        ? Center(child: CircularProgressIndicator())
        : homeState.myForums!.isNotEmpty
            ? ListView(
                children: homeState.myForums!.map((forum) {
                if (!homeState.myEvents!.any((e) => e.id == forum.eventId)) {
                  return SizedBox.shrink();
                }
                final event = homeState.myEvents!.firstWhere((event) => event.id == forum.eventId);
                final lastChat = homeState.lastMessages!.firstWhere((obj) {
                  return obj['forumId'] == forum.id;
                }, orElse: () => {'chat': null});
                return ForumCard(event: event, forum: forum, lastChat: lastChat['chat']);
              }).toList())
            : Container(child: Center(child: Text('No forums to display... :(')));
  }
}
