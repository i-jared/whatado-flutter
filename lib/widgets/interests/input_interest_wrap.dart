import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/state/setup_state.dart';
import 'package:whatado/widgets/interests/input_interest_bubble.dart';

class InputInterestWrap extends StatelessWidget {
  final List<Interest> customInterests;
  InputInterestWrap({required this.customInterests});
  @override
  Widget build(BuildContext context) {
    final setupState = Provider.of<SetupState>(context);
    return Wrap(
      spacing: 10.0,
      runSpacing: 0.0,
      children: customInterests
          .map((interest) => InputInterestBubble(
              interest: interest,
              onDeleted: () {
                setupState.removeCustomInterest(interest);
              }))
          .toList(),
    );
  }
}
