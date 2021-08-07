import 'package:flutter/material.dart';
import 'package:whatado/providers/graphql/forgot_password_query.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/input/my_text_field.dart';

class MyBottomSheet extends StatefulWidget {
  @override
  _MyBottomSheetState createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  late TextEditingController emailController;
  String? emailError;
  late bool success;
  late bool loading;

  @override
  void initState() {
    super.initState();
    loading = false;
    success = true;
    emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height - 200.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text('Forgot Password',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
              SizedBox(height: 35),
              MyTextField(
                hintText: 'Email or Username',
                controller: emailController,
                errorText: emailError,
              ),
              SizedBox(height: 50),
              RoundedArrowButton(
                  onPressed: loading || success ? () => null : forgotPassword,
                  text: 'Send Email'),
              SizedBox(height: 30),
              if (loading)
                Center(child: CircularProgressIndicator(value: null)),
              if (success)
                Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Center(child: Text('success'))),
            ],
          ),
        ));
  }

  void forgotPassword() async {
    setState(() => loading = true);
    final mutation = ForgotPasswordGqlQuery();
    final response = await mutation.forgotPassword(email: emailController.text);
    setState(() => loading = false);
    if (response.ok) {
      print('email sent');
      setState(() {
        success = true;
        emailError = null;
      });
      emailController.clear();
    } else {
      print(response);
      emailError = response.errors?.firstWhere(
          (element) => element['field'] == 'email',
          orElse: () => {})['message'];
    }
  }
}
