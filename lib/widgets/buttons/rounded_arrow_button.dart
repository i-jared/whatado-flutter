import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';

class RoundedArrowButton extends StatelessWidget {
  final Function? onPressed;
  final Widget? child;
  final bool disabled;
  final double? height;
  RoundedArrowButton.text(
      {required this.onPressed, required text, this.disabled = false, this.height})
      : child = Center(child: Text(text, style: TextStyle(fontSize: 20)));

  RoundedArrowButton({required this.onPressed, this.child, this.disabled = false, this.height});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadii.button))),
          fixedSize: MaterialStateProperty.all(Size(double.infinity, height ?? 50.0)),
          backgroundColor: MaterialStateProperty.resolveWith(
              (states) => onPressed == null || disabled ? Colors.grey[300] : AppColors.primary)),
      child: child,
      onPressed: onPressed == null || disabled ? null : () => onPressed!(),
    );
  }
}
