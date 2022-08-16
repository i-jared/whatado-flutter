import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/screens/home/non_user_contact_item.dart';
import 'package:whatado/screens/home/user_contact_item.dart';
import 'package:whatado/state/search_state.dart';
import 'package:whatado/state/user_state.dart';

class InviteGroupMembers extends StatefulWidget {
  final Group group;
  InviteGroupMembers(this.group);
  @override
  State<StatefulWidget> createState() => _InviteGroupMembersState();
}

class _InviteGroupMembersState extends State<InviteGroupMembers> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      final searchState = Provider.of<SearchState>(context, listen: false);
      searchState.loadContacts();
    });
  }

  @override
  Widget build(BuildContext context) {
    final searchState = Provider.of<SearchState>(context);
    final userState = Provider.of<UserState>(context);
    final nonMemberFriends =
        userState.user!.friends.where((f) => !widget.group.users.contains(f)).toList();
    if (searchState.contactsLoading) {
      return Center(child: CircularProgressIndicator());
    }
    if (searchState.contactsPermission == false) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Please allow permission to access contacts.'),
            TextButton(
                child: Text('open settings'),
                onPressed: () async {
                  await openAppSettings();
                  searchState.contactsPermission =
                      await FlutterContacts.requestPermission(readonly: true);
                })
          ],
        ),
      );
    }
    if (searchState.filteredNonUserContacts == null) {
      return Center(child: CircularProgressIndicator());
    }
    if (nonMemberFriends.isEmpty && searchState.filteredNonUserContacts!.isEmpty) {
      return Center(child: Text('No friends or contacts to list'));
    }
    int nonUserLength = searchState.filteredNonUserContacts!.length;
    int userLength = nonMemberFriends.length;
    int listLength = 2 * (nonUserLength) +
        2 * (userLength) +
        (userLength > 0 && nonUserLength > 0 ? 4 : 2);

    return ListView.builder(
        itemCount: listLength,
        itemBuilder: (context, i) {
          if (i.isOdd) {
            return Divider();
          }
          if (i == 0 && userLength > 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text('Add Members',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            );
          }
          if ((i == 0 && userLength == 0) ||
              (i == 2 * userLength + 2 && userLength > 0)) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text('Invite Contacts',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            );
          }
          int j = i ~/ 2 - 1;
          if (j < userLength) {
            final user = nonMemberFriends[j];
            return UserContactItem(
              user,
              accepted: widget.group.users.any((f) => f.id == user.id),
              requested: widget.group.requested.any((f) => f.id == user.id),
              group: widget.group,
              groupRequest: true,
            );
          }
          j -= (userLength + (userLength > 0 ? 1 : 0));
          final contact = searchState.filteredNonUserContacts![j];
          return NonUserContactItem(
            contact,
            groupId: widget.group.id,
          );
        });
  }
}
