import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/entry/welcome.dart';
import 'package:whatado/screens/profile/blocked_users.dart';
import 'package:whatado/screens/profile/change_password.dart';
import 'package:whatado/screens/profile/change_personal_info.dart';
import 'package:whatado/screens/profile/eula.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/dialogs.dart';
import 'package:whatado/widgets/dialog/confirm_cancel_dialog.dart';
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
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BlockedUsers()))),
          SettingsItem(
              title: 'Legal',
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Eula()))),
          SettingsItem(
            title: 'Log Out',
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
            title: 'Remove Account',
            onPressed: () => showMyDialog(
                context,
                ConfirmCancelDialog(
                    title: 'Remove Account?',
                    body:
                        'Are you sure you want to remove your account? All events you created will be deleted',
                    confirmText: 'Delete',
                    onConfirm: () async {
                      final provider = UserGqlProvider();
                      await provider.removeAccount().then((_) {
                        authenticationService.forgetTokens();
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => WelcomeScreen()),
                            (route) => false);
                      });
                    })),
            showIcon: false,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
