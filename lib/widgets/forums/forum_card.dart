import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/chat.dart';
import 'package:whatado/models/chat_notification.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/forum.dart';
import 'package:shimmer/shimmer.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:whatado/providers/graphql/chat_provider.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/providers/graphql/forums_provider.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/home/chats.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/home_state.dart';

class ForumCard extends StatefulWidget {
  final Event event;
  final Forum forum;
  ForumCard({required this.event, required this.forum});

  @override
  _ForumCardState createState() => _ForumCardState();
}

class _ForumCardState extends State<ForumCard> {
  Chat? lastMessage;
  List<EventUser>? firstInvited;
  late bool loading;

  @override
  void initState() {
    super.initState();
    loading = true;
    init();
  }

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    final hasImage =
        widget.event.imageUrl != null && widget.event.imageUrl!.isNotEmpty;
    final unread = widget.forum.chats.isEmpty
        ? false
        : widget.forum.userNotification.lastAccessed
            .isBefore(widget.forum.chats.first.createdAt);
    return InkWell(
      onTap: () async {
        final provider = ForumsGqlProvider();
        final result = await provider.access(widget.forum.userNotification.id);
        if (result.ok) homeState.accessForum(widget.forum);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    Chats(event: widget.event, forum: widget.forum)));
      },
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: PopupMenuButton(
                onSelected: (value) async {
                  if (value == 'unmute') {
                    final provider = ForumsGqlProvider();
                    await provider.unmute(widget.forum.userNotification.id);
                    Forum copy = widget.forum..userNotification.muted = false;
                    homeState.updateForum(copy);
                  }
                  if (value == 'mute') {
                    final provider = ForumsGqlProvider();
                    await provider.mute(widget.forum.userNotification.id);
                    Forum copy = widget.forum..userNotification.muted = false;
                    homeState.updateForum(copy);
                  }
                  if (value == 'leave') {
                    final provider = EventsGqlProvider();
                    await provider.removeInvite(
                        eventId: widget.event.id, userId: loginService.userId!);
                  }
                },
                itemBuilder: (context) => [
                      if (widget.forum.userNotification.muted)
                        PopupMenuItem(
                          child: Row(children: [
                            Icon(Icons.volume_up_outlined,
                                color: Colors.blue, size: 30),
                            SizedBox(width: 10),
                            Text('unmute', style: TextStyle(color: Colors.blue))
                          ]),
                          value: 'unmute',
                        ),
                      if (!widget.forum.userNotification.muted)
                        PopupMenuItem(
                          child: Row(children: [
                            Icon(Icons.volume_off_outlined,
                                color: Colors.blue, size: 30),
                            SizedBox(width: 10),
                            Text('mute', style: TextStyle(color: Colors.blue))
                          ]),
                          value: 'mute',
                        ),
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
          Container(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 35),
              child: Column(children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 33,
                      backgroundColor: Colors.white,
                      child: !hasImage
                          ? Image.asset('assets/icon_android.png')
                          : null,
                      backgroundImage: hasImage
                          ? NetworkImage(widget.event.imageUrl ?? '')
                          : null,
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.event.title,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: unread
                                      ? FontWeight.bold
                                      : FontWeight.normal)),
                          SizedBox(height: 4),
                          Container(
                            height: 26,
                            width: 100,
                            child: Stack(
                                children: loading
                                    ? List<Widget>.generate(
                                        5,
                                        (i) => Positioned(
                                              left: i * 15,
                                              bottom: 0,
                                              child: Shimmer.fromColors(
                                                  child:
                                                      CircleAvatar(radius: 13),
                                                  baseColor: Colors.grey[200] ??
                                                      Colors.grey,
                                                  highlightColor: Colors.white),
                                            ))
                                    : firstInvited!
                                        .map((eventUser) => CircleAvatar(
                                              radius: 13,
                                              backgroundImage: NetworkImage(
                                                  eventUser.photoUrls.first),
                                            ))
                                        .toList()),
                          ),
                          SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              loading
                                  ? Flexible(
                                      flex: 3,
                                      child: Shimmer.fromColors(
                                          baseColor:
                                              Colors.grey[200] ?? Colors.grey,
                                          highlightColor: Colors.white,
                                          child: Container(
                                              color: Colors.grey[100],
                                              height: 15)),
                                    )
                                  : Flexible(
                                      flex: 5,
                                      child: Text(lastMessage?.text ?? '',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontWeight: unread
                                                  ? FontWeight.bold
                                                  : FontWeight.normal)),
                                    ),
                              const SizedBox(width: 20),
                              loading
                                  ? Flexible(
                                      flex: 1,
                                      child: Shimmer.fromColors(
                                          baseColor:
                                              Colors.grey[200] ?? Colors.grey,
                                          highlightColor: Colors.white,
                                          child: Container(
                                              color: Colors.grey[100],
                                              height: 15)),
                                    )
                                  : Flexible(
                                      flex: 1,
                                      child: Text(
                                          lastMessage != null
                                              ? timeago.format(
                                                  lastMessage!.createdAt,
                                                  locale: 'en_short')
                                              : '',
                                          style: TextStyle(
                                              fontWeight: unread
                                                  ? FontWeight.bold
                                                  : FontWeight.normal)),
                                    ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ])),
        ],
      ),
    );
  }

  Future<void> init() async {
    final userProvider = UserGqlProvider();
    final result = await userProvider.eventUserPreview([
      ...widget.event.invited.map((eu) => eu.id).toList(),
      widget.event.creator.id
    ]);
    final chatQuery = ChatGqlProvider();
    final chatResult = await chatQuery.lastChat(widget.forum.id);
    setState(() {
      firstInvited = result.data;
      lastMessage = chatResult.data;
      loading = false;
    });
  }
}
