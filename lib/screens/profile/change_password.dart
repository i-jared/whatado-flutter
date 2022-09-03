import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/widgets/appbars/saving_app_bar.dart';
import 'package:whatado/widgets/general/generic_page.dart';
import 'package:whatado/widgets/input/my_password_field.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  late final TextEditingController currentPasswordController;
  late final TextEditingController newPasswordController;
  late bool loading = false;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    currentPasswordController = TextEditingController()..addListener(() => setState(() {}));
    newPasswordController = TextEditingController()..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    currentPasswordController.dispose();
    newPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GenericPage(
      appBar: SavingAppBar(
          disabled: loading ||
              newPasswordController.text.isEmpty ||
              currentPasswordController.text.isEmpty,
          title: 'Change Password',
          onSave: () async {
            if (!_formKey.currentState!.validate()) return;
            setState(() => loading = true);
            final provider = UserGqlProvider();
            final result =
                await provider.updateUser(UserFilterInput(password: newPasswordController.text));
            if (result.ok) {
              BotToast.showText(text: 'Successfully updated password');
              newPasswordController.text = '';
              currentPasswordController.text = '';
              Navigator.pop(context);
            } else {
              BotToast.showText(text: 'Failed to update password. Please try again later');
              newPasswordController.text = '';
              currentPasswordController.text = '';
            }
          }),
      body: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Container(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: AppColors.primary,
                        ),
                        borderRadius: BorderRadius.circular(AppRadii.button)),
                    child: MyPasswordField(
                        label: 'Current Password',
                        hintText: '',
                        controller: currentPasswordController),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Container(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: AppColors.primary,
                        ),
                        borderRadius: BorderRadius.circular(AppRadii.button)),
                    child: MyPasswordField(
                        validator: (val) => val == null || val.length < 6
                            ? 'password must be at least 6 characters'
                            : null,
                        label: 'New Password',
                        hintText: 'New Password',
                        controller: newPasswordController),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
