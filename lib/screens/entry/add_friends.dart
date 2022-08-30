import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:whatado/screens/home/home.dart';
import 'package:whatado/screens/home/search_contacts.dart';
import 'package:whatado/screens/home/user_contact_item.dart';
import 'package:whatado/state/search_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/extensions/text.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/general/generic_page.dart';

class AddFriends extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddFriendsState();
}

class _AddFriendsState extends State<AddFriends> {
  late bool loading;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) async {
      final searchState = context.read<SearchState>();
      await searchState.loadContacts();
    });
    loading = false;
  }

  final headingStyle = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
  final headingSpacing = 10.0;
  final padding = 30.0;
  final sectionSpacing = 35.0;
  final imageSpacing = 10.0;
  final paragraphStyle = TextStyle(fontSize: 20);

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final searchState = Provider.of<SearchState>(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 50),
        Text('Add Friends').title().reallybold(),
        SizedBox(height: headingSpacing),
        Text('Find friends on Whatado or invite your contacts to join you!').subtitle().semibold(),
        SizedBox(height: headingSpacing),
        Flexible(child: getMainWidget(context, searchState, userState)),
        Center(
          child: loading
              ? Center(child: CircularProgressIndicator())
              : RoundedArrowButton.text(
                  loading: loading,
                  disabled: loading,
                  text: "Finish",
                  onPressed: () async {
                    setState(() => loading = true);
                    await userState.getUser();
                    Navigator.pop(context, true);
                  }),
        ),
        SizedBox(height: sectionSpacing)
      ]),
    );
  }

  Widget getMainWidget(BuildContext context, SearchState searchState, UserState userState) {
    if (searchState.contactsLoading) return Center(child: CircularProgressIndicator());
    if (!searchState.contactsPermission!)
      return Center(
          child: Text(
              'You can add friends you know after granting access to your contacts in settings.'));
    if (searchState.userContacts!.isEmpty)
      return Center(
          child: Text('No contacts to add. Find and invite friends through the "search" tab.'));
    return ListView.builder(
        itemCount: searchState.filteredUserContacts!.length + 1,
        itemBuilder: (context, i) {
          if (i == 0)
            return Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: RoundedArrowButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearchContacts(),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.group_add),
                      SizedBox(width: 10),
                      Text('Contacts', style: TextStyle(fontSize: 20))
                    ],
                  )),
            );
          final user = searchState.filteredUserContacts![i - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: UserContactItem(user,
                accepted: userState.user?.friends.any((f) => f.id == user.id) ?? false,
                requested: userState.user?.requestedFriends.any((f) => f.id == user.id) ?? false),
          );
        });
  }
}
