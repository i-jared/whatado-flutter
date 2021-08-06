import 'package:flutter/material.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/providers/graphql/login_query.dart';
import 'package:whatado/screens/entry/signup.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
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
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    Center(
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/2560px-Instagram_logo.svg.png",
                          height: 100),
                    ),
                    SizedBox(height: 40),
                    Text('Welcome, honey!',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600)),
                    SizedBox(height: 35),
                    MyTextField(
                      validator: (val) {
                        String pattern =
                            r'^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$';
                        RegExp regExp = new RegExp(pattern);
                        if (val == null || !regExp.hasMatch(val))
                          return 'please enter a valid email';
                      },
                      hintText: 'Email or Username',
                      controller: emailController,
                      errorText: emailError,
                    ),
                    const SizedBox(height: 20),
                    MyPasswordField(
                      validator: (val) => val == null || val.length < 6
                          ? 'password must be at least 6 characters'
                          : null,
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
                        onPressed: () => null,
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
                              style: TextStyle(color: Colors.red[300]),
                            ),
                            onPressed: () async {}),
                      ],
                    ),
                    SizedBox(height: 40)
                  ]),
            ),
          ]),
        ));
  }

  void attemptSignIn() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        emailError = null;
        passwordError = null;
        loading = true;
      });
      // TODO: move this to a query provider
      final loginMutation = LoginGqlQuery();
      final res = await loginMutation.login(
          email: emailController.text, password: passwordController.text);
      setState(() => loading = false);
      if (res.ok) {
        Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => SignupScreen()));
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
