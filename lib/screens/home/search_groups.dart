import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/search_state.dart';
import 'package:whatado/widgets/groups/group_list_item.dart';

class SearchGroups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final searchState = Provider.of<SearchState>(context);
    if (searchState.groupsLoading) {
      return Center(child: CircularProgressIndicator());
    }
    if (searchState.filteredGroups == null) {
      return Center(child: CircularProgressIndicator());
    }
    if (searchState.filteredGroups!.isEmpty) {
      return Center(child: Text('No groups to list'));
    }
    int groupsLength = searchState.filteredGroups!.length;

    return ListView.builder(
        itemCount: groupsLength * 2 + (groupsLength > 0 ? 1 : 0),
        itemBuilder: (context, i) {
          if (i == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text('Suggested Groups',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            );
          }
          if (i.isOdd) {
            return Divider();
          }
          int j = i ~/ 2 - 1;
          return GroupListItem(searchState.filteredGroups![j]);
        });
  }
}
