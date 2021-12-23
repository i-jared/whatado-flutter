import 'package:flutter/material.dart';
import 'package:whatado/models/event_user.dart';

class UserHeading extends StatelessWidget {
  final EventUser user;
  final Widget child;
  final Function() onPressed;
  UserHeading(
      {required this.user, required this.onPressed, required this.child});
  @override
  Widget build(BuildContext context) {
    final headingStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
    final headingSpacing = 10.0;
    final sectionSpacing = 17.0;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(user.name,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
                backgroundColor: MaterialStateProperty.all(Color(0xfff7941d))),
            onPressed: onPressed,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
                child: child),
          ),
        ],
      ),
      Text('${(DateTime.now().difference(user.birthday).inDays ~/ 365)}',
          style: TextStyle(fontSize: 18, color: Colors.grey)),
      SizedBox(height: sectionSpacing),
      Divider(),
      SizedBox(height: sectionSpacing),
      Text("Bio", style: headingStyle),
      SizedBox(height: headingSpacing),
      Text(user.bio, style: TextStyle(fontSize: 18))
    ]);
  }
}
