import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';

class PostLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: Scaffold(
        body: Center(
            child: Container(
          height: 100,
          width: 100,
          color: AppColors.background,
          child: CircularProgressIndicator(color: AppColors.primary),
        )),
      ),
    );
  }
}
