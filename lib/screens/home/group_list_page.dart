import 'package:flutter/material.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/screens/home/inner_group_list_page.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';
import 'package:whatado/widgets/general/generic_page.dart';

class GroupListPage extends StatelessWidget {
  final String title;
  final List<Group> groups;
  final bool leftPadding;
  GroupListPage({required this.title, required this.groups, this.leftPadding = true});
  @override
  Widget build(BuildContext context) {
    return GenericPage(
      appBar: DefaultAppBar(
        title: title,
      ),
      body: InnerGroupListPage(
        groups: groups,
        title: title,
        leftPadding: leftPadding,
      ),
    );
  }
}
