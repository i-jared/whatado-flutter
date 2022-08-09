import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:whatado/screens/home/non_user_contact_item.dart';
import 'package:whatado/screens/home/user_contact_item.dart';
import 'package:whatado/state/search_state.dart';
import 'package:whatado/state/user_state.dart';

class SearchContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final searchState = Provider.of<SearchState>(context);
    final userState = Provider.of<UserState>(context);
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
    if (searchState.filteredUserContacts == null ||
        searchState.filteredNonUserContacts == null) {
      return Center(child: CircularProgressIndicator());
    }
    if (searchState.filteredUserContacts!.isEmpty &&
        searchState.filteredNonUserContacts!.isEmpty) {
      return Center(child: Text('No contacts to list'));
    }
    int nonUserLength = searchState.filteredNonUserContacts!.length;
    int userLength = searchState.filteredUserContacts!.length;
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
              child: Text('Add Friends',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            );
          }
          if ((i == 0 && userLength == 0) ||
              (i == 2 * userLength + 2 && userLength > 0)) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text('Invite Friends',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            );
          }
          int j = i ~/ 2 - 1;
          if (j < userLength) {
            final user = searchState.filteredUserContacts![j];
            return UserContactItem(user,
                friends: userState.user?.friends.any((f) => f.id == user.id) ?? false,
                requested: userState.user?.requestedFriends.any((f) => f.id == user.id) ??
                    false);
          }
          j -= (userLength + (userLength > 0 ? 1 : 0));
          final contact = searchState.filteredNonUserContacts![j];
          return NonUserContactItem(contact);
        });
  }
}
