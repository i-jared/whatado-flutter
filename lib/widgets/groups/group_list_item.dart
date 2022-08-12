import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/screens/profile/group_details.dart';

class GroupListItem extends StatelessWidget {
  final Group group;
  GroupListItem(this.group);

  @override
  Widget build(BuildContext context) {
    print(group.users.length);
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => GroupDetails(group: group))),
      child: Row(
        children: [
          // PictureWaterfall(loading: false, users: group.users, radius: 25),
          Container(
              height: 75, width: 75, child: CachedNetworkImage(imageUrl: group.icon.url)),
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
