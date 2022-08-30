import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';

class ShadowBox extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double? padding;
  ShadowBox({this.child, this.color, this.padding});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 15.0),
      child: child,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadii.button),
          color: color ?? AppColors.background,
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 216, 216, 216),
                offset: Offset(0.0, 0.0),
                blurRadius: 12,
                spreadRadius: 1.0,
                blurStyle: BlurStyle.normal),
          ]),
    );
  }
}
