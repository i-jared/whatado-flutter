import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/chat.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/forum.dart';
import 'package:shimmer/shimmer.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/providers/graphql/forums_provider.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/home/chats.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/events/picture_waterfall.dart';

class ForumCard extends StatefulWidget {
  final Event event;
  final Forum forum;
  final Chat? lastChat;
  ForumCard({required this.event, required this.forum, this.lastChat});

  @override
  _ForumCardState createState() => _ForumCardState();
}

class _ForumCardState extends State<ForumCard> {
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
    final userState = Provider.of<UserState>(context);
    final hasImage = widget.event.imageUrl != null;
    final unread = widget.forum.chats.isEmpty
        ? false
        : widget.forum.userNotification.lastAccessed
            .isBefore(widget.forum.chats.first.createdAt);
    final muted = widget.forum.userNotification.muted;
    return InkWell(
      onTap: () async {
        final provider = ForumsGqlProvider();
        final result = await provider.access(widget.forum.userNotification.id);
        if (result.ok) homeState.accessForum(widget.forum);
        Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Chats(event: widget.event, forum: widget.forum)))
            .then((_) async {
          await homeState.myEventsRefresh();
        });
      },
      child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10, right: 16),
          child: Column(children: [
            Row(
              children: [
                unread
                    ? Container(
                        margin: EdgeInsets.symmetric(horizontal: 6),
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xfff7941d)),
                      )
                    : const SizedBox(width: 24),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(blurRadius: 10, color: Colors.grey[200]!)
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: Colors.grey[50],
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100)),
                          child: !hasImage
                              ? Image.asset('assets/Whatado_Transparent.png')
                              : CachedNetworkImage(
                                  imageUrl: widget.event.imageUrl!),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(widget.event.title,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: unread
                                            ? FontWeight.bold
                                            : FontWeight.normal)),
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      height: 26,
                                      width: 100,
                                      child: PictureWaterfall(
                                          loading: loading,
                                          users: firstInvited ?? [])),
                                  if (muted)
                                    Icon(Icons.volume_off_outlined,
                                        color: Color(0xfff7941d))
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  loading
                                      ? Flexible(
                                          flex: 3,
                                          child: Shimmer.fromColors(
                                              baseColor: Colors.grey[200] ??
                                                  Colors.grey,
                                              highlightColor: Colors.white,
                                              child: Container(
                                                  color: Colors.grey[100],
                                                  height: 15)),
                                        )
                                      : Flexible(
                                          flex: 5,
                                          child: Text(
                                              widget.lastChat?.text ?? '',
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
                                              baseColor: Colors.grey[200] ??
                                                  Colors.grey,
                                              highlightColor: Colors.white,
                                              child: Container(
                                                  color: Colors.grey[100],
                                                  height: 15)),
                                        )
                                      : Flexible(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10.0),
                                            child: Text(
                                                widget.lastChat != null
                                                    ? timeago.format(
                                                        widget.lastChat!
                                                            .createdAt,
                                                        locale: 'en_short')
                                                    : '',
                                                style: TextStyle(
                                                    fontWeight: unread
                                                        ? FontWeight.bold
                                                        : FontWeight.normal)),
                                          ),
                                        ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ])),
    );
  }

  Future<void> init() async {
    final userProvider = UserGqlProvider();
    final result = await userProvider.eventUserPreview([
      ...widget.event.invited.map((eu) => eu.id).toList(),
      widget.event.creator.id
    ]);
    if (mounted)
      setState(() {
        firstInvited = result.data;
        loading = false;
      });
  }
}
