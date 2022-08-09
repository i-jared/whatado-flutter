import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/screens/home/home.dart';
import 'package:whatado/screens/home/user_contact_item.dart';
import 'package:whatado/state/search_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';

class AddFriends extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddFriendsState();
}

class _AddFriendsState extends State<AddFriends> {
  late bool loading;

  @override
  void initState() {
    super.initState();
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

    return Container(
      color: Colors.grey[50],
      child: SafeArea(
        child: Scaffold(
            body: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 50),
            Center(
              child: Image.asset("assets/Whatado_FullColor.png", height: 100),
            ),
            SizedBox(height: sectionSpacing),
            Text('Add Friends', style: headingStyle),
            SizedBox(height: headingSpacing),
            Flexible(child: getMainWidget(context, searchState, userState)),
            Center(
              child: loading
                  ? Center(child: CircularProgressIndicator())
                  : RoundedArrowButton(
                      disabled: false,
                      text: "Finish",
                      onPressed: userState.user == null
                          ? null
                          : () => Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => HomeScreen()),
                              (_) => false),
                    ),
            ),
            SizedBox(height: 40)
          ]),
        )),
      ),
    );
  }

  Widget getMainWidget(
      BuildContext context, SearchState searchState, UserState userState) {
    if (searchState.contactsLoading) return Center(child: CircularProgressIndicator());
    if (!searchState.contactsPermission!)
      return Center(
          child: Text(
              'You can add friends you know after granting access to your contacts in settings.'));
    if (searchState.userContacts!.isEmpty)
      return Center(
          child: Text(
              'No contacts to add. Find and invite friends through the "search" tab.'));
    return ListView.builder(
        itemCount: 2 * searchState.userContacts!.length,
        itemBuilder: (context, i) {
          if (i.isOdd) {
            return Divider();
          }
          int j = i ~/ 2;
          final user = searchState.filteredUserContacts![j];
          return UserContactItem(user,
              friends: userState.user?.friends.any((f) => f.id == user.id) ?? false,
              requested:
                  userState.user?.requestedFriends.any((f) => f.id == user.id) ?? false);
        });
  }
}
