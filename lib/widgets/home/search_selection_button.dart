import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';

class SearchSelectionButton extends StatelessWidget {
  final String text;
  final bool selected;
  final Function() onTap;
  SearchSelectionButton({required this.text, required this.onTap, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
            child: Text(text,
                style: TextStyle(
                  color: selected ? AppColors.primary : Colors.black,
                ))),
        decoration: BoxDecoration(
            border:
                Border.all(width: 2, color: selected ? AppColors.primary : Colors.black),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
