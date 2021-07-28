import 'package:flutter/material.dart';

class RoundedArrowButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  RoundedArrowButton({@required onPressed, @required text})
      : onPressed = onPressed,
        text = text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
          elevation: MaterialStateProperty.all(30),
          fixedSize: MaterialStateProperty.all(Size(315, 50)),
          backgroundColor: MaterialStateProperty.all(Colors.red[300])),
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
      onPressed: () => onPressed(),
    );
  }
}
