import 'package:flutter/material.dart';
import 'package:whatado/console/screens/chat_column.dart';
import 'package:whatado/console/screens/event_column.dart';
import 'package:whatado/console/screens/user_column.dart';

class ConsoleHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        EventColumn(),
        UserColumn(),
        ChatColumn(),
      ],
    ));
  }
}
