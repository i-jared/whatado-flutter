import 'package:flutter/material.dart';

class SavingAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function() onSave;
  SavingAppBar({required this.title, required this.onSave});
  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.grey[50],
      title:
          Text(title, style: TextStyle(fontSize: 23, color: Colors.grey[850])),
      centerTitle: true,
      elevation: 1.0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: TextButton(
              child: Text('SAVE', style: TextStyle(color: Color(0xffe85c3f))),
              onPressed: onSave),
        ),
      ],
    );
  }
}
