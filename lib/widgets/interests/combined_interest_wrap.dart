import 'package:flutter/material.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/widgets/interests/input_interest_bubble.dart';
import 'package:whatado/widgets/interests/interest_bubble.dart';

class CombinedInterestWrap extends StatelessWidget {
  final List<Interest> inputInterests;
  final List<Interest> interests;
  final List<Interest> selectedInterests;
  final Function(bool, Interest) onSelected;
  final Function(Interest) onDeleted;
  CombinedInterestWrap(
      {required this.interests,
      required this.inputInterests,
      required this.onDeleted,
      required this.selectedInterests,
      required this.onSelected});
  @override
  Widget build(BuildContext context) {
    return Wrap(alignment: WrapAlignment.start, runSpacing: 5.0, spacing: 5.0, children: [
      ...inputInterests.map((i) => InputInterestBubble(
            interest: i,
            onDeleted: () => onDeleted(i),
          )),
      ...interests.map((interest) => InterestBubble(
          text: interest.title,
          selected: selectedInterests.contains(interest),
          onSelected: (notSelected) => onSelected(notSelected, interest)))
    ]);
  }
}
