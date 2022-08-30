import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/screens/home/search_contacts.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/events/invite_friends.dart';
import 'package:whatado/widgets/events/picture_waterfall.dart';

class TargetPrivate extends StatelessWidget {
  Widget build(BuildContext context) {
    final eventState = Provider.of<AddEventState>(context);
    final userState = Provider.of<UserState>(context);
    final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    final headingSpacing = 10.0;
    final sectionSpacing = 35.0;
    return Column(children: [
      SizedBox(height: sectionSpacing),
      RoundedArrowButton.text(
          onPressed: () =>
              Navigator.push(context, MaterialPageRoute(builder: (context) => SearchContacts())),
          text: 'Invite Contacts'),
      SizedBox(height: sectionSpacing),
      Row(
        children: [
          Text('PRIVATE INVITATIONS', style: headingStyle),
          SizedBox(width: 10),
          Tooltip(
            showDuration: Duration(seconds: 3),
            preferBelow: false,
            triggerMode: TooltipTriggerMode.tap,
            margin: EdgeInsets.symmetric(horizontal: 50),
            padding: EdgeInsets.all(8),
            message: "Send a direct message inviting these people to join your event.",
            child: Icon(Icons.help_outline, size: 20),
          ),
        ],
      ),
      Expanded(
        child: Container(
          child: InviteFriends(
            setUsers: (List<PublicUser> tempList) => eventState.selectedUsers = tempList,
            selectedUsers: eventState.selectedUsers,
            users: userState.user?.friends,
          ),
        ),
      ),
      SizedBox(height: headingSpacing),
      PictureWaterfall(loading: false, users: eventState.selectedUsers)
    ]);
  }
}
