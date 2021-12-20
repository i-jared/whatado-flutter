import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/providers/graphql/interest_provider.dart';
import 'package:whatado/screens/entry/write_bio.dart';
import 'package:whatado/state/setup_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/interests/input_interest_wrap.dart';
import 'package:whatado/widgets/interests/interest_wrap.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class ChooseInterestsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChooseInterestsScreenState();
}

class _ChooseInterestsScreenState extends State<StatefulWidget> {
  final _formKey = GlobalKey<FormState>();
  bool passwordHidden = true;
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    textController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final setupState = Provider.of<SetupState>(context);
    final headingStyle = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
    final paragraphStyle = TextStyle(fontSize: 20);
    final headingSpacing = 10.0;
    final padding = 30.0;
    final sectionSpacing = 35.0;

    return Container(
      color: Colors.grey[50],
      child: SafeArea(
        child: Scaffold(
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
                    padding: EdgeInsets.symmetric(horizontal: padding),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 50),
                          Center(
                            child: Image.asset("assets/Whatado_FullColor.png",
                                height: 100),
                          ),
                          SizedBox(height: sectionSpacing),
                          Text('Welcome!', style: headingStyle),
                          SizedBox(height: headingSpacing),
                          Text(
                              '''First, add some of your interests to help connect you with like-minded people.''',
                              style: paragraphStyle),
                          SizedBox(height: sectionSpacing),
                          InterestWrap(
                              interests: setupState.popularInterests,
                              selectedInterests: setupState.selectedInterests,
                              onSelected:
                                  (bool notSelected, Interest interest) {
                                if (notSelected) {
                                  setupState.selectInterest(interest);
                                } else {
                                  setupState.unselectInterest(interest);
                                }
                              }),
                          SizedBox(height: sectionSpacing),
                          Text('Add interests', style: headingStyle),
                          SizedBox(height: headingSpacing),
                          Row(
                            children: [
                              Expanded(
                                child: TypeAheadFormField(
                                  direction: AxisDirection.up,
                                  noItemsFoundBuilder: (context) =>
                                      SizedBox.shrink(),
                                  onSuggestionSelected: (Interest interest) {
                                    if (setupState.customInterests
                                        .map((val) => val.title)
                                        .contains(interest.title)) return;
                                    setupState.addCustomInterest(interest);
                                    textController.clear();
                                  },
                                  suggestionsCallback: (String pattern) {
                                    final provider = InterestGqlProvider();
                                    final result = provider.search(pattern);
                                    return result;
                                  },
                                  itemBuilder: (context, Interest interest) =>
                                      ListTile(title: Text(interest.title)),
                                  textFieldConfiguration:
                                      TextFieldConfiguration(
                                    decoration: InputDecoration(
                                      isDense: true,
                                      hintText: 'Add your interest here...',
                                      hintStyle: TextStyle(fontSize: 13),
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 12),
                                    ),
                                    textCapitalization:
                                        TextCapitalization.words,
                                    controller: textController,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              IconButton(
                                padding: EdgeInsets.zero,
                                icon: Icon(Icons.add_circle_outline,
                                    color: textController.text.isEmpty
                                        ? Colors.grey[400]
                                        : Color(0xfff7941d),
                                    size: 35),
                                onPressed: textController.text.isEmpty
                                    ? null
                                    : () {
                                        if (setupState.customInterests
                                            .map((val) => val.title)
                                            .contains(
                                                textController.text.trim()))
                                          return;
                                        setupState.addCustomInterest(Interest(
                                            id: 1,
                                            title: textController.text.trim()));
                                        textController.clear();
                                      },
                              ),
                            ],
                          ),
                          SizedBox(height: headingSpacing),
                          InputInterestWrap(
                            customInterests: setupState.customInterests,
                            onDeleted: (Interest interest) {
                              setupState.removeCustomInterest(interest);
                            },
                          ),
                          const SizedBox(height: 50),
                          Spacer(),
                          Center(
                            child: RoundedArrowButton(
                              onPressed: () async {
                                await setupState.saveInterests();
                                userState.getUser();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            WriteBioScreen()));
                              },
                              text: "Continue",
                            ),
                          ),
                          SizedBox(height: sectionSpacing),
                        ]),
                  ),
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
