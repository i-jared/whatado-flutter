import 'package:flutter/material.dart';

class NoJoinButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  NoJoinButton({required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
            backgroundColor: MaterialStateProperty.all(Color(0xfff7941d))),
        child: Text(text, style: TextStyle(fontSize: 12, color: Colors.white)));
  }
}
