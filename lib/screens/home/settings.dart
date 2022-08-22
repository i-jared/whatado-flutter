import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/screens/home/account_page.dart';
import 'package:whatado/screens/profile/blocked_users.dart';
import 'package:whatado/screens/profile/change_password.dart';
import 'package:whatado/screens/profile/change_personal_info.dart';
import 'package:whatado/screens/profile/eula.dart';
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
              title: 'Personal Information',
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChangePersonalInfo(user: userState.user!)))),
          SettingsItem(
              title: 'Change Password',
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChangePassword()))),
          SettingsItem(
              title: 'Blocked Users',
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BlockedUsers()))),
          SettingsItem(
              title: 'Legal',
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Eula()))),
          SettingsItem(
              title: 'Account',
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AccountPage()))),
        ],
      ),
    );
  }
}
