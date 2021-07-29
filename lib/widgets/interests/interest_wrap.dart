import 'package:flutter/material.dart';
import 'package:whatado/models/interest.dart';

class InterestWrap extends StatelessWidget {
  final List<Interest> interests;
  final List<Interest> selectedInterests;
  final Function onPressedSetState;
  InterestWrap(
      {required this.interests,
      required this.selectedInterests,
      required this.onPressedSetState});
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 0.0,
      spacing: 10.0,
      children: interests
          .map((interest) => FilterChip(
              backgroundColor: Colors.grey[50],
              selectedColor: Colors.grey[850],
              showCheckmark: false,
              labelPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
              label: Text(interest.name,
                  style: TextStyle(
                      color: selectedInterests.contains(interest)
                          ? Colors.white
                          : Colors.black)),
              selected: selectedInterests.contains(interest),
              onSelected: (notSelected) {
                if (notSelected) {
                  selectedInterests.add(interest);
                } else {
                  selectedInterests
                      .removeWhere((val) => val.name == interest.name);
                }
                onPressedSetState(selectedInterests);
              }))
          .toList(),
    );
  }
}
