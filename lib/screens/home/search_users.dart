import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/profile/user_profile.dart';
import 'package:whatado/widgets/users/user_list_item.dart';

class SearchUsers extends StatefulWidget {
  @override
  _StateSearchUsers createState() => _StateSearchUsers();
}

class _StateSearchUsers extends State<SearchUsers> {
  Timer? debounce;
  late bool loading = false;
  late List<EventUser>? users = [];
  late UserGqlProvider provider = UserGqlProvider();

  void onSearchChanged(String partial) {
    if (debounce?.isActive ?? false) debounce?.cancel();
    setState(() => loading = true);
    debounce = Timer(Duration(milliseconds: 500), () async {
      final result = await provider.searchUsers(partial);
      if (mounted)
        setState(() {
          users = result.data;
          loading = false;
        });
    });
  }

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
            i = i ~/ 2;
            return UserListItem(users![i]);
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Container(
              height: 100,
              child: TextFormField(
                decoration: InputDecoration(prefixIcon: Icon(Icons.search)),
                onChanged: onSearchChanged,
              )),
          Expanded(child: getWidget(context))
        ],
      ),
    ));
  }
}
