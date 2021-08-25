import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';
import 'package:whatado/widgets/interests/interest_bubble.dart';

class TargetAudience extends StatefulWidget {
  @override
  _TargetAudienceState createState() => _TargetAudienceState();
}

class _TargetAudienceState extends State<TargetAudience> {
  final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final headingSpacing = 10.0;
  final padding = 30.0;
  final sectionSpacing = 35.0;

  String? selectedGender;
  final genders = ['BOTH', 'GIRLS', 'GUYS'];

  @override
  void initState() {
    super.initState();
    selectedGender = genders.first;
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
                        text: gender,
                        selected: selectedGender == gender,
                        onSelected: (notSelected) {
                          if (notSelected) {
                            setState(() => selectedGender = gender);
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
              SizedBox(height: headingSpacing),
              SizedBox(height: sectionSpacing),
            ],
          ),
        )));
  }
}
