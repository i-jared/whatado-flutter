import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/search_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/events/shadow_box.dart';
import 'package:whatado/widgets/general/dark_divider.dart';
import 'package:whatado/widgets/groups/group_list_item.dart';

class SearchGroups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final searchState = Provider.of<SearchState>(context);
    final userState = Provider.of<UserState>(context);
    int groupsLength = searchState.filteredGroups?.length ?? 0;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          SizedBox(height: 20),
          Flexible(
            child: ShadowBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Suggested Groups',
                      style: TextStyle(
                          fontSize: 16, color: Colors.grey[600], fontWeight: FontWeight.w600)),
                  DarkDivider(),
                  getMainWidget(searchState, userState, groupsLength),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget getMainWidget(SearchState searchState, UserState userState, groupsLength) {
    if (searchState.groupsLoading || searchState.filteredGroups == null) {
      return Container(height: 200, child: Center(child: CircularProgressIndicator()));
    }
    if (searchState.filteredUsers!.isEmpty) {
      return Container(height: 200, child: Center(child: Text('No groups to list')));
    }
    return Flexible(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: groupsLength,
          itemBuilder: (context, i) {
            return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: GroupListItem(
                    noPadding: true,
                    showButton: true,
                    group: searchState.filteredGroups![i],
                    requested: userState.user!.requestedGroups
                        .any((g) => g.id == searchState.filteredGroups![i].id),
                    member: userState.user!.groups
                        .any((g) => g.id == searchState.filteredGroups![i].id)));
          }),
    );
  }
}
