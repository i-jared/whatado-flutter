import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';

class AppBarAction extends StatelessWidget {
  final Widget? child;
  AppBarAction({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(3.0),
        height: 44,
        width: 44,
        decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 216, 216, 216),
                  offset: Offset(0.0, 0.0),
                  blurRadius: 12,
                  spreadRadius: -4.0,
                  blurStyle: BlurStyle.normal)
            ]),
        child: Center(child: child));
  }
}
