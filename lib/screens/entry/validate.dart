import 'package:flutter/material.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/entry/choose_interests.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/input/my_text_field.dart';

class ValidatePhoneScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ValidatePhoneScreenState();
}

class _ValidatePhoneScreenState extends State<ValidatePhoneScreen> {
  late TextEditingController otpController;
  String? errorText;

  @override
  void initState() {
    super.initState();
    otpController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final headingStyle = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
    final headingSpacing = 10.0;
    final padding = 30.0;
    final sectionSpacing = 35.0;
    final paragraphStyle = TextStyle(fontSize: 20);

    return Scaffold(
        body: Form(
      child: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
              minWidth: constraints.maxWidth,
            ),
            child: IntrinsicHeight(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: padding),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50),
                      Center(
                        child: Image.asset("assets/text_logo.png", height: 100),
                      ),
                      SizedBox(height: sectionSpacing),
                      Text('Phone Verification', style: headingStyle),
                      SizedBox(height: headingSpacing),
                      Text('Enter the 5-digit code sent we texted to you.',
                          style: paragraphStyle),
                      SizedBox(height: headingSpacing),
                      MyTextField(
                        maxLength: 5,
                        hintText: 'text code',
                        maxLines: 1,
                        controller: otpController,
                        errorText: errorText,
                      ),
                      SizedBox(height: sectionSpacing),
                      Spacer(),
                      Center(
                        child: RoundedArrowButton(
                          disabled: otpController.text.length < 5,
                          onPressed: () async {
                            setState(() => errorText = null);
                            final provider = UserGqlProvider();
                            final result = await provider
                                .checkValidation(otpController.text);
                            if (result.ok) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ChooseInterestsScreen()));
                            } else {
                              otpController.clear();
                              setState(() => errorText = 'incorrect code');
                            }
                          },
                          text: "Continue",
                        ),
                      ),
                      SizedBox(height: sectionSpacing)
                    ]),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
