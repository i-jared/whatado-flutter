import 'package:flutter/material.dart';
import 'package:whatado/models/interest.dart';

class InputInterestBubble extends StatelessWidget {
  final Interest interest;
  final Function()? onDeleted;
  InputInterestBubble({required this.interest, this.onDeleted});

  @override
  Widget build(BuildContext context) {
    return InputChip(
        deleteIcon: Icon(Icons.clear),
        deleteIconColor: Colors.white,
        backgroundColor: Colors.grey[50],
        selectedColor: Colors.grey[850],
        showCheckmark: false,
        labelPadding: EdgeInsets.fromLTRB(20, 3, 10, 3),
        label: Text(interest.name, style: TextStyle(color: Colors.white)),
        selected: true,
        onDeleted: onDeleted);
  }
}
