import 'package:flutter/material.dart';
import 'package:whatado/models/interest.dart';

class InputInterestWrap extends StatelessWidget {
  final List<Interest> customInterests;
  final Function onPressedSetState;
  InputInterestWrap(
      {required this.customInterests, required this.onPressedSetState});
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 0.0,
      children: customInterests
          .map((interest) => InputChip(
              deleteIcon: Icon(Icons.clear),
              deleteIconColor: Colors.white,
              backgroundColor: Colors.grey[50],
              selectedColor: Colors.grey[850],
              showCheckmark: false,
              labelPadding: EdgeInsets.fromLTRB(20, 3, 10, 3),
              label: Text(interest.name,
                  style: TextStyle(
                      color: customInterests.contains(interest)
                          ? Colors.white
                          : Colors.black)),
              selected: customInterests.contains(interest),
              onDeleted: () {
                customInterests.removeWhere((val) => val == interest);
                onPressedSetState(customInterests);
              }))
          .toList(),
    );
  }
}
