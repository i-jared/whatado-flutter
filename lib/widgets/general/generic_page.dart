import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';

class GenericPage extends StatelessWidget {
  final Widget body;
  final Widget? bottomNavigationBar;
  final PreferredSizeWidget? appBar;
  final bool extendBodyBehindAppBar;
  final bool top;
  final bool bottom;
  final bool resizeToAvoidBottomInset;
  final Color? color;

  GenericPage(
      {required this.body,
      this.appBar,
      this.bottomNavigationBar,
      this.extendBodyBehindAppBar = false,
      this.top = true,
      this.bottom = true,
      this.resizeToAvoidBottomInset = false,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: color ?? AppColors.background,
        child: SafeArea(
            top: top,
            bottom: bottom,
            child: Scaffold(
              appBar: appBar,
              body: body,
              bottomNavigationBar: bottomNavigationBar,
              extendBodyBehindAppBar: extendBodyBehindAppBar,
              resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            )));
  }
}
