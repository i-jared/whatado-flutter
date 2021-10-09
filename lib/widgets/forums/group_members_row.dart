import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/profile/user_profile.dart';

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
                                          builder: (context) => UserProfile(
                                              initialUserData: user))),
                                  child: CircleAvatar(
                                      radius: 28,
                                      backgroundImage:
                                          NetworkImage(user.photoUrls)),
                                ),
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
    final result = await provider.eventUserPreview([
      ...widget.event.invited.map((eu) => eu.id).toList(),
      widget.event.creator.id
    ]);
    setState(() {
      users = result.data ?? [];
      loading = false;
    });
    print(result.data);
  }
}
