import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/profile/user_profile.dart';

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
        itemCount: users?.length ?? 0,
        itemBuilder: (BuildContext context, int i) {
          return InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UserProfile(user: users![i]))),
              child: Container(height: 100, child: Text(users![i].name)));
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
            height: 100, child: TextFormField(onChanged: onSearchChanged)),
        Expanded(child: getWidget(context))
      ],
    ));
  }
}
