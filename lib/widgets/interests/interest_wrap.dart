import 'package:flutter/material.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/widgets/interests/interest_bubble.dart';

class InterestWrap extends StatelessWidget {
  final List<Interest> interests;
  final List<Interest> selectedInterests;
  final Function(bool, Interest) onSelected;
  InterestWrap(
      {required this.interests,
      required this.selectedInterests,
      required this.onSelected});
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 0.0,
      spacing: 10.0,
      children: interests
          .map((interest) => InterestBubble(
              text: interest.title,
              selected: selectedInterests.contains(interest),
              onSelected: (notSelected) => onSelected(notSelected, interest)))
          .toList(),
    );
  }
}
