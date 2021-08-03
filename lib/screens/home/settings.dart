import 'package:flutter/material.dart';
import 'package:whatado/screens/home/change_password.dart';
import 'package:whatado/widgets/home/appbars/default_app_bar.dart';
import 'package:whatado/widgets/settings/settings_item.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Settings'),
      body: Column(
        children: [
          SizedBox(height: 30),
          SettingsItem(title: 'PERSONAL INFORMATION', onPressed: () => null),
          SettingsItem(
              title: 'CHANGE PASSWORD',
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChangePassword()))),
          SettingsItem(
            title: 'LOG OUT',
            onPressed: () => null,
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
