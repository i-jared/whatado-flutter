import 'package:flutter/material.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/screens/profile/user_profile.dart';

class EventTopBar extends StatelessWidget {
  final Event event;
  EventTopBar({required this.event});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    UserProfile(initialUserData: event.creator))),
        child: CircleAvatar(
          radius: 17,
          backgroundImage: NetworkImage(event.creator.imageUrl),
        ),
      ),
      SizedBox(width: 10),
      Text(event.creator.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
      Spacer(),
      Text('1h ago', style: TextStyle(color: Colors.grey)),
    ]);
  }
}
