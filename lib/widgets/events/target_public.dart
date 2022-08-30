import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/providers/graphql/interest_provider.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/events/shadow_box.dart';
import 'package:whatado/widgets/interests/combined_interest_search.dart';
import 'package:whatado/widgets/interests/combined_interest_wrap.dart';

import '../../graphql/mutations_graphql_api.graphql.dart';

class TargetPublic extends StatelessWidget {
  final TextEditingController textController;
  TargetPublic({required this.textController});

  final genders = [
    {'gender': Gender.both, 'text': 'Both'},
    {'gender': Gender.female, 'text': 'Female'},
    {'gender': Gender.male, 'text': 'Male'},
  ];
  Widget build(BuildContext context) {
    final eventState = Provider.of<AddEventState>(context);
    final userState = Provider.of<UserState>(context);
    final headingStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
    final headingSpacing = 20.0;
    final sectionSpacing = 35.0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: headingSpacing),
        ShadowBox(
          padding: 10,
          child: Column(
            children: [
              Row(
                children: [
                  CupertinoSwitch(
                    onChanged: (newVal) => eventState.screened = newVal,
                    value: eventState.screened,
                    activeColor: AppColors.primary,
                  ),
                  SizedBox(width: 20),
                  Text('Screen Event Members',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                ],
              ),
              Row(
                children: [
                  CupertinoSwitch(
                    onChanged: (newVal) => eventState.chatDisabled = !newVal,
                    value: !eventState.chatDisabled,
                    activeColor: AppColors.primary,
                  ),
                  SizedBox(width: 20),
                  Text('Chat Open', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: headingSpacing),
        Text('Gender', style: headingStyle),
        SizedBox(height: headingSpacing),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List<Widget>.generate(
              5,
              (i) => i.isOdd
                  ? SizedBox(width: 15)
                  : Expanded(
                      child: RoundedArrowButton(
                          color: eventState.selectedGender == (genders[i ~/ 2]['gender'] as Gender)
                              ? AppColors.primary
                              : AppColors.disabled,
                          onPressed: () =>
                              eventState.selectedGender = genders[i ~/ 2]['gender'] as Gender,
                          child: Text(genders[i ~/ 2]['text'] as String,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: eventState.selectedGender ==
                                          (genders[i ~/ 2]['gender'] as Gender)
                                      ? Colors.white
                                      : Colors.black))),
                    )),
        ),
        SizedBox(height: headingSpacing),
        Container(
          height: 150,
          padding: EdgeInsets.symmetric(vertical: 15.0),
          decoration: BoxDecoration(
              color: AppColors.disabled, borderRadius: BorderRadius.circular(AppRadii.button)),
          child: Column(
            children: [
              Text('Age Range', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              Spacer(),
              SfRangeSliderTheme(
                data: SfRangeSliderThemeData(
                  tooltipBackgroundColor: AppColors.background,
                  tooltipTextStyle: TextStyle(color: Colors.black),
                ),
                child: SfRangeSlider(
                    activeColor: AppColors.primary,
                    showLabels: true,
                    enableTooltip: true,
                    shouldAlwaysShowTooltip: true,
                    // tooltipShape: SfPaddleTooltipShape(),
                    // labels: RangeLabels(eventState.filterAgeStart.round().toString(),
                    //     eventState.filterAgeEnd.round().toString()),
                    stepSize: 1.0,
                    min: 18,
                    max: 40,
                    values: SfRangeValues(eventState.filterAgeStart, eventState.filterAgeEnd),
                    onChanged: (values) {
                      eventState.filterAgeEnd = values.end;
                      eventState.filterAgeStart = values.start;
                    }),
              ),
            ],
          ),
        ),
        SizedBox(height: headingSpacing),
        CombinedInterestSearch(
          textController: textController,
          interests: userState.user!.interests,
          customInterests: eventState.customInterests,
          selectedInterests: eventState.selectedInterests,
          addCustomInterest: eventState.addCustomInterest,
          addInterest: eventState.addInterest,
          removeCustomInterest: eventState.removeCustomInterest,
          removeInterest: eventState.removeInterest,
          tooltipMessage:
              "What interests are related to your event? Helps target interested members.",
        ),
        const SizedBox(height: 15),
        SizedBox(height: sectionSpacing),
      ],
    );
  }
}
