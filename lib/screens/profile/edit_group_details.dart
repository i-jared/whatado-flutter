import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/providers/graphql/group_provider.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/list_tools.dart';
import 'package:whatado/widgets/appbars/saving_app_bar.dart';
import 'package:whatado/widgets/input/my_text_field.dart';
import 'package:whatado/widgets/users/user_list_item.dart';

class EditGroupDetails extends StatefulWidget {
  final Group group;
  EditGroupDetails({required this.group});
  @override
  State<StatefulWidget> createState() => _EditGroupDetailsState();
}

class _EditGroupDetailsState extends State<EditGroupDetails> {
  late List<EventUser> selectedFriends = [];
  late List<EventUser> defaultFriends;
  late bool loading = false;
  late TextEditingController groupNameController;

  @override
  initState() {
    super.initState();
    defaultFriends = List<EventUser>.from(widget.group.users);
    groupNameController = TextEditingController(text: widget.group.name);
    groupNameController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    return Container(
        color: Colors.grey[50],
        child: SafeArea(
          child: Scaffold(
            appBar: SavingAppBar(
                title: 'Edit Group',
                disabled: loading ||
                    (groupNameController.text == widget.group.name &&
                        listEquals(defaultFriends, widget.group.users)),
                buttonTitle: 'SAVE',
                onSave: () async {
                  setState(() => loading = true);
                  final response = await GroupGqlProvider().createGroup(
                      GroupInput(name: groupNameController.text, userIds: [
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text('Name', style: headingStyle),
                    SizedBox(height: 20),
                    MyTextField(
                      hintText: 'Group Name',
                      controller: groupNameController,
                      validator: (val) =>
                          (val?.isEmpty ?? true) ? 'please enter a name' : null,
                    ),
                    SizedBox(height: 20),
                    Text('Members', style: headingStyle),
                    SizedBox(height: 20),
                    if (defaultFriends.isEmpty)
                      Expanded(child: Center(child: Text('no friends'))),
                    if (defaultFriends.isNotEmpty)
                      ...defaultFriends.map((friend) => InkWell(
                            onTap: () {
                              if (selectedFriends.contains(friend)) {
                                selectedFriends.remove(friend);
                              } else {
                                selectedFriends.add(friend);
                              }
                              setState(() => selectedFriends = selectedFriends);
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: IgnorePointer(
                                      child: UserListItem(
                                        friend,
                                        selected:
                                            selectedFriends.contains(friend),
                                      ),
                                    ),
                                  ),
                                  if (selectedFriends.contains(friend))
                                    IconButton(
                                      icon: Icon(Icons.group_remove_outlined),
                                      onPressed: () {
                                        selectedFriends.remove(friend);
                                        defaultFriends.remove(friend);
                                        setState(() {
                                          selectedFriends = selectedFriends;
                                          defaultFriends = defaultFriends;
                                        });
                                      },
                                    )
                                ],
                              ),
                            ),
                          )),
                    InkWell(
                      onTap: () => null,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.grey[300]),
                              child: Icon(Icons.add_outlined),
                            ),
                            SizedBox(width: 15),
                            Text('Add Members')
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ));
  }
}
