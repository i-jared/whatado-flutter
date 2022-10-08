import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/providers/graphql/interest_provider.dart';
import 'package:whatado/utils/logger.dart';
import 'package:whatado/widgets/interests/combined_interest_wrap.dart';

class CombinedInterestSearch extends StatelessWidget {
  final TextEditingController textController;
  final List<Interest> customInterests;
  final List<Interest> selectedInterests;
  final List<Interest> interests;
  final Function(Interest) addInterest;
  final Function(Interest) addCustomInterest;
  final Function(Interest) removeInterest;
  final Function(Interest) removeCustomInterest;
  final String tooltipMessage;

  CombinedInterestSearch({
    required this.textController,
    required this.interests,
    required this.customInterests,
    required this.selectedInterests,
    required this.addCustomInterest,
    required this.addInterest,
    required this.removeCustomInterest,
    required this.removeInterest,
    required this.tooltipMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15),
          decoration: BoxDecoration(
              border: Border.all(
                width: 2.0,
                color: AppColors.primary,
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
                    showDuration: Duration(seconds: 3),
                    preferBelow: false,
                    triggerMode: TooltipTriggerMode.tap,
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    padding: EdgeInsets.all(8),
                    message: tooltipMessage,
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
                  if ([
                    ...customInterests.map((val) => val.title.toLowerCase()),
                    ...selectedInterests.map((val) => val.title.toLowerCase())
                  ].contains(interest.title.toLowerCase())) return;
                  if (interests.contains(interest)) {
                    addInterest(interest);
                    textController.clear();
                    return;
                  }
                  addCustomInterest(interest);
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
                                if (customInterests
                                    .map((val) => val.title.toLowerCase())
                                    .contains(textController.text.toLowerCase().trim())) return;
                                if (interests
                                    .map((val) => val.title.toLowerCase())
                                    .contains(textController.text.toLowerCase().trim())) {
                                  // the interest is listed. select it.
                                  addInterest(interests.firstWhere((i) =>
                                      i.title.toLowerCase() ==
                                      textController.text.toLowerCase().trim()));
                                  textController.clear();
                                  return;
                                }
                                addCustomInterest(
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
        SizedBox(height: 20),
        // TODO if interest exists in normal interests select it instead of adding it to input interests
        CombinedInterestWrap(
            inputInterests: customInterests,
            onDeleted: (Interest interest) => removeCustomInterest(interest),
            interests: interests,
            selectedInterests: selectedInterests,
            onSelected: (bool notSelected, Interest interest) {
              if (notSelected) {
                addInterest(interest);
              } else {
                removeInterest(interest);
              }
            }),
      ],
    );
  }
}
