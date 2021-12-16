import 'dart:async';

import 'package:flutter/material.dart';

class PostSucceeded extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PostSucceededState();
}

class _PostSucceededState extends State<PostSucceeded> {
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer(Duration(seconds: 2),
        () => Navigator.popUntil(context, (route) => route.isFirst));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(Icons.check, size: 70, color: Colors.white)),
          ),
          SizedBox(height: 30),
          Text(
            'Success!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          )
        ],
      )),
    );
  }
}
