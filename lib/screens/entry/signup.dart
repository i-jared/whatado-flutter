import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/providers/graphql/register_query.dart';
import 'package:whatado/screens/entry/choose_interests.dart';
import 'package:whatado/screens/entry/login.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/input/my_password_field.dart';
import 'package:whatado/widgets/input/my_text_field.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<StatefulWidget> {
  final _formKey = GlobalKey<FormState>();
  late bool loading;
  String? emailError;
  String? nameError;
  String? passwordError;
  late TextEditingController passwordController;
  late TextEditingController confirmController;
  late TextEditingController emailController;
  late TextEditingController nameController;

  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
    confirmController = TextEditingController();
    emailController = TextEditingController();
    nameController = TextEditingController();

    loading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: _formKey,
            child: LayoutBuilder(
              builder: (context, constraints) => SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                    minWidth: constraints.maxWidth,
                  ),
                  child: IntrinsicHeight(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 50),
                            Center(
                              child: Image.asset('assets/text_logo.png',
                                  height: 100),
                            ),
                            SizedBox(height: 40),
                            Text('Sign Up',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w600)),
                            SizedBox(height: 35),
                            MyTextField(
                              hintText: 'Full Name',
                              controller: nameController,
                              errorText: nameError,
                              validator: (val) => val == null || val.length == 0
                                  ? 'please enter your full name'
                                  : null,
                            ),
                            const SizedBox(height: 20),
                            MyTextField(
                              hintText: 'Email',
                              controller: emailController,
                              errorText: emailError,
                              validator: (val) {
                                String pattern =
                                    r'^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$';
                                RegExp regExp = new RegExp(pattern);
                                if (val == null || !regExp.hasMatch(val))
                                  return 'please enter a valid email';
                              },
                            ),
                            const SizedBox(height: 20),
                            MyPasswordField(
                              hintText: 'Password',
                              controller: passwordController,
                              errorText: passwordError,
                              validator: (val) => val == null || val.length < 6
                                  ? 'password must be at least 6 characters'
                                  : val != confirmController.text
                                      ? "passwords don't match"
                                      : null,
                            ),
                            const SizedBox(height: 20),
                            MyPasswordField(
                              hintText: 'Confirm Password',
                              controller: confirmController,
                            ),
                            const SizedBox(height: 25),
                            RoundedArrowButton(
                              onPressed: attemptRegister,
                              text: "Sign Up",
                            ),
                            SizedBox(height: 30),
                            if (loading)
                              Center(
                                  child:
                                      CircularProgressIndicator(value: null)),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Already have an account?'),
                                TextButton(
                                  child: Text(
                                    'Sign in.',
                                    style: TextStyle(color: Color(0xffe85c3f)),
                                  ),
                                  onPressed: () => Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (ctx) => LoginScreen())),
                                ),
                              ],
                            ),
                            SizedBox(height: 40)
                          ]),
                    ),
                  ),
                ),
              ),
            )));
  }

  void attemptRegister(BuildContext context) async {
    final userState = Provider.of<UserState>(context);
    if (_formKey.currentState!.validate()) {
      setState(() {
        emailError = null;
        passwordError = null;
        loading = true;
      });
      final loginMutation = RegisterGqlQuery();
      final res = await loginMutation.register(
        email: emailController.text,
        password: passwordController.text,
        name: nameController.text,
      );
      setState(() => loading = false);
      if (res.ok) {
        userState.getUser();
        Navigator.push(context,
            MaterialPageRoute(builder: (ctx) => ChooseInterestsScreen()));
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
        confirmController.clear();
      }
    }
  }
}
