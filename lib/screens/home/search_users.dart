import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/search_state.dart';
import 'package:whatado/widgets/users/user_list_item.dart';

class SearchUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final searchState = Provider.of<SearchState>(context);
    if (searchState.usersLoading) {
      return Center(child: CircularProgressIndicator());
    }
    if (searchState.filteredUsers == null) {
      return Center(child: CircularProgressIndicator());
    }
    if (searchState.filteredUsers!.isEmpty) {
      return Center(child: Text('No users to list'));
    }
    int userLength = searchState.filteredUsers!.length;

    return ListView.builder(
        itemCount: userLength * 2 + (userLength > 0 ? 1 : 0),
        itemBuilder: (context, i) {
          if (i == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text('Suggested Users',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            );
          }
          if (i.isOdd) {
            return Divider();
          }
          int j = i ~/ 2 - 1;
          return UserListItem(searchState.filteredUsers![j]);
        });
  }
}
