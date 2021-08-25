import 'package:flutter/material.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/widgets/interests/input_interest_bubble.dart';

class InputInterestWrap extends StatelessWidget {
  final List<Interest> customInterests;
  final Function(Interest) onDeleted;
  InputInterestWrap({required this.customInterests, required this.onDeleted});
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 0.0,
      children: customInterests
          .map((interest) => InputInterestBubble(
              interest: interest, onDeleted: () => onDeleted(interest)))
          .toList(),
    );
  }
}
