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
            ? ListView.builder(
                itemCount: homeState.myForums!.length,
                itemBuilder: (context, i) {
                  final forum = homeState.myForums![i];
                  final event = homeState.myEvents!
                      .firstWhere((event) => event.id == forum.eventId);
                  final lastChat = homeState.lastMessages!.firstWhere((obj) {
                    return obj['forumId'] == forum.id;
                  });
                  return ForumCard(
                      event: event, forum: forum, lastChat: lastChat['chat']);
                })
            : Container(child: Center(child: Text('no forums')));
  }
}
