import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';

class SavingAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String buttonTitle;
  final Function() onSave;
  final bool disabled;
  SavingAppBar(
      {required this.title,
      required this.onSave,
      this.disabled = false,
      this.buttonTitle = 'SAVE'});
  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.grey[50],
      title: Text(title, style: TextStyle(fontSize: 23, color: Colors.grey[850])),
      centerTitle: true,
      elevation: 1.0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: TextButton(
              child: Text(buttonTitle,
                  style:
                      TextStyle(color: disabled ? Colors.grey[400] : AppColors.primary)),
              onPressed: disabled ? null : onSave),
        ),
      ],
    );
  }
}
