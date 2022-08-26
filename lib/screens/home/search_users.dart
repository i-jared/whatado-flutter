import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/search_state.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/events/shadow_box.dart';
import 'package:whatado/widgets/general/dark_divider.dart';
import 'package:whatado/widgets/users/user_list_item.dart';

class SearchUsers extends StatelessWidget {
  final double sectionSpacing = 20.0;
  @override
  Widget build(BuildContext context) {
    final searchState = Provider.of<SearchState>(context);

    int userLength = searchState.filteredUsers?.length ?? 0;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          RoundedArrowButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.group_add),
                  SizedBox(width: 10),
                  Text('Contacts', style: TextStyle(fontSize: 20))
                ],
              )),
          SizedBox(height: sectionSpacing),
          Flexible(
            child: ShadowBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Suggested Users',
                      style: TextStyle(
                          fontSize: 16, color: Colors.grey[600], fontWeight: FontWeight.w600)),
                  DarkDivider(),
                  getMainWidget(searchState, userLength),
                ],
              ),
            ),
          ),
          SizedBox(height: sectionSpacing),
        ],
      ),
    );
  }

  Widget getMainWidget(SearchState searchState, userLength) {
    if (searchState.usersLoading || searchState.filteredUsers == null) {
      return Container(height: 200, child: Center(child: CircularProgressIndicator()));
    }
    if (searchState.filteredUsers!.isEmpty) {
      return Container(height: 200, child: Center(child: Text('No users to list')));
    }
    return Flexible(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: userLength,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: UserListItem(searchState.filteredUsers![i]),
            );
          }),
    );
  }
}
