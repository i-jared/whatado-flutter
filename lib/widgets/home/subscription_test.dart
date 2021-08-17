import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatado/providers/graphql/test_subscription.dart';

class SubscriptionTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SubscriptionTestState();
}

class _SubscriptionTestState extends State<SubscriptionTest> {
  late Stream<String> stream;
  @override
  void initState() {
    super.initState();
    stream = TestGqlSubscription().subscribe();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StreamBuilder(
              stream: stream,
              builder: (context, snapshot) {
                if (snapshot.hasError) return Text(snapshot.error.toString());
                if (snapshot.hasData)
                  return SafeArea(
                    child: Container(
                        height: 300,
                        width: 300,
                        color: Colors.blue[50],
                        child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.amber,
                            child: Text(snapshot.data.toString()))),
                  );
                print('jcl ${snapshot.connectionState}');
                return Container(height: 100, width: 100, color: Colors.blue);
              }),
          TextButton(
              child: Text('change it'),
              onPressed: () async {
                await TestGqlSubscription().mutate();
              }),
              TextButton(
              child: Text('cancel it'),
              onPressed: () async {
              }),
              TextButton(
              child: Text('revive it'),
              onPressed: () {
              }),
        ],
      ),
    );
  }
}
