import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/saving_app_bar.dart';
import 'package:whatado/widgets/events/invite_friends.dart';
import 'package:whatado/widgets/general/generic_page.dart';

class SelectUsersPage extends StatelessWidget {
  final List<EventUser> groupMembers;
  SelectUsersPage({required this.groupMembers});

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    final userState = Provider.of<UserState>(context);
    return GenericPage(
      appBar: SavingAppBar(
          title: 'Add Group Users',
          buttonTitle: 'ADD',
          onSave: () => Navigator.pop(context),
          disabled: homeState.selectedUsers.isEmpty),
      body: userState.user == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : groupMembers.isEmpty
              ? Center(child: Text('no friends to select'))
              : Column(children: [
                  //TODO: add a search bar
                  Expanded(
                    child: InviteFriends(
                        users: userState.user!.friends
                            .where((u) => !groupMembers.contains(u))
                            .toList(),
                        selectedUsers: homeState.selectedUsers,
                        setUsers: homeState.setSelectedGroup),
                  )
                ]),
    );
  }
}
