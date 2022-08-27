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
          child: Row(
            children: [
              CupertinoSwitch(
                onChanged: (newVal) => eventState.screened = newVal,
                value: eventState.screened,
                activeColor: AppColors.primary,
              ),
              SizedBox(width: 20),
              Text('Screen Event Members',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ],
          ),
        ),
        SizedBox(height: headingSpacing),
        ShadowBox(
          child: Row(
            children: [
              CupertinoSwitch(
                onChanged: (newVal) => eventState.chatDisabled = !newVal,
                value: !eventState.chatDisabled,
                activeColor: AppColors.primary,
              ),
              SizedBox(width: 20),
              Text('Chat Open', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(genders[i ~/ 2]['text'] as String,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: eventState.selectedGender ==
                                            (genders[i ~/ 2]['gender'] as Gender)
                                        ? Colors.white
                                        : Colors.black)),
                          )),
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
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15),
          decoration: BoxDecoration(
              border: Border.all(
                width: 2.0,
                color: eventState.coordinates == null ? AppColors.unfocused : AppColors.primary,
              ),
              borderRadius: BorderRadius.circular(AppRadii.button)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Interests', style: TextStyle(color: Colors.grey[700])),
                  SizedBox(width: 5),
                  Tooltip(
                    preferBelow: false,
                    triggerMode: TooltipTriggerMode.tap,
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    padding: EdgeInsets.all(8),
                    message:
                        "What interests are related to your event? Helps target interested members.",
                    child: Icon(Icons.help_outline, size: 15, color: Colors.grey[700]),
                  ),
                ],
              ),
              TypeAheadFormField(
                suggestionsBoxDecoration: SuggestionsBoxDecoration(
                    borderRadius: BorderRadius.circular(AppRadii.button), offsetX: 30),
                loadingBuilder: (context) => SizedBox.shrink(),
                suggestionsBoxVerticalOffset: 40,
                direction: AxisDirection.up,
                noItemsFoundBuilder: (context) => SizedBox.shrink(),
                onSuggestionSelected: (Interest interest) {
                  if (eventState.customInterests.map((val) => val.title).contains(interest.title))
                    return;
                  eventState.addCustomInterest(interest);
                  textController.clear();
                },
                suggestionsCallback: (String pattern) {
                  final provider = InterestGqlProvider();
                  final result = provider.search(pattern);
                  return result;
                },
                itemBuilder: (context, Interest interest) => ListTile(title: Text(interest.title)),
                textFieldConfiguration: TextFieldConfiguration(
                  decoration: InputDecoration(
                    suffixIconConstraints: BoxConstraints(minHeight: 0, minWidth: 0),
                    suffixIcon: InkWell(
                        onTap: textController.text.isEmpty
                            ? null
                            : () {
                                if (eventState.customInterests
                                    .map((val) => val.title.toLowerCase())
                                    .contains(textController.text.toLowerCase().trim())) return;
                                if (userState.user?.interests
                                        .map((val) => val.title.toLowerCase())
                                        .contains(textController.text.toLowerCase().trim()) ??
                                    false) {
                                  // the interest is listed. select it.
                                  eventState.addInterest(userState.user!.interests.firstWhere((i) =>
                                      i.title.toLowerCase() ==
                                      textController.text.toLowerCase().trim()));
                                  textController.clear();
                                  return;
                                }
                                eventState.addCustomInterest(
                                    Interest(id: 1, title: textController.text.trim()));
                                textController.clear();
                              },
                        child: Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 50,
                            decoration: BoxDecoration(
                              color: textController.text.isEmpty
                                  ? AppColors.disabled
                                  : Color(0xfffff2e2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text('Add',
                                style: TextStyle(
                                    color: textController.text.isEmpty
                                        ? Colors.grey
                                        : AppColors.primary)))),
                    border: InputBorder.none,
                    isDense: true,
                    hintText: 'Related Interests',
                    hintStyle: TextStyle(fontSize: 16),
                    contentPadding: EdgeInsets.symmetric(vertical: 12),
                  ),
                  controller: textController,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: headingSpacing),
        // TODO if interest exists in normal interests select it instead of adding it to input interests
        CombinedInterestWrap(
            inputInterests: eventState.customInterests,
            onDeleted: (Interest interest) => eventState.removeCustomInterest(interest),
            interests: userState.user?.interests ?? [],
            selectedInterests: eventState.selectedInterests,
            onSelected: (bool notSelected, Interest interest) {
              if (notSelected) {
                eventState.addInterest(interest);
              } else {
                eventState.removeInterest(interest);
              }
            }),
        const SizedBox(height: 15),
        SizedBox(height: sectionSpacing),
      ],
    );
  }
}
