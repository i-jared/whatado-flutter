import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/providers/graphql/login_query.dart';
import 'package:whatado/screens/entry/signup.dart';
import 'package:whatado/screens/entry/validate.dart';
import 'package:whatado/screens/home/home.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/extensions/text.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/entry/decorated_entry_page.dart';
import 'package:whatado/widgets/input/bottom_sheet.dart';
import 'package:whatado/widgets/input/my_password_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<StatefulWidget> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController passwordController = TextEditingController();
  late String phoneNumber = '';
  late bool loading = false;
  String? phoneError;
  String? passwordError;

  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(systemNavigationBarColor: AppColors.background));
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    return DecoratedEntryPage(
        child: Form(
      key: _formKey,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 35),
        Text('Welcome Back').reallybold().title(),
        SizedBox(height: 5),
        Text('Please sign in to continue.').semibold().subtitle(),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 5),
          decoration: BoxDecoration(
              border: Border.all(
                width: 2.0,
                color: AppColors.primary,
              ),
              borderRadius: BorderRadius.circular(AppRadii.button)),
          child: InternationalPhoneNumberInput(
            ignoreBlank: true,
            inputDecoration: InputDecoration(
              labelText: 'Phone Number',
              border: InputBorder.none,
              // hintText: 'Phone number',
            ),
            initialValue: PhoneNumber(isoCode: 'US'),
            locale: 'US',
            autoValidateMode: AutovalidateMode.onUserInteraction,
            onInputChanged: (PhoneNumber value) {
              setState(() {
                phoneNumber = value.toString();
              });
            },
          ),
        ),
        if (phoneError != null) Text(phoneError ?? '', style: TextStyle(color: Colors.red)),
        const SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 5),
          decoration: BoxDecoration(
              border: Border.all(
                width: 2.0,
                color: AppColors.primary,
              ),
              borderRadius: BorderRadius.circular(AppRadii.button)),
          child: MyPasswordField(
            hintText: 'Password',
            controller: passwordController,
            errorText: passwordError,
          ),
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            child: Text('Forgot Password?').primary(),
            onPressed: () async {
              showModalBottomSheet<dynamic>(
                  isScrollControlled: true,
                  backgroundColor: AppColors.background,
                  context: context,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )),
                  builder: (BuildContext context) => MyBottomSheet());
            },
          ),
        ),
        const SizedBox(height: 10),
        if (!loading)
          RoundedArrowButton.text(
            onPressed: loading
                ? null
                : () async {
                    try {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          phoneError = null;
                          passwordError = null;
                          loading = true;
                        });
                        final loginMutation = LoginGqlQuery();
                        final res = await loginMutation.login(
                            phone: phoneNumber, password: passwordController.text);
                        if (res.ok) {
                          authenticationService.updateTokens(
                              res.accessToken ?? '', res.refreshToken ?? '');
                          final user = await userState.getUserUser();
                          if (user != null) analyticsService.init(user);
                          userState.loggedIn = true;

                          final route = userState.user == null
                              ? LoginScreen()
                              : !userState.user!.verified
                                  ? ValidatePhoneScreen()
                                  // : userState.user!.interests.isEmpty
                                  //     ? ChooseInterestsScreen()
                                  //     : userState.user!.bio.isEmpty
                                  //         ? WriteBioScreen()
                                  //         : userState.user!.photoUrls.isEmpty
                                  //             ? SelectPhotosScreen()
                                  : HomeScreen();

                          Navigator.pushAndRemoveUntil(context,
                              MaterialPageRoute(builder: (ctx) => route), (route) => false);
                        } else {
                          setState(() => loading = false);
                          setState(() {
                            phoneError = res.errors?.firstWhere(
                                (element) => element['field'] == 'phone',
                                orElse: () => {})['message'];
                            passwordError = res.errors?.firstWhere(
                                (element) => element['field'] == 'login',
                                orElse: () => {})['message'];
                          });
                          passwordController.clear();
                        }
                      }
                    } catch (e) {
                      BotToast.showText(text: 'Error logging in. Please try again later.');
                    }
                  },
            text: "Sign In",
          ),
        SizedBox(height: 20),
        if (loading) Center(child: CircularProgressIndicator(value: null)),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don\'t have an account?').semibold(),
            TextButton(
                child: Text('Sign up').primary().bold(),
                onPressed: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (ctx) => SignupScreen()))),
          ],
        ),
        SizedBox(height: 30)
      ]),
    ));
  }
}
