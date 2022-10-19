import 'dart:math';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/models/wannago.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/providers/graphql/group_provider.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';
import 'package:whatado/widgets/events/my_event_display.dart';
import 'package:whatado/widgets/general/generic_page.dart';
import 'package:whatado/widgets/groups/group_list_item.dart';
import 'package:whatado/widgets/users/user_list_item.dart';

class SelectGroupRequested extends StatefulWidget {
  final Group group;
  SelectGroupRequested({required this.group});
  @override
  State<StatefulWidget> createState() => _SelectGroupRequestedState();
}

class _SelectGroupRequestedState extends State<SelectGroupRequested> {
  late bool loading;
  late List<PublicUser> requested;

  @override
  void initState() {
    super.initState();
    loading = false;
    requested = widget.group.requested;
  }

  @override
  Widget build(BuildContext context) {
    return GenericPage(
      appBar: DefaultAppBar(title: 'Invite'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          IgnorePointer(
              child: GroupListItem(
            group: widget.group,
          )),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child:
                Text("Invite People", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
          ),
          SizedBox(height: 10),
          Expanded(
              child: requested.isEmpty
                  ? Center(child: Text('No one left'))
                  : loading
                      ? Center(child: CircularProgressIndicator())
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: ListView(children: getList(requested)),
                        )),
        ],
      ),
    );
  }

  List<Widget> getList(List<PublicUser> requested) =>
      List<Widget>.generate(max(0, requested.length * 2 - 1), (i) {
        if (i.isOdd) return Divider();
        final user = requested[i ~/ 2];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(child: UserListItem(user)),
              Container(
                child: Row(
                  children: [
                    IconButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () async => await decide(user, false),
                        icon: Icon(Icons.cancel_outlined),
                        iconSize: 40,
                        color: AppColors.primary),
                    IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () async => await decide(user, true),
                        icon: Icon(Icons.check_circle_outline_outlined),
                        iconSize: 40,
                        color: AppColors.primary),
                  ],
                ),
              ),
            ],
          ),
        );
      });

  Future<void> decide(PublicUser user, bool accepted) async {
    final userState = Provider.of<UserState>(context, listen: false);
    setState(() => loading = true);
    final provider = GroupGqlProvider();
    if (accepted) {
      final result = await provider.updateGroup(GroupFilterInput(
          id: widget.group.id, userIds: [user.id, ...widget.group.users.map((u) => u.id)]));
      if (result.ok) {
        userState.updateGroupMembers(widget.group, user);
        await userState.getUser();
        setState(() => requested = requested.where((u) => u.id != user.id).toList());
      } else {
        BotToast.showText(text: 'Error accepting user to group.');
      }
    } else {
      final result = await provider.updateGroup(GroupFilterInput(
          id: widget.group.id,
          requestedIds:
              widget.group.requested.map((u) => u.id).where((id) => id != user.id).toList()));
      if (result.ok) {
        userState.removeGroupRequests(widget.group, user);
        await userState.getUser();
        setState(() => requested = requested.where((u) => u.id != user.id).toList());
      } else {
        BotToast.showText(text: 'Error denying user access to group.');
      }
    }
    setState(() => loading = false);
  }
}
