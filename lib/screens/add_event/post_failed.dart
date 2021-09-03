import 'dart:async';

import 'package:flutter/material.dart';

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
    return Scaffold(body: Center(child: Container(child: Text('failed'))));
  }
}
