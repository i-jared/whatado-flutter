import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/home/home.dart';
import 'package:whatado/utils/extensions/text.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/entry/decorated_entry_page.dart';

class ValidatePhoneScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ValidatePhoneScreenState();
}

class _ValidatePhoneScreenState extends State<ValidatePhoneScreen> {
  List<TextEditingController?>? otpControllers;
  String? errorText;
  Timer? resendTimer;
  late int resendCountdown;
  late bool allowResend;

  @override
  void initState() {
    super.initState();
    resendCountdown = 30;
    allowResend = false;
    initTimer();
  }

  void initTimer() {
    resendTimer?.cancel();
    resendTimer = Timer(Duration(seconds: 1), () {
      setState(() => resendCountdown -= 1);
      if (resendCountdown == 0) {
        setState(() => allowResend = true);
        resendTimer?.cancel();
      } else {
        initTimer();
      }
    });
  }

  void reset() {
    setState(() {
      resendCountdown = 30;
      allowResend = false;
    });
    initTimer();
  }

  @override
  void dispose() {
    resendTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final headingSpacing = 10.0;
    final sectionSpacing = 35.0;
    final itemWidth = (MediaQuery.of(context).size.width - 60 - 5 * 10) / 5;

    return DecoratedEntryPage(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 40),
        Text('Verify Your Phone Number').title().reallybold(),
        SizedBox(height: headingSpacing),
        Text('Enter the 5-digit code we texted to you.').subtitle().semibold(),
        SizedBox(height: sectionSpacing),
        OtpTextField(
          onCodeChanged: (value) => setState(() {}),
          numberOfFields: 5,
          showFieldAsBox: true,
          handleControllers: (controllers) => otpControllers = controllers,
          borderColor: AppColors.primary,
          enabledBorderColor: AppColors.primary,
          focusedBorderColor: AppColors.primary,
          disabledBorderColor: AppColors.primary,
          borderRadius: BorderRadius.circular(AppRadii.button),
          fieldWidth: itemWidth,
          textStyle: TextStyle(fontSize: 25),
        ),
        if (errorText != null) Text(errorText!, style: TextStyle(color: Colors.red)),
        SizedBox(height: 20),
        RichText(
            text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
                children: [
              TextSpan(text: 'Resend code in '),
              TextSpan(text: '$resendCountdown seconds', style: TextStyle(color: Colors.red))
            ])),
        SizedBox(height: sectionSpacing),
        InkWell(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                color: !allowResend ? AppColors.disabled : Color(0xfffff2e2),
                borderRadius: BorderRadius.circular(AppRadii.button),
              ),
              child: Text(
                'Resend Code',
                style:
                    TextStyle(color: allowResend ? AppColors.primary : Colors.grey, fontSize: 18),
              )),
          onTap: () async {
            reset();
            final provider = UserGqlProvider();
            await provider.sendCode();
          },
        ),
        Spacer(),
        Center(
          child: RoundedArrowButton.text(
            disabled: otpControllers?.any((c) => c?.text.isEmpty ?? true) ?? true,
            onPressed: () async {
              setState(() => errorText = null);
              final provider = UserGqlProvider();
              final result =
                  await provider.checkValidation(otpControllers!.map((c) => c!.text).join(''));
              if (result.ok) {
                await provider.updateUser(UserFilterInput(verified: true));
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              } else {
                otpControllers?.forEach((c) => c?.clear());
                setState(() => errorText = 'incorrect code');
              }
            },
            text: "Continue",
          ),
        ),
        SizedBox(height: sectionSpacing)
      ]),
    );
  }
}
