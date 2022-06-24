import 'package:flutter/material.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/widgets/users/user_list_item.dart';

class InviteFriends extends StatelessWidget {
  final List<EventUser>? users;
  final List<EventUser> selectedUsers;
  final Function(List<EventUser>) setUsers;
  InviteFriends(
      {required this.users,
      required this.selectedUsers,
      required this.setUsers});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: (users?.length ?? 0) == 0
            ? Center(child: Text('no friends to invite'))
            : ListView.builder(
                itemCount: users?.length ?? 0,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      onTap: () {
                        if (selectedUsers.contains(users![i])) {
                          var tempList = selectedUsers;
                          tempList.remove(users![i]);
                          setUsers(tempList);
                        } else {
                          var tempList = selectedUsers;
                          tempList.add(users![i]);
                          setUsers(tempList);
                        }
                      },
                      child: Stack(
                        children: [
                          IgnorePointer(child: UserListItem(users![i])),
                          if (selectedUsers.contains(users![i]))
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Opacity(
                                opacity: 0.5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ),
                          if (selectedUsers.contains(users![i]))
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                height: 50,
                                width: 50,
                                child: Icon(Icons.check_outlined,
                                    color: Colors.white),
                              ),
                            )
                        ],
                      ),
                    ),
                  );
                },
              ));
  }
}
