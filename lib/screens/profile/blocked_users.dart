import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/profile/user_profile.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';

class BlockedUsers extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BlockedUsersState();
}

class _BlockedUsersState extends State<BlockedUsers> {
  late bool loading;

  @override
  void initState() {
    super.initState();
    loading = false;
  }

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);

    return Scaffold(
      appBar: DefaultAppBar(title: 'Blocked'),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : ListView(
              children: userState.user!.blockedUsers
                  .map((blockedUser) => ListTile(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    UserProfile(initialUserData: blockedUser))),
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(blockedUser.photoUrls.first),
                        ),
                        title: Text(blockedUser.name),
                        trailing: Container(
                          width: 200,
                          child: TextButton(
                              child: Text('unblock'),
                              onPressed: () async {
                                setState(() => loading = true);
                                final provider = UserGqlProvider();
                                final result =
                                    await provider.unblockUser(blockedUser.id);
                                if (result.ok) {
                                  await userState.getUser();
                                }
                                setState(() => loading = false);
                              }),
                        ),
                      ))
                  .toList(),
            ),
    );
  }
}
