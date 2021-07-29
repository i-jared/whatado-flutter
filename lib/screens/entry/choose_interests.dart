import 'package:flutter/material.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/screens/home/home.dart';
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
  List<Interest> selectedInterests = [];
  List<Interest> customInterests = [];
  List<Interest> interests = [
    'Sports',
    'Theaters',
    'Movies',
    'Books',
    'Education',
    'IT',
    'Cooking',
    'Animals',
    'Science',
    'Dancing',
    'Adventures',
    'Food',
    'Games',
    'Fashion',
    'Health'
  ].map((val) => Interest(name: val)).toList();

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
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // top logo
                      SizedBox(height: 50),
                      Center(
                        child: Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/2560px-Instagram_logo.svg.png",
                            height: 100),
                      ),
                      SizedBox(height: 40),
                      // suggested interests wrap
                      Text('Choose interests',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),
                      InterestWrap(
                        interests: interests,
                        selectedInterests: selectedInterests,
                        onPressedSetState: (val) =>
                            setState(() => selectedInterests = val),
                      ),
                      // custom interests section
                      SizedBox(height: 35),
                      Text('Add interests',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),
                      // custom interests text field
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
                              customInterests
                                  .add(Interest(name: textController.text));
                              setState(() => customInterests = customInterests);
                              textController.clear();
                            },
                          ),
                        ],
                      ),
                      // custom interest wrap
                      const SizedBox(height: 15),
                      InputInterestWrap(
                          customInterests: customInterests,
                          onPressedSetState: (val) =>
                              setState(() => customInterests = val)),
                      const SizedBox(height: 50),
                      Spacer(),
                      // continue button
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
  }
}
