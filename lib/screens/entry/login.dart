import 'package:flutter/material.dart';
import 'package:whatado/providers/graphql/login_query.dart';
import 'package:whatado/screens/entry/signup.dart';
import 'package:whatado/screens/home/home.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/input/bottom_sheet.dart';
import 'package:whatado/widgets/input/my_text_field.dart';
import 'package:whatado/widgets/input/my_password_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<StatefulWidget> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late bool loading = false;
  String? emailError;
  String? passwordError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 50),
              Center(
                child: Image.asset("assets/text_logo.png", height: 100),
              ),
              SizedBox(height: 40),
              Text('Log In',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
              SizedBox(height: 35),
              MyTextField(
                hintText: 'Email or Username',
                controller: emailController,
                errorText: emailError,
              ),
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
                        builder: (BuildContext context) => MyBottomSheet());
                  },
                ),
              ),
              const SizedBox(height: 10),
              RoundedArrowButton(
                onPressed: loading ? () => null : attemptSignIn,
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
                      onPressed: () => Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (ctx) => SignupScreen()))),
                ],
              ),
              SizedBox(height: 40)
            ]),
          ),
        ));
  }

  void attemptSignIn() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        emailError = null;
        passwordError = null;
        loading = true;
      });
      final loginMutation = LoginGqlQuery();
      final res = await loginMutation.login(
          email: emailController.text, password: passwordController.text);
      setState(() => loading = false);
      if (res.ok) {
        authenticationService.updateTokens(
            res.accessToken ?? '', res.refreshToken ?? '');
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (ctx) => HomeScreen()),
            (route) => false);
      } else {
        setState(() {
          emailError = res.errors?.firstWhere(
              (element) => element['field'] == 'email',
              orElse: () => {})['message'];
          passwordError = res.errors?.firstWhere(
              (element) => element['field'] == 'password',
              orElse: () => {})['message'];
        });
        passwordController.clear();
      }
    }
  }
}
