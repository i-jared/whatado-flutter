import 'package:flutter/material.dart';

class PostLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 100,
      width: 100,
      color: Colors.grey[50],
      child: CircularProgressIndicator(color: Color(0xffe85c3f)),
    ));
  }
}
