import 'package:flutter/material.dart';

class MyEventButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: null,
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
            backgroundColor: MaterialStateProperty.all(Color(0xffe85c3f))),
        child: Text('My Event',
            style: TextStyle(fontSize: 12, color: Colors.white)));
  }
}
