import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/interest.dart';

class InputInterestBubble extends StatelessWidget {
  final Interest interest;
  final Function()? onDeleted;
  InputInterestBubble({required this.interest, this.onDeleted});

  @override
  Widget build(BuildContext context) {
    return InputChip(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), side: BorderSide(color: AppColors.primary)),
        deleteIcon: Icon(Icons.clear),
        deleteIconColor: AppColors.primary,
        backgroundColor: Color(0xfffff2e2),
        selectedColor: Color(0xfffff2e2),
        showCheckmark: false,
        labelPadding: EdgeInsets.fromLTRB(15, 8, 5, 8),
        label: Text(interest.title,
            style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold)),
        selected: true,
        onDeleted: onDeleted);
  }
}
