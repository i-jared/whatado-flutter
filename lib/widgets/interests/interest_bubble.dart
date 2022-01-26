import 'package:flutter/material.dart';

class InterestBubble extends StatelessWidget {
  final String text;
  final bool selected;
  final Function(bool)? onSelected;
  final Color? selectedColor;
  InterestBubble(
      {required this.text,
      required this.selected,
      this.onSelected,
      this.selectedColor});
  @override
  Widget build(BuildContext context) {
    return FilterChip(
        backgroundColor: Colors.grey[50],
        selectedColor: selectedColor ?? Colors.grey[850],
        showCheckmark: false,
        labelPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 12),
        labelStyle: TextStyle(color: selected ? Colors.white : Colors.black),
        label: Text(text),
        selected: selected,
        onSelected: onSelected);
  }
}
