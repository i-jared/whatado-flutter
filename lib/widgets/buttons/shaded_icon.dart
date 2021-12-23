import 'package:flutter/material.dart';

class ShadedIcon extends StatelessWidget {
  final IconData icon;
  final double width;
  final double iconSize;
  ShadedIcon({required this.icon, required this.width, required this.iconSize});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Color(0xfffff2e2), borderRadius: BorderRadius.circular(15)),
        width: width,
        height: width,
        child: Icon(icon, size: iconSize, color: Color(0xfff7941d)));
  }
}
