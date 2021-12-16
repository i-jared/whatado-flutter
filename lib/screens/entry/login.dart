import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:provider/provider.dart';
import 'package:whatado/providers/graphql/login_query.dart';
import 'package:whatado/screens/entry/select_photos.dart';
import 'package:whatado/screens/entry/signup.dart';
import 'package:whatado/screens/entry/validate.dart';
import 'package:whatado/screens/entry/write_bio.dart';
import 'package:whatado/screens/home/home.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/input/bottom_sheet.dart';
import 'package:whatado/widgets/input/my_password_field.dart';

import 'choose_interests.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<StatefulWidget> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  String phoneNumber = '';
  bool loading = false;
  String? phoneError;
  String? passwordError;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.grey[50],
      statusBarColor: Colors.grey[50],
    ));
  }

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    return Container(
      color: Colors.grey[50],
      child: SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50),
                      Center(
                        child: Image.asset("assets/text_logo.png", height: 100),
                      ),
                      SizedBox(height: 40),
                      Text('Log In',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600)),
                      SizedBox(height: 35),
                      InternationalPhoneNumberInput(
                        initialValue: PhoneNumber(isoCode: 'US'),
                        locale: 'US',
                        autoValidateMode: AutovalidateMode.onUserInteraction,
                        onInputChanged: (PhoneNumber value) {
                          setState(() {
                            phoneNumber = value.toString();
                          });
                        },
                      ),
                      if (phoneError != null)
                        Text(phoneError ?? '',
                            style: TextStyle(color: Colors.red)),
                      const SizedBox(height: 20),
                      MyPasswordField(
                        hintText: 'Password',
                        controller: passwordController,
                        errorText: passwordError,
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          child: Text(
                            'Forgot Password?',
                          ),
                          onPressed: () async {
                            showModalBottomSheet<dynamic>(
                                isScrollControlled: true,
                                context: context,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                )),
                                builder: (BuildContext context) =>
                                    MyBottomSheet());
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      if (!loading)
                        RoundedArrowButton(
                          onPressed: loading
                              ? null
                              : () async {
                                  if (_formKey.currentState!.validate()) {
                                    setState(() {
                                      phoneError = null;
                                      passwordError = null;
                                      loading = true;
                                    });
                                    final loginMutation = LoginGqlQuery();
                                    final res = await loginMutation.login(
                                        phone: phoneNumber,
                                        password: passwordController.text);
                                    if (res.ok) {
                                      authenticationService.updateTokens(
                                          res.accessToken ?? '',
                                          res.refreshToken ?? '');
                                      await userState.getUser();
                                      userState.loggedIn = true;

                                      final route = userState.user == null
                                          ? LoginScreen()
                                          : !userState.user!.verified
                                              ? ValidatePhoneScreen()
                                              : userState
                                                      .user!.interests.isEmpty
                                                  ? ChooseInterestsScreen()
                                                  : userState.user!.bio.isEmpty
                                                      ? WriteBioScreen()
                                                      : userState.user!
                                                              .photoUrls.isEmpty
                                                          ? SelectPhotosScreen()
                                                          : HomeScreen();

                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (ctx) => route),
                                          (route) => false);
                                    } else {
                                      setState(() => loading = false);
                                      setState(() {
                                        phoneError = res.errors?.firstWhere(
                                            (element) =>
                                                element['field'] == 'phone',
                                            orElse: () => {})['message'];
                                        passwordError = res.errors?.firstWhere(
                                            (element) =>
                                                element['field'] == 'login',
                                            orElse: () => {})['message'];
                                      });
                                      passwordController.clear();
                                    }
                                  }
                                },
                          text: "Sign In",
                        ),
                      SizedBox(height: 30),
                      if (loading)
                        Center(child: CircularProgressIndicator(value: null)),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('New User?'),
                          TextButton(
                              child: Text(
                                'Create an account.',
                                style: TextStyle(color: Color(0xffe85c3f)),
                              ),
                              onPressed: () => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => SignupScreen()))),
                        ],
                      ),
                      SizedBox(height: 40)
                    ]),
              ),
            )),
      ),
    );
  }
}
