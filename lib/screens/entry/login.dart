import 'package:flutter/material.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<StatefulWidget> {
  final _formKey = GlobalKey<FormState>();
  bool passwordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            child: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/2560px-Instagram_logo.svg.png",
                      height: 100),
                  SizedBox(height: 40),
                  Expanded(
                    child: Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Welcome, honey!',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w600)),
                            SizedBox(height: 35),
                            TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: 'Email or Username',
                                hintStyle: TextStyle(fontSize: 13),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 12),
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              obscureText: passwordHidden,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(
                                      passwordHidden
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      size: 20),
                                  onPressed: () => setState(
                                      () => passwordHidden = !passwordHidden),
                                ),
                                isDense: true,
                                hintText: 'Password',
                                hintStyle: TextStyle(fontSize: 13),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 12),
                              ),
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
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => LoginScreen())),
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40)
                ]),
          ),
        ])));
  }
}
