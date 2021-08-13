import 'package:flutter/material.dart';
import 'package:whatado/providers/graphql/test_subscription.dart';

class SubscriptionTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StreamBuilder(
              stream: TestGqlSubscription().subscribe(),
              builder: (context, snapshot) {
                if (snapshot.hasError) return Text(snapshot.error.toString());
                if (snapshot.hasData)
                  return Container(
                      height: 300,
                      width: 300,
                      color: Colors.blue[50],
                      child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.amber,
                          child: Text('data')));
                print('jcl ${snapshot.connectionState}');
                return Container(height: 100, width: 100, color: Colors.blue);
              }),
          TextButton(child: Text('change it'), onPressed: () => null),
        ],
      ),
    );
  }
}
