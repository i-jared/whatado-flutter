import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/providers/graphql/group_provider.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/saving_app_bar.dart';
import 'package:whatado/widgets/input/my_text_field.dart';
import 'package:whatado/widgets/users/user_list_item.dart';

class CreateGroup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  late List<EventUser> selectedFriends = [];
  late TextEditingController groupNameController = TextEditingController();
  late bool loading = false;

  @override
  void initState() {
    super.initState();
    groupNameController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final friends = userState.user?.friends;
    return Container(
        color: Colors.grey[50],
        child: SafeArea(
          child: Scaffold(
            appBar: SavingAppBar(
                title: 'Create Group',
                disabled: loading ||
                    groupNameController.text.isEmpty ||
                    selectedFriends.isEmpty,
                buttonTitle: 'CREATE',
                onSave: () async {
                  setState(() => loading = true);
                  final response = await GroupGqlProvider().createGroup(GroupInput(
                      name: groupNameController.text,
                      owner: userState.user!.id,
                      userIds: [
                        userState.user!.id,
                        ...selectedFriends.map((u) => u.id)
                      ]));
                  if (response.ok) {
                    await userState.getUser();
                  }
                  setState(() => loading = false);
                  Navigator.pop(context);
                }),
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    MyTextField(
                      hintText: 'Group Name',
                      controller: groupNameController,
                      validator: (val) =>
                          (val?.isEmpty ?? true) ? 'please enter a name' : null,
                    ),
                    SizedBox(height: 20),
                    if (friends == null || friends.isEmpty)
                      Expanded(child: Center(child: Text('no friends'))),
                    if (friends != null && friends.isNotEmpty)
                      ...friends.map((friend) => InkWell(
                            onTap: () {
                              if (selectedFriends.contains(friend)) {
                                selectedFriends.remove(friend);
                              } else {
                                selectedFriends.add(friend);
                              }
                              setState(() => selectedFriends = selectedFriends);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: IgnorePointer(
                                  child: UserListItem(
                                friend,
                                selected: selectedFriends.contains(friend),
                              )),
                            ),
                          ))
                  ],
                )),
          ),
        ));
  }
}
