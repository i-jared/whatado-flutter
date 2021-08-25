import 'package:flutter/material.dart';
import 'package:whatado/widgets/appbars/edit_my_profile_app_bar.dart';
import 'package:whatado/widgets/input/my_password_field.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  late final TextEditingController currentPasswordController;
  late final TextEditingController newPasswordController;
  late final TextEditingController confirmNewPasswordController;

  @override
  void initState() {
    super.initState();
    currentPasswordController = TextEditingController();
    newPasswordController = TextEditingController();
    confirmNewPasswordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SavingAppBar(title: 'Change Password', onSave: () => null),
      body: Form(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: MyPasswordField(
                  hintText: 'Current Password',
                  controller: currentPasswordController),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: MyPasswordField(
                  hintText: 'New Password', controller: newPasswordController),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: MyPasswordField(
                  hintText: 'Confirm New Password',
                  controller: confirmNewPasswordController),
            ),
          ],
        ),
      )),
    );
  }
}
