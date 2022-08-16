import 'package:flutter/material.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/screens/profile/create_group.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';
import 'package:whatado/widgets/groups/group_list_item.dart';

class GroupListPage extends StatelessWidget {
  final String title;
  final List<Group> groups;
  final bool leftPadding;
  GroupListPage({required this.title, required this.groups, this.leftPadding = true});
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
              padding: EdgeInsets.only(right: 24, left: leftPadding ? 24 : 0),
              child: groups.isEmpty
                  ? Center(child: Text("No Users to Display"))
                  : ListView.builder(
                      itemCount: 2 * (groups.length) + 1,
                      itemBuilder: (BuildContext context, int i) {
                        if (i == 0) {
                          return InkWell(
                            onTap: () => Navigator.push(context,
                                MaterialPageRoute(builder: (context) => CreateGroup())),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 8.0, bottom: 8.0, left: leftPadding ? 0 : 24),
                              child: Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.grey[300]),
                                    child: Icon(Icons.add_outlined, size: 25),
                                  ),
                                  SizedBox(width: 15),
                                  Text('Create Group', style: TextStyle(fontSize: 16))
                                ],
                              ),
                            ),
                          );
                        }
                        if (i.isOdd) {
                          return Divider();
                        } else {
                          i = i ~/ 2 - 1;
                          return GroupListItem(
                            group: groups[i],
                            showRequest: !leftPadding,
                          );
                        }
                      },
                    )),
        )));
  }
}
