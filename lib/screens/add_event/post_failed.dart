import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';

class PostFailed extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PostFailedState();
}

class _PostFailedState extends State<PostFailed> {
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer(Duration(seconds: 2), () {
      Navigator.popUntil(context, (route) => route.isFirst);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(50)),
                child: Icon(Icons.clear, size: 70, color: Colors.white)),
          ),
          SizedBox(height: 30),
          Text(
            'Post Failed...',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 10),
          Text(
            'please try again later',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )
        ],
      )),
    );
  }
}
