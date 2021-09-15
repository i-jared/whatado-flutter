import 'package:flutter/material.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';

class UserColumn extends StatefulWidget {
  @override
  _UserColumnState createState() => _UserColumnState();
}

class _UserColumnState extends State<UserColumn> {
  late bool loading;
  List<User>? users;

  @override
  void initState() {
    super.initState();
    loading = false;
    init();
  }

  Future<void> init() async {
    final provider = UserGqlProvider();
    final result = await provider.flaggedUsers();
    setState(() => users = result.data ?? []);
  }

  @override
  Widget build(BuildContext context) {
    if (loading || users == null) return CircularProgressIndicator();
    return ListView.builder(
      itemCount: users!.length,
      itemBuilder: (context, i) => ListTile(title: Text(users![i].name)),
    );
  }
}
