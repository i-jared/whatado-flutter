import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/home/search_contacts.dart';
import 'package:whatado/screens/home/search_events.dart';
import 'package:whatado/screens/home/search_groups.dart';
import 'package:whatado/screens/home/search_users.dart';
import 'package:whatado/state/search_state.dart';
import 'package:whatado/widgets/home/search_selection_row.dart';
import 'package:whatado/widgets/users/user_list_item.dart';

class SearchPage extends StatefulWidget {
  @override
  _StateSearchPage createState() => _StateSearchPage();
}

class _StateSearchPage extends State<SearchPage> {
  Timer? debounce;
  late bool loading = false;
  late List<EventUser>? users = [];
  late UserGqlProvider provider = UserGqlProvider();

  Widget getWidget(context) {
    if (loading) {
      return Center(child: CircularProgressIndicator());
    } else if (users?.isEmpty ?? false) {
      return Center(child: Text('Nobody matches your search :('));
    } else if (users == null) {
      return Center(child: Text('Something went wrong... Try again later!'));
    } else {
      return ListView.builder(
        itemCount: 2 * (users!.length) - 1,
        itemBuilder: (BuildContext context, int i) {
          if (i.isOdd) {
            return Divider();
          } else {
            int j = i ~/ 2;
            return UserListItem(users![j]);
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final searchState = Provider.of<SearchState>(context);
    return Container(
        child: Padding(
      padding:
          EdgeInsets.symmetric(horizontal: searchState.selectedSearchType == 0 ? 0 : 24),
      child: Column(
        children: [
          Container(
              height: 60,
              child: TextFormField(
                decoration: InputDecoration(prefixIcon: Icon(Icons.search)),
                controller: searchState.searchController,
              )),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: searchState.selectedSearchType == 0 ? 24 : 0),
            child: SearchSelectionRow(),
          ),
          Expanded(
              child: searchState.selectedSearchType == 0
                  ? SearchEvents()
                  : searchState.selectedSearchType == 1
                      ? SearchUsers()
                      : searchState.selectedSearchType == 2
                          ? SearchGroups()
                          : SearchContacts()),
        ],
      ),
    ));
  }
}
