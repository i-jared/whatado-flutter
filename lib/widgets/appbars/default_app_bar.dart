import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  DefaultAppBar({required this.title});
  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.grey[850]),
      backgroundColor: AppColors.background,
      title: Text(title, style: TextStyle(fontSize: 18, color: Colors.grey[850])),
      centerTitle: true,
      elevation: 0.0,
    );
  }
}
