import 'package:flutter/material.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/screens/profile/group_details.dart';
import 'package:whatado/widgets/events/picture_waterfall.dart';

class GroupListItem extends StatelessWidget {
  final Group group;
  GroupListItem(this.group);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => GroupDetails(group: group))),
      child: Row(
        children: [
          PictureWaterfall(loading: false, users: group.users, radius: 25),
          SizedBox(width: 15),
          Flexible(
            child: Text(
              group.name,
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
