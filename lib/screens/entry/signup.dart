import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/providers/graphql/register_query.dart';
import 'package:whatado/screens/entry/login.dart';
import 'package:whatado/screens/entry/validate.dart';
import 'package:whatado/screens/profile/eula.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/extensions/text.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/entry/decorated_entry_page.dart';
import 'package:whatado/widgets/input/auto_label_field.dart';
import 'package:whatado/widgets/input/my_password_field.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<StatefulWidget> {
  final _formKey = GlobalKey<FormState>();
  late bool loading;
  late String phoneNumber;
  String? phoneError;
  String? nameError;
  String? passwordError;
  late TextEditingController passwordController;
  late TextEditingController confirmController;
  late TextEditingController phoneController;
  late TextEditingController nameController;

  @override
  void initState() {
    super.initState();
    phoneNumber = '';
    passwordController = TextEditingController();
    confirmController = TextEditingController();
    phoneController = TextEditingController();
    nameController = TextEditingController();
    loading = false;
  }

  @override
  void dispose() {
    passwordController.dispose();
    confirmController.dispose();
    phoneController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedEntryPage(
      child: Form(
        key: _formKey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 35),
          Text('Let\'s Get Started').reallybold().title(),
          SizedBox(height: 5),
          Text('It won\'t take more than a minute.').subtitle().semibold(),
          SizedBox(height: 20),
          Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 5),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: AppColors.primary,
                  ),
                  borderRadius: BorderRadius.circular(AppRadii.button)),
              child: AutoLabelField(
                controller: nameController,
                label: 'Full Name',
                icon: Icons.person_outline_rounded,
                validator: (val) =>
                    val == null || val.length == 0 ? 'please enter your full name' : null,
              )),
          SizedBox(height: 15),
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
          SizedBox(height: 15),
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
                validator: (val) =>
                    val == null || val.length < 6 ? 'password must be at least 6 characters' : null,
              )),
          if (phoneError != null) Text(phoneError ?? '', style: TextStyle(color: Colors.red)),
          const SizedBox(height: 20),
          loading
              ? Center(child: CircularProgressIndicator())
              : RoundedArrowButton.text(
                  onPressed: () => attemptRegister(context),
                  text: "Sign Up",
                ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?').semibold(),
              TextButton(
                child: Text('Sign in.').primary().bold(),
                onPressed: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (ctx) => LoginScreen())),
              ),
            ],
          ),
          Center(
            child: TextButton(
              child: Text(
                'Terms of Service',
                style: TextStyle(color: AppColors.primary),
              ),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (ctx) => Eula())),
            ),
          ),
        ]),
      ),
    );
  }

  void attemptRegister(BuildContext context) async {
    final userState = Provider.of<UserState>(context, listen: false);
    if (_formKey.currentState!.validate()) {
      setState(() {
        phoneError = null;
        passwordError = null;
        loading = true;
      });
      final loginMutation = RegisterGqlQuery();
      final res = await loginMutation.register(
        phone: phoneNumber,
        password: passwordController.text,
        name: nameController.text,
      );
      if (res.ok) {
        authenticationService.updateTokens(res.accessToken ?? '', res.refreshToken ?? '');
        userState.getUser();
        setState(() => loading = false);
        Navigator.push(context, MaterialPageRoute(builder: (ctx) => ValidatePhoneScreen()));
      } else {
        setState(() {
          phoneError = res.errors
              ?.firstWhere((element) => element['field'] == 'phone', orElse: () => {})['message'];
          passwordError = res.errors?.firstWhere((element) => element['field'] == 'password',
              orElse: () => {})['message'];
          loading = false;
        });
        passwordController.clear();
        confirmController.clear();
      }
    }
  }
}
