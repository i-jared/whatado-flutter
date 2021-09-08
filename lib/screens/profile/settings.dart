import 'package:flutter/material.dart';
import 'package:whatado/screens/entry/welcome.dart';
import 'package:whatado/screens/profile/change_password.dart';
import 'package:whatado/screens/profile/change_personal_info.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';
import 'package:whatado/widgets/settings/settings_item.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Settings'),
      body: Column(
        children: [
          SizedBox(height: 30),
          SettingsItem(
              title: 'PERSONAL INFORMATION',
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChangePersonalInfo()))),
          SettingsItem(
              title: 'CHANGE PASSWORD',
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChangePassword()))),
          SettingsItem(
            title: 'LOG OUT',
            onPressed: () {
              authenticationService.forgetTokens();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen()),
                  (route) => true);
            },
            showIcon: false,
          ),
          SettingsItem(
            title: 'REMOVE ACCOUNT',
            onPressed: () => null,
            showIcon: false,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
