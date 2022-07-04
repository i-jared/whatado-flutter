import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:provider/provider.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/providers/graphql/forgot_password_query.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/home/home.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/input/my_password_field.dart';
import 'package:whatado/widgets/input/my_text_field.dart';

class MyBottomSheet extends StatefulWidget {
  @override
  _MyBottomSheetState createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  String? phoneError;
  String? passwordError;
  late TextEditingController phoneController;
  late TextEditingController currentPasswordController;
  late TextEditingController newPasswordController;
  late TextEditingController codeController;
  late String phoneNumber;
  late bool success;
  late bool loading;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    phoneController = TextEditingController();
    currentPasswordController = TextEditingController();
    newPasswordController = TextEditingController();
    codeController = TextEditingController();
    phoneNumber = '';
    loading = false;
    success = false;
  }

  @override
  Widget build(BuildContext context) {
    Widget secondWidget = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40),
        Text('Change Password',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
        SizedBox(height: 35),
        MyPasswordField(
            hintText: 'New Password',
            controller: newPasswordController,
            errorText: passwordError,
            validator: (val) {
              if ((val?.length ?? 0) < 6)
                return 'password must be 6+ characters';
            }),
        SizedBox(height: 40),
        Text('Text Code',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
        SizedBox(height: 35),
        MyTextField(
            hintText: 'Text Code',
            controller: codeController,
            maxLength: 5,
            validator: (val) =>
                val?.length != 5 ? 'please enter 5 digit code' : null),
        SizedBox(height: 50),
        RoundedArrowButton(
            onPressed: loading
                ? null
                : () async {
                    if (_formKey.currentState?.validate() ?? false)
                      await resetPassword(context);
                  },
            text: 'Reset Password'),
        SizedBox(height: 30),
        if (loading) Center(child: CircularProgressIndicator(value: null)),
      ],
    );
    Widget firstWidget = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40),
        Text('Forgot Password',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
        SizedBox(height: 35),
        InternationalPhoneNumberInput(
          initialValue: PhoneNumber(isoCode: 'US'),
          locale: 'US',
          autoValidateMode: AutovalidateMode.onUserInteraction,
          textFieldController: phoneController,
          validator: (val) {
            String pattern = r'^(\+0?1\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$';
            RegExp regExp = new RegExp(pattern);
            if (val == null || !regExp.hasMatch(val))
              return 'please enter a valid phone number';
          },
          onInputChanged: (PhoneNumber value) {
            setState(() {
              phoneNumber = value.toString();
            });
          },
        ),
        SizedBox(height: 50),
        RoundedArrowButton(
            onPressed: loading
                ? null
                : () async {
                    if (_formKey.currentState?.validate() ?? false)
                      await forgotPassword();
                  },
            text: 'Send Text'),
        SizedBox(height: 30),
        if (loading) Center(child: CircularProgressIndicator(value: null)),
      ],
    );

    return Form(
      key: _formKey,
      child: Container(
          height: MediaQuery.of(context).size.height - 200.0,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: success ? secondWidget : firstWidget)),
    );
  }

  Future<void> forgotPassword() async {
    setState(() => loading = true);
    final mutation = ForgotPasswordGqlQuery();
    final response = await mutation.forgotPassword(phone: phoneNumber);
    setState(() => loading = false);
    phoneController.clear();
    if (response.ok) {
      setState(() => success = true);
    } else {
      phoneError = response.errors?.firstWhere(
          (element) => element['field'] == 'phone',
          orElse: () => {})['message'];
    }
  }

  Future<void> resetPassword(BuildContext context) async {
    final userState = Provider.of<UserState>(context, listen: false);
    setState(() => loading = true);
    final provider = UserGqlProvider();
    final res =
        await provider.checkValidationLogin(codeController.text, phoneNumber);
    authenticationService.updateTokens(
        res.accessToken ?? '', res.refreshToken ?? '');
    if (res.ok) {
      final response = await provider
          .updateUser(UserFilterInput(password: newPasswordController.text));
      userState.getUser();
      phoneController.clear();
      setState(() => loading = false);
      if (response.ok) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (BuildContext context) => HomeScreen()),
            (_) => false);
      } else {
        phoneError = response.errors?.firstWhere(
            (element) => element['field'] == 'phone',
            orElse: () => {})['message'];
      }
    } else {
      phoneError = res.errors?.firstWhere(
          (element) => element['field'] == 'phone',
          orElse: () => {})['message'];
    }
  }
}
