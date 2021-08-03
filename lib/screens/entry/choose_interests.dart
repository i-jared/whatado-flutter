import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/screens/home/home.dart';
import 'package:whatado/state/setup_state.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/input/my_text_field.dart';
import 'package:whatado/widgets/interests/input_interest_wrap.dart';
import 'package:whatado/widgets/interests/interest_wrap.dart';

class ChooseInterestsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChooseInterestsScreenState();
}

class _ChooseInterestsScreenState extends State<StatefulWidget> {
  final _formKey = GlobalKey<FormState>();
  bool passwordHidden = true;

  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SetupState>(
        create: (_) => SetupState(),
        builder: (context, _) {
          final setupState = Provider.of<SetupState>(context);
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
                            Text('Choose interests',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w600)),
                            SizedBox(height: 10),
                            InterestWrap(
                              interests: setupState.popularInterests,
                            ),
                            SizedBox(height: 35),
                            Text('Add interests',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w600)),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  child: MyTextField(
                                    hintText: 'Add your interest here...',
                                    controller: textController,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  icon: Icon(Icons.add_circle,
                                      color: Colors.red[300], size: 50),
                                  onPressed: () {
                                    setupState.addCustomInterest(
                                        Interest(name: textController.text));
                                    textController.clear();
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            InputInterestWrap(
                                customInterests: setupState.customInterests),
                            const SizedBox(height: 50),
                            Spacer(),
                            Center(
                              child: RoundedArrowButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (ctx) => HomeScreen())),
                                text: "Continue",
                              ),
                            ),
                            SizedBox(height: 40)
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          ));
        });
  }
}
