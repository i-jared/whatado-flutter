import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/graphql/queries_graphql_api.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';
import 'package:whatado/widgets/input/my_text_field.dart';
import 'package:whatado/widgets/interests/input_interest_wrap.dart';
import 'package:whatado/widgets/interests/interest_bubble.dart';
import 'package:whatado/widgets/interests/interest_wrap.dart';

class TargetAudience extends StatefulWidget {
  @override
  _TargetAudienceState createState() => _TargetAudienceState();
}

class _TargetAudienceState extends State<TargetAudience> {
  final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final headingSpacing = 10.0;
  final padding = 30.0;
  final sectionSpacing = 35.0;

  Gender? selectedGender;
  final genders = [
    {'gender': Gender.both, 'text': 'BOTH'},
    {'gender': Gender.female, 'text': 'GIRLS'},
    {'gender': Gender.male, 'text': 'GUYS'},
  ];

  @override
  void initState() {
    super.initState();
    selectedGender = genders.first['gender'] as Gender;
  }

  @override
  Widget build(BuildContext context) {
    final eventState = Provider.of<AddEventState>(context);
    return Scaffold(
        appBar: DefaultAppBar(title: 'Target Audience'),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: sectionSpacing),
              Text('GENDER', style: headingStyle),
              SizedBox(height: headingSpacing),
              Wrap(
                runSpacing: 0.0,
                spacing: 10.0,
                children: genders
                    .map((gender) => InterestBubble(
                        text: gender['text'] as String,
                        selected: selectedGender == gender['gender'],
                        onSelected: (notSelected) {
                          if (notSelected) {
                            setState(() =>
                                selectedGender = gender['gender'] as Gender);
                          } else {
                            setState(() => selectedGender = null);
                          }
                        }))
                    .toList(),
              ),
              SizedBox(height: sectionSpacing),
              Text('AGE RANGE', style: headingStyle),
              RangeSlider(
                  labels: RangeLabels(
                      eventState.filterAgeStart.round().toString(),
                      eventState.filterAgeEnd.round().toString()),
                  divisions: 22,
                  min: 18,
                  max: 40,
                  values: RangeValues(
                      eventState.filterAgeStart, eventState.filterAgeEnd),
                  onChanged: (values) {
                    eventState.filterAgeEnd = values.end;
                    eventState.filterAgeStart = values.start;
                  }),
              SizedBox(height: sectionSpacing),
              Text('INTERESTS', style: headingStyle),
              SizedBox(height: headingSpacing),
              InterestWrap(
                interests: eventState.popularInterests,
                selectedInterests: eventState.selectedInterests,
                onSelected: (bool notSelected, Interest interest) {
                  if (notSelected) {
                    eventState.addInterest(interest);
                  } else {
                    eventState.removeInterest(interest);
                  }
                },
              ),
              SizedBox(height: headingSpacing),
              Row(
                children: [
                  Expanded(
                    child: MyTextField(
                      hintText: 'Add your interest here...',
                      controller: eventState.addInterestController,
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.add_circle_outline,
                        color: Color(0xffe85c3f), size: 35),
                    onPressed: () {
                      eventState.addCustomInterest(Interest(
                          id: 1, name: eventState.addInterestController.text));
                      eventState.addInterestController.clear();
                    },
                  ),
                ],
              ),
              const SizedBox(height: 15),
              InputInterestWrap(
                customInterests: eventState.customInterests,
                onDeleted: (Interest interest) =>
                    eventState.removeCustomInterest(interest),
              ),
              SizedBox(height: sectionSpacing),
              SizedBox(height: sectionSpacing),
            ],
          ),
        )));
  }
}
