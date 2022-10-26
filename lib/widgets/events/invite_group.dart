import 'package:flutter/material.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/widgets/groups/group_list_item.dart';

class InviteGroups extends StatelessWidget {
  final List<Group>? groups;
  final Group? selectedGroup;
  final Function(Group?) setGroup;
  InviteGroups({required this.groups, required this.selectedGroup, required this.setGroup});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: (groups?.length ?? 0) == 0
            ? Center(child: Text('no groups to invite'))
            : ListView.builder(
                itemCount: groups?.length ?? 0,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      onTap: () {
                        if (selectedGroup == groups![i]) {
                          setGroup(null);
                        } else {
                          setGroup(groups![i]);
                        }
                      },
                      child: Stack(
                        children: [
                          IgnorePointer(
                              child: GroupListItem(
                            group: groups![i],
                            showButton: false,
                            showRequest: false,
                            noPadding: true,
                          )),
                          if (selectedGroup == groups![i])
                            Positioned(
                              left: 15,
                              top: 15,
                              child: Opacity(
                                opacity: 0.5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  height: 60,
                                  width: 60,
                                ),
                              ),
                            ),
                          if (selectedGroup == groups![i])
                            Positioned(
                              left: 15,
                              top: 15,
                              child: Container(
                                height: 60,
                                width: 60,
                                child: Icon(Icons.check_outlined, color: Colors.white),
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
