import 'package:flutter/material.dart';
import 'package:whatado/screens/entry/signup.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';

class ChooseInterestsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChooseInterestsScreenState();
}

class _ChooseInterestsScreenState extends State<StatefulWidget> {
  final _formKey = GlobalKey<FormState>();
  bool passwordHidden = true;

  List<String> selectedInterests = [];
  List<String> interests = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        body: Container(
            child: Container(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(height: 50),
            Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/2560px-Instagram_logo.svg.png",
                height: 100),
            SizedBox(height: 40),
            Flexible(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Choose interests',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),
                      Wrap(
                        spacing: 10.0,
                        children: interests
                            .map((text) => FilterChip(
                                selectedColor: Colors.grey[850],
                                showCheckmark: false,
                                labelPadding: EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 20),
                                label: Text(text,
                                    style: TextStyle(
                                        color: selectedInterests.contains(text)
                                            ? Colors.white
                                            : Colors.black)),
                                selected: selectedInterests.contains(text),
                                onSelected: (notSelected) {
                                  if (notSelected) {
                                    selectedInterests.add(text);
                                  } else {
                                    selectedInterests
                                        .removeWhere((val) => val == text);
                                  }
                                  setState(() =>
                                      selectedInterests = selectedInterests);
                                }))
                            .toList(),
                      ),
                      SizedBox(height: 35),
                      Text('Add interests',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'Add your interest here...',
                          hintStyle: TextStyle(fontSize: 13),
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Spacer(),
                      RoundedArrowButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => SignupScreen())),
                        text: "Continue",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40)
          ]),
        ),
      ),
    )));
  }
}
