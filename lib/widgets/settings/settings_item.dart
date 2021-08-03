import 'package:flutter/material.dart';

class SettingsItem extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final bool showIcon;
  final Color? color;
  SettingsItem(
      {required this.title,
      required this.onPressed,
      this.showIcon = true,
      this.color});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      title: Text(title, style: TextStyle(fontSize: 18, color: color)),
      onTap: onPressed,
      trailing: showIcon ? Icon(Icons.arrow_forward_ios) : null,
    );
  }
}
