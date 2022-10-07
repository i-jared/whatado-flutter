import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:whatado/screens/home/non_user_contact_item.dart';
import 'package:whatado/state/search_state.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';
import 'package:whatado/widgets/general/generic_page.dart';

class SearchContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GenericPage(appBar: DefaultAppBar(title: 'Invite Friends'), body: buildBody(context));
  }

  Widget buildBody(BuildContext context) {
    final searchState = Provider.of<SearchState>(context);
    if (searchState.contactsLoading) {
      return Center(child: CircularProgressIndicator());
    }
    if (searchState.contactsPermission == null || searchState.contactsPermission == false) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Please allow permission to access contacts.'),
            TextButton(
                child: Text('open settings'),
                onPressed: () async {
                  await openAppSettings();
                  final permissionResult = await Permission.contacts.request();
                  searchState.contactsPermission =
                      permissionResult.isGranted || permissionResult.isLimited;
                })
          ],
        ),
      );
    }
    if (searchState.filteredUserContacts == null || searchState.filteredNonUserContacts == null) {
      return Center(child: Text('Error retrieving contact list'));
    }
    if (searchState.filteredUserContacts!.isEmpty && searchState.filteredNonUserContacts!.isEmpty) {
      return Center(child: Text('No contacts to list'));
    }
    int nonUserLength = searchState.filteredNonUserContacts!.length;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.builder(
          itemCount: nonUserLength,
          itemBuilder: (context, i) {
            final contact = searchState.filteredNonUserContacts![i];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: NonUserContactItem(contact),
            );
          }),
    );
  }
}
