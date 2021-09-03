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
    return Scaffold(body: Center(child: Container(child: Text('success'))));
  }
}
