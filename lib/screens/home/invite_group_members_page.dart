import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/screens/home/invite_group_members.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';
import 'package:whatado/widgets/general/generic_page.dart';

class InviteGroupMembersPage extends StatelessWidget {
  final String title;
  final Group group;
  InviteGroupMembersPage({required this.title, required this.group});
  @override
  Widget build(BuildContext context) {
    return GenericPage(
      appBar: DefaultAppBar(
        title: title,
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: InviteGroupMembers(group)),
    );
  }
}
