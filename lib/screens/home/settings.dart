import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/entry/welcome.dart';
import 'package:whatado/screens/home/user_list_page.dart';
import 'package:whatado/screens/profile/blocked_users.dart';
import 'package:whatado/screens/profile/change_password.dart';
import 'package:whatado/screens/profile/change_personal_info.dart';
import 'package:whatado/screens/profile/eula.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/settings/settings_item.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30),
          SettingsItem(
              title: 'PERSONAL INFORMATION',
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ChangePersonalInfo(user: userState.user!)))),
          SettingsItem(
              title: 'CHANGE PASSWORD',
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChangePassword()))),
          SettingsItem(
              title: 'BLOCKED USERS',
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BlockedUsers()))),
          SettingsItem(
              title: 'LEGAL',
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Eula()))),
          SettingsItem(
            title: 'LOG OUT',
            onPressed: () {
              authenticationService.forgetTokens();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen()),
                  (route) => false);
            },
            showIcon: false,
          ),
          SettingsItem(
            title: 'REMOVE ACCOUNT',
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                          title: Text('Remove Account?'),
                          content: Text(
                              'Are you sure you want to remove your account? All events and forums you created will be delted'),
                          actions: [
                            TextButton(
                                child: Text("Cancel"),
                                onPressed: () => Navigator.pop(context)),
                            TextButton(
                              child: Text("Delete"),
                              onPressed: () async {
                                final provider = UserGqlProvider();
                                await provider.removeAccount().then((_) {
                                  authenticationService.forgetTokens();
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              WelcomeScreen()),
                                      (route) => false);
                                });
                              },
                            ),
                          ]));
            },
            showIcon: false,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
