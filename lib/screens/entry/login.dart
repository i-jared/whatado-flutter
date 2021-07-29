import 'package:flutter/material.dart';
import 'package:whatado/screens/entry/signup.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/input/my_text_field.dart';
import 'package:whatado/widgets/input/my_password_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<StatefulWidget> {
  final _formKey = GlobalKey<FormState>();

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
                    MyTextField(hintText: 'Email or Username'),
                    const SizedBox(height: 20),
                    MyPasswordField(hintText: 'Password'),
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
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => SignupScreen())),
                      text: "Sign In",
                    ),
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
                          onPressed: () => null,
                        ),
                      ],
                    ),
                    SizedBox(height: 40)
                  ]),
            ),
          ]),
        ));
  }
}
