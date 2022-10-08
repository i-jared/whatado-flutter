import 'package:flutter/material.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/screens/profile/create_group.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/groups/group_list_item.dart';

class InnerGroupListPage extends StatelessWidget {
  final String title;
  final List<Group> groups;
  final bool leftPadding;
  InnerGroupListPage({required this.title, required this.groups, this.leftPadding = true});
  @override
  Widget build(BuildContext context) {
    return groups.isEmpty
        ? Center(child: Text("No Users to Display"))
        : ListView.builder(
            itemCount: groups.length + 1,
            itemBuilder: (BuildContext context, int i) {
              if (i == 0) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: leftPadding ? 0.0 : 24.0, top: 10, right: 24, bottom: 10),
                  child: RoundedArrowButton(
                      onPressed: () => Navigator.push(
                          context, MaterialPageRoute(builder: (context) => CreateGroup())),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.group_add),
                          SizedBox(width: 10),
                          Text('Create Group', style: TextStyle(fontSize: 20))
                        ],
                      )),
                );
              }
              return Padding(
                padding:
                    EdgeInsets.only(right: 24, left: leftPadding ? 24 : 0, top: 10, bottom: 10),
                child: GroupListItem(
                  group: groups[i - 1],
                  showRequest: !leftPadding,
                ),
              );
            });
  }
}
