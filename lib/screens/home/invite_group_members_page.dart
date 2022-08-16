import 'package:flutter/material.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/screens/home/invite_group_members.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';

class InviteGroupMembersPage extends StatelessWidget {
  final String title;
  final Group group;
  InviteGroupMembersPage({required this.title, required this.group});
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[50],
        child: SafeArea(
            child: Scaffold(
          appBar: DefaultAppBar(
            title: title,
          ),
          body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: InviteGroupMembers(group)),
        )));
  }
}
