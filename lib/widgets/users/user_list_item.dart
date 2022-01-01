import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/screens/profile/user_profile.dart';

class UserListItem extends StatelessWidget {
  final EventUser user;
  UserListItem(this.user);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => UserProfile(user: user)))
          .then((_) async {
        await Future.delayed(Duration(milliseconds: 500));
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
          systemNavigationBarColor: Colors.grey[50],
          statusBarColor: Colors.transparent,
        ));
      }),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            clipBehavior: Clip.antiAlias,
            child: user.photoUrls.isEmpty
                ? Image.asset("assets/Whatado_Transparent.png")
                : CachedNetworkImage(imageUrl: user.photoUrls.first),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          ),
          SizedBox(width: 15),
          Text(user.name, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
