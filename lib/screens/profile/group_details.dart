import 'package:flutter/material.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/screens/profile/edit_group_details.dart';
import 'package:whatado/widgets/appbars/saving_app_bar.dart';
import 'package:whatado/widgets/users/user_list_item.dart';

class GroupDetails extends StatelessWidget {
  final Group group;
  GroupDetails({required this.group});

  final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[50],
        child: SafeArea(
            child: Scaffold(
          appBar: SavingAppBar(
            title: group.name,
            buttonTitle: "EDIT",
            onSave: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EditGroupDetails(group: group))),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text('Members', style: headingStyle),
                ...group.users.map((user) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: UserListItem(user),
                    ))
              ],
            ),
          ),
        )));
  }
}
