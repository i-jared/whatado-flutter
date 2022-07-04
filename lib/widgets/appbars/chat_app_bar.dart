import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/forum.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/providers/graphql/forums_provider.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Event event;
  final Forum forum;
  ChatAppBar({
    required this.event,
    required this.forum,
  });
  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    final userState = Provider.of<UserState>(context);
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.grey[50],
      title: Text(event.title,
          style: TextStyle(fontSize: 23, color: Colors.grey[850])),
      centerTitle: true,
      elevation: 1.0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: PopupMenuButton(
              onSelected: (value) async {
                if (value == 'unmute') {
                  final provider = ForumsGqlProvider();
                  final result =
                      await provider.unmute(forum.userNotification.id);
                  if (result.ok) {
                    Forum copy = forum..userNotification.muted = false;
                    forum.userNotification.muted = false;
                    homeState.updateForum(copy);
                  }
                }
                if (value == 'mute') {
                  final provider = ForumsGqlProvider();
                  final result = await provider.mute(forum.userNotification.id);
                  if (result.ok) {
                    Forum copy = forum..userNotification.muted = false;
                    forum.userNotification.muted = true;
                    homeState.updateForum(copy);
                  }
                }
                if (value == 'leave') {
                  final provider = EventsGqlProvider();
                  await provider.removeInvite(
                      eventId: event.id, userId: userState.user!.id);
                  await homeState.myEventsRefresh();
                }
                if (value == 'delete') {
                  final provider = EventsGqlProvider();
                  await provider.deleteEvent(event.id);
                  await homeState.myEventsRefresh();
                }
              },
              itemBuilder: (context) => [
                    if (forum.userNotification.muted)
                      PopupMenuItem(
                        child: Row(children: [
                          Icon(Icons.volume_up_outlined,
                              color: Colors.blue, size: 30),
                          SizedBox(width: 10),
                          Text('unmute', style: TextStyle(color: Colors.blue))
                        ]),
                        value: 'unmute',
                      ),
                    if (!forum.userNotification.muted)
                      PopupMenuItem(
                        child: Row(children: [
                          Icon(Icons.volume_off_outlined,
                              color: Colors.blue, size: 30),
                          SizedBox(width: 10),
                          Text('mute', style: TextStyle(color: Colors.blue))
                        ]),
                        value: 'mute',
                      ),
                    if (userState.user?.id == event.creator.id)
                      PopupMenuItem(
                        child: Row(
                          children: [
                            Icon(Icons.logout_outlined,
                                color: Colors.red, size: 30),
                            SizedBox(width: 10),
                            Text('delete', style: TextStyle(color: Colors.red))
                          ],
                        ),
                        value: 'delete',
                      ),
                    if (userState.user?.id != event.creator.id)
                      PopupMenuItem(
                        child: Row(
                          children: [
                            Icon(Icons.logout_outlined,
                                color: Colors.red, size: 30),
                            SizedBox(width: 10),
                            Text('leave', style: TextStyle(color: Colors.red))
                          ],
                        ),
                        value: 'leave',
                      )
                  ]),
        ),
      ],
    );
  }
}
