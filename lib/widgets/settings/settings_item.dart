import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/widgets/events/shadow_box.dart';

class SettingsItem extends StatelessWidget {
  final String title;
  final Widget? leading;
  final Function() onPressed;
  final Color? color;
  final Color? iconColor;
  SettingsItem(
      {required this.title, required this.onPressed, this.color, this.iconColor, this.leading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ShadowBox(
        child: ListTile(
          leading: leading,
          iconColor: iconColor ?? AppColors.primary,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          title: Text(title,
              style: TextStyle(fontSize: 18, color: color, fontWeight: FontWeight.w600)),
          onTap: onPressed,
        ),
      ),
    );
  }
}
