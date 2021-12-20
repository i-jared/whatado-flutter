import 'package:flutter/material.dart';

class RoundedArrowButton extends StatelessWidget {
  final Function? onPressed;
  final String text;
  final bool disabled;
  RoundedArrowButton(
      {required this.onPressed, required this.text, this.disabled = false});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
          elevation: MaterialStateProperty.resolveWith(
              (states) => onPressed == null || disabled ? 0 : 30),
          fixedSize: MaterialStateProperty.all(Size(double.infinity, 50)),
          backgroundColor: MaterialStateProperty.resolveWith((states) =>
              onPressed == null || disabled
                  ? Colors.grey[300]
                  : Color(0xfff7941d))),
      child: Stack(
        children: [
          Center(child: Text(text)),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Icon(
                  Icons.trending_flat_outlined,
                  size: 40,
                ),
              ],
            ),
          ),
        ],
      ),
      onPressed: onPressed == null || disabled ? null : () => onPressed!(),
    );
  }
}
