import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';

class InterestBubble extends StatelessWidget {
  final String text;
  final bool selected;
  final Function(bool)? onSelected;
  InterestBubble({
    required this.text,
    required this.selected,
    this.onSelected,
  });
  @override
  Widget build(BuildContext context) {
    return FilterChip(
        backgroundColor: AppColors.background,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: selected ? BorderSide(color: AppColors.primary) : BorderSide()),
        selectedColor: Color(0xfffff2e2),
        showCheckmark: false,
        labelPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        labelStyle: TextStyle(color: selected ? AppColors.primary : Colors.black),
        label: Text(text),
        selected: selected,
        onSelected: onSelected);
  }
}
