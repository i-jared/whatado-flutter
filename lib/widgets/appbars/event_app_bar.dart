import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/forum.dart';
import 'package:whatado/providers/graphql/forums_provider.dart';
import 'package:whatado/screens/home/chats.dart';
import 'package:whatado/screens/home/edit_event_details.dart';
import 'package:whatado/state/edit_event_state.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';

class EventAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Event event;
  EventAppBar({required this.event});

  @override
  Size get preferredSize => Size.fromHeight(50.0);

  final dateFormat = DateFormat('EEE, M-d-y');
  final timeFormat = DateFormat('jm');
  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final homeState = Provider.of<HomeState>(context);
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.grey[50],
      elevation: 0,
      title:
          Text('Event Details', style: TextStyle(fontSize: 23, color: Colors.grey[850])),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: homeState.myForums == null || homeState.myForums!.isEmpty
                ? null
                : () async {
                    final Forum forum =
                        homeState.myForums!.firstWhere((f) => f.eventId == event.id);
                    final provider = ForumsGqlProvider();
                    final result = await provider.access(forum.userNotification.id);
                    if (result.ok) homeState.accessForum(forum);
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Chats(event: event, forum: forum)))
                        .then((_) async {
                      await homeState.myEventsRefresh();
                    });
                  },
            icon: Icon(Icons.forum_outlined),
            color: AppColors.primary),
        if (userState.user?.id == event.creator.id)
          IconButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChangeNotifierProvider(
                          create: (context) => EditEventState(event),
                          child: EditEventDetails(event: event)))),
              icon: Icon(Icons.edit_outlined),
              color: Colors.grey[850]),
      ],
    );
  }
}
