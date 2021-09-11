import 'package:flutter/material.dart';

class NoJoinButton extends StatelessWidget {
  final String text;
  NoJoinButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: null,
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
            backgroundColor: MaterialStateProperty.all(Color(0xffe85c3f))),
        child: Text(text, style: TextStyle(fontSize: 12, color: Colors.white)));
  }
}
