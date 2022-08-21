import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/profile/user_profile.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';
import 'package:whatado/widgets/general/generic_page.dart';
import 'package:whatado/widgets/users/user_avatar.dart';

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

    return GenericPage(
      appBar: DefaultAppBar(title: 'Blocked'),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : userState.user!.blockedUsers.isEmpty
              ? Center(child: Text('No blocked users'))
              : ListView(
                  children: userState.user!.blockedUsers
                      .map((blockedUser) => ListTile(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        UserProfile(user: blockedUser))).then((_) async {
                              await Future.delayed(Duration(milliseconds: 500));
                              // SystemChrome.setSystemUIOverlayStyle(
                              //     SystemUiOverlayStyle(
                              //   statusBarBrightness: Brightness.dark,
                              //   statusBarIconBrightness: Brightness.dark,
                              //   systemNavigationBarColor: AppColors.background,
                              //   statusBarColor: Colors.transparent,
                              // ));
                            }),
                            leading: UserAvatar(
                                radius: 25,
                                url: blockedUser.photoUrls.isEmpty
                                    ? null
                                    : blockedUser.photoUrls.first),
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
