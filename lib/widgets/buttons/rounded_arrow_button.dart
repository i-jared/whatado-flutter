import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';

class RoundedArrowButton extends StatelessWidget {
  final Function? onPressed;
  final String text;
  final bool disabled;
  RoundedArrowButton({required this.onPressed, required this.text, this.disabled = false});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadii.button))),
          fixedSize: MaterialStateProperty.all(Size(double.infinity, 50)),
          backgroundColor: MaterialStateProperty.resolveWith(
              (states) => onPressed == null || disabled ? Colors.grey[300] : AppColors.primary)),
      child: Center(child: Text(text, style: TextStyle(fontSize: 20))),
      onPressed: onPressed == null || disabled ? null : () => onPressed!(),
    );
  }
}
