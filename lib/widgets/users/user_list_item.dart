import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/screens/profile/user_profile.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/users/user_avatar.dart';

class UserListItem extends StatelessWidget {
  final EventUser user;
  final bool selected;
  UserListItem(this.user, {this.selected = false});

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final homeState = Provider.of<HomeState>(context);
    return InkWell(
      onTap: userState.user?.id == user.id
          ? () {
              homeState.bottomBarPageNo = 3;
              if (Navigator.canPop(context))
                Navigator.popUntil(context, (route) => route.isFirst);
            }
          : () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserProfile(user: user)))
                  .then((_) async {
                await Future.delayed(Duration(milliseconds: 500));
                // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
                //   statusBarBrightness: Brightness.dark,
                //   statusBarIconBrightness: Brightness.dark,
                //   systemNavigationBarColor: AppColors.background,
                //   statusBarColor: Colors.transparent,
                // ));
              }),
      child: Row(
        children: [
          selected
              ? Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey[850],
                  ),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ))
              : UserAvatar(
                  url: user.photoUrls.isEmpty ? null : user.photoUrls.first, radius: 25),
          SizedBox(width: 15),
          Flexible(
            child: Text(
              user.name,
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
