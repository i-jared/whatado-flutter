import 'package:flutter/material.dart';
import 'package:whatado/models/interest.dart';

class InterestBubble extends StatelessWidget {
  final Interest interest;
  final bool selected;
  final Function(bool)? onSelected;
  InterestBubble(
      {required this.interest, required this.selected, this.onSelected});
  @override
  Widget build(BuildContext context) {
    return FilterChip(
        backgroundColor: Colors.grey[50],
        selectedColor: Colors.grey[850],
        showCheckmark: false,
        labelPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
        labelStyle: TextStyle(color: selected ? Colors.white : Colors.black),
        label: Text(interest.name),
        selected: selected,
        onSelected: onSelected);
  }
}
