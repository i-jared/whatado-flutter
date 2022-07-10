import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/screens/profile/create_group.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/events/invite_group.dart';
import 'package:whatado/widgets/events/picture_waterfall.dart';

class TargetGroup extends StatelessWidget {
  Widget build(BuildContext context) {
    final eventState = Provider.of<AddEventState>(context);
    final userState = Provider.of<UserState>(context);
    final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    final headingSpacing = 10.0;
    final sectionSpacing = 35.0;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: sectionSpacing),
      Row(
        children: [
          Text('GROUP INVITATIONS', style: headingStyle),
          SizedBox(width: 10),
          Tooltip(
            preferBelow: false,
            triggerMode: TooltipTriggerMode.tap,
            margin: EdgeInsets.symmetric(horizontal: 50),
            padding: EdgeInsets.all(8),
            message: "Invite one of your groups to attend your event.",
            child: Icon(Icons.help_outline, size: 20),
          ),
        ],
      ),
      TextButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => CreateGroup())),
          child: Text("Create Group +",
              style: TextStyle(color: Color(0xfff7941d), fontSize: 18))),
      Expanded(
        child: Container(
          child: InviteGroups(
            setGroup: (Group? group) => eventState.selectedGroup = group,
            selectedGroup: eventState.selectedGroup,
            groups: userState.user?.groups,
          ),
        ),
      ),
      SizedBox(height: headingSpacing),
      PictureWaterfall(loading: false, users: eventState.selectedUsers)
    ]);
  }
}
