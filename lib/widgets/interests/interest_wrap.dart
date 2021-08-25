import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/state/setup_state.dart';
import 'package:whatado/widgets/interests/interest_bubble.dart';

class InterestWrap extends StatelessWidget {
  final List<Interest> interests;
  InterestWrap({required this.interests});
  @override
  Widget build(BuildContext context) {
    final setupState = Provider.of<SetupState>(context);

    return Wrap(
      runSpacing: 0.0,
      spacing: 10.0,
      children: interests
          .map((interest) => InterestBubble(
              text: interest.name,
              selected: setupState.selectedInterests.contains(interest),
              onSelected: (notSelected) {
                if (notSelected) {
                  setupState.addInterest(interest);
                } else {
                  setupState.removeInterest(interest);
                }
              }))
          .toList(),
    );
  }
}
