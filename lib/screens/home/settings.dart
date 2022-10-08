import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/screens/home/account_page.dart';
import 'package:whatado/screens/profile/blocked_users.dart';
import 'package:whatado/screens/profile/change_password.dart';
import 'package:whatado/screens/profile/change_personal_info.dart';
import 'package:whatado/screens/profile/edit_my_profile.dart';
import 'package:whatado/screens/profile/eula.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';
import 'package:whatado/widgets/general/generic_page.dart';
import 'package:whatado/widgets/settings/settings_item.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    return GenericPage(
      appBar: DefaultAppBar(title: 'Settings'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 30),
              SettingsItem(
                  title: 'Personal Information',
                  leading: Icon(Icons.person_rounded, size: 30),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChangePersonalInfo(user: userState.user!)))),
              SettingsItem(
                  title: 'Change Password',
                  leading: Icon(Icons.lock_rounded, size: 30),
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ChangePassword()))),
              SettingsItem(
                  title: 'Blocked Users',
                  leading: Icon(Icons.shield_rounded, size: 30),
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => BlockedUsers()))),
              SettingsItem(
                  title: 'Legal',
                  leading: Icon(Icons.history_edu_rounded, size: 30),
                  onPressed: () =>
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Eula()))),
              SettingsItem(
                  title: 'Account',
                  leading: Icon(Icons.badge_rounded, size: 30),
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => AccountPage()))),
            ],
          ),
        ),
      ),
    );
  }
}
