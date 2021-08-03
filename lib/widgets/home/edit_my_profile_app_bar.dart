import 'package:flutter/material.dart';

class EditMyProfileAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.grey[50],
      title: Text('Edit Profile',
          style: TextStyle(fontSize: 23, color: Colors.grey[850])),
      centerTitle: true,
      elevation: 1.0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: TextButton(
              child: Text('SAVE', style: TextStyle(color: Colors.red[300])),
              onPressed: () => null),
        ),
      ],
    );
  }
}
