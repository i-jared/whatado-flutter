import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/state/chat_state.dart';

class GroupMembersRow extends StatefulWidget {
  final Event event;
  GroupMembersRow({required this.event});

  @override
  State<StatefulWidget> createState() => _GroupMembersRowState();
}

class _GroupMembersRowState extends State<GroupMembersRow> {
  bool loading = true;
  List<EventUser> users = [];

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    final chatState = Provider.of<ChatState>(context);
    final ids = chatState.event.invitedIds;
    return Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: !loading
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: users
                      .map((user) => Container(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: 28,
                                    backgroundImage:
                                        NetworkImage(user.imageUrl)),
                                Text(user.name),
                              ],
                            ),
                          ))
                      .toList())
              : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List<Widget>.generate(
                      5,
                      (i) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Shimmer.fromColors(
                                baseColor: Colors.grey[200] ?? Colors.grey,
                                highlightColor: Colors.white,
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 28,
                                )),
                          )),
                )),
    );
  }

  Future<void> init() async {
    final provider = UserGqlProvider();
    final result = await provider.eventUserPreview(
        [...widget.event.invitedIds, widget.event.creator.id]);
    setState(() {
      users = result.data ?? [];
      loading = false;
    });
    print(result.data);
  }
}
