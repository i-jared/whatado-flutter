import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/saving_app_bar.dart';
import 'package:whatado/widgets/events/invite_friends.dart';
import 'package:whatado/widgets/general/generic_page.dart';

class AddFriends extends StatefulWidget {
  final int eventId;
  final List<EventUser> invitedUsers;
  AddFriends({required this.eventId, required this.invitedUsers});

  @override
  _StateAddFriends createState() => _StateAddFriends();
}

class _StateAddFriends extends State<AddFriends> {
  late List<EventUser> selectedUsers;
  late List<int> invitedUsersIds;
  late bool loading;

  @override
  void initState() {
    super.initState();
    selectedUsers = [];
    invitedUsersIds = widget.invitedUsers.map((u) => u.id).toList();
    loading = false;
  }

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    return GenericPage(
        appBar: SavingAppBar(
            title: 'Add Friends',
            buttonTitle: 'Invite',
            disabled: loading || selectedUsers.isEmpty,
            onSave: () async {
              final provider = EventsGqlProvider();
              setState(() => loading = true);
              for (int id in selectedUsers.map((u) => u.id)) {
                await provider.addInvite(eventId: widget.eventId, userId: id);
              }
              Navigator.pop(context);
            }),
        body: loading
            ? Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: InviteFriends(
                  setUsers: (List<EventUser> users) => setState(() {
                    selectedUsers = users;
                  }),
                  selectedUsers: selectedUsers,
                  users: userState.user?.friends.where((f) {
                    return !invitedUsersIds.contains(f.id);
                  }).toList(),
                ),
              ));
  }
}
