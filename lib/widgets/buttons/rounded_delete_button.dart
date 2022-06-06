import 'package:flutter/material.dart';

class RoundedDeleteButton extends StatelessWidget {
  final Function? onPressed;
  final String text;
  final bool disabled;
  RoundedDeleteButton(
      {required this.onPressed, required this.text, this.disabled = false});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
          elevation: MaterialStateProperty.resolveWith(
              (states) => onPressed == null || disabled ? 0 : 10),
          fixedSize: MaterialStateProperty.all(Size(double.infinity, 50)),
          backgroundColor: MaterialStateProperty.resolveWith((states) =>
              onPressed == null || disabled ? Colors.grey[300] : Colors.red)),
      child: Center(child: Text(text)),
      onPressed: onPressed == null || disabled ? null : () => onPressed!(),
    );
  }
}
