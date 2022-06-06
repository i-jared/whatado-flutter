import 'package:flutter/material.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';
import 'package:whatado/widgets/groups/group_list_item.dart';

class GroupListPage extends StatelessWidget {
  final String title;
  final List<Group> groups;
  GroupListPage({required this.title, required this.groups});
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
              child: groups.isEmpty
                  ? Center(child: Text("No Users to Display"))
                  : ListView.builder(
                      itemCount: 2 * (groups.length) - 1,
                      itemBuilder: (BuildContext context, int i) {
                        if (i.isOdd) {
                          return Divider();
                        } else {
                          i = i ~/ 2;
                          return GroupListItem(groups[i]);
                        }
                      },
                    )),
        )));
  }
}
