import 'package:flutter/material.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';
import 'package:whatado/widgets/users/user_list_item.dart';

class UserListPage extends StatelessWidget {
  final String title;
  final List<EventUser> users;
  UserListPage({required this.title, required this.users});
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
              child: users.isEmpty
                  ? Center(child: Text("No Users to Display"))
                  : ListView.builder(
                      itemCount: 2 * (users.length) - 1,
                      itemBuilder: (BuildContext context, int i) {
                        if (i.isOdd) {
                          return Divider();
                        } else {
                          i = i ~/ 2;
                          return UserListItem(users[i]);
                        }
                      },
                    )),
        )));
  }
}
