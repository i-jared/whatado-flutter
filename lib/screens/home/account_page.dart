import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/utils/dialogs.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';
import 'package:whatado/widgets/dialog/confirm_cancel_dialog.dart';
import 'package:whatado/widgets/general/generic_page.dart';
import 'package:whatado/widgets/settings/settings_item.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GenericPage(
      appBar: DefaultAppBar(title: 'Account'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 30),
              SettingsItem(
                title: 'Log Out',
                leading: Icon(Icons.logout_rounded, size: 30),
                onPressed: () => showMyDialog(
                    context,
                    ConfirmCancelDialog(
                        title: 'Log Out?',
                        body: 'Are you sure you want to Log Out?',
                        confirmText: 'Log Out',
                        onConfirm: () async {
                          authenticationService.forgetTokens();
                          Phoenix.rebirth(context);
                        })),
              ),
              SettingsItem(
                title: 'Remove Account',
                leading: Icon(Icons.delete_rounded, size: 30),
                color: Colors.red,
                iconColor: Colors.red,
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
                            Phoenix.rebirth(context);
                          });
                        })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
