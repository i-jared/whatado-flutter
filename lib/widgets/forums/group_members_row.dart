import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/profile/user_profile.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';

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
    final userState = Provider.of<UserState>(context);
    final homeState = Provider.of<HomeState>(context);
    final removeUser = (EventUser user) => userState.user?.id ==
                widget.event.creator.id &&
            userState.user?.id != user.id
        ? () => showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                    title: Text('Remove from event?'),
                    content: Text(
                        'Are you sure you want to remove ${user.name} from the event and chat?'),
                    actions: [
                      TextButton(
                          child: Text("Cancel"),
                          onPressed: () => Navigator.pop(context)),
                      TextButton(
                        child: Text("Remove"),
                        onPressed: () async {
                          final provider = EventsGqlProvider();
                          final result = await provider.removeInvite(
                              eventId: widget.event.id,
                              userId: userState.user!.id);
                          if (result.ok) {
                            users.removeWhere((u) => u.id == user.id);
                            setState(() => users = users);
                          }
                          await homeState.myEventsRefresh();
                          Navigator.pop(context);
                        },
                      ),
                    ]))
        : null;

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
                                InkWell(
                                    onTap: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        UserProfile(
                                                            user: user)))
                                            .then((_) async {
                                          await Future.delayed(
                                              Duration(milliseconds: 500));
                                          SystemChrome.setSystemUIOverlayStyle(
                                              SystemUiOverlayStyle.dark
                                                  .copyWith(
                                            systemNavigationBarColor:
                                                Colors.grey[50],
                                            statusBarColor: Colors.transparent,
                                          ));
                                        }),
                                    child: CircleAvatar(
                                        radius: 28,
                                        backgroundImage:
                                            NetworkImage(user.photoUrls.first)),
                                    onLongPress: removeUser(user)),
                                //TODO add event 'only friends' option
                                //TODO friend selection in activities that automatically add them to the event and they immediately
                                //receive an invitation
                                //TODO surveys in chat that don't send notifications to the group. Add them in a plus butotn next to chat
                                //like in android google messages
                                //TODO LATER stack profiles in messages and expand on click to what we have now
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
    final result = await provider.eventUserPreview([
      ...widget.event.invited.map((eu) => eu.id).toList(),
      widget.event.creator.id
    ]);
    setState(() {
      users = result.data ?? [];
      loading = false;
    });
  }
}
