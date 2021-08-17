import 'package:flutter/material.dart';

class AddEventAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.grey[850]),
      backgroundColor: Colors.grey[50],
      leading: IconButton(icon: Icon(Icons.clear), onPressed: () => Navigator.pop(context)),
      title:
          Text('Add Event', style: TextStyle(fontSize: 23, color: Colors.grey[850])),
      centerTitle: true,
      elevation: 0.0,
    );
  }
}
