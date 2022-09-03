import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/general/app_bar_action.dart';

class UserProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final PublicUser user;
  UserProfileAppBar({required this.title, required this.user});

  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    return AppBar(
      leading: Container(
        margin: EdgeInsets.only(left: 6),
        child: AppBarAction(
          child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back, color: AppColors.primary)),
        ),
      ),
      iconTheme: IconThemeData(color: Colors.grey[850]),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0.0,
      actions: [
        AppBarAction(
          child: PopupMenuButton(
              padding: EdgeInsets.zero,
              icon: Icon(Icons.more_vert),
              onSelected: (value) async {
                final userProvider = UserGqlProvider();
                if (value == 'report') {
                  await userProvider.flagUser(user.id);
                }
                if (value == 'block') {
                  await userProvider.blockUser(user.id);
                  await userState.getUser();
                }
              },
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Row(children: [
                        Icon(Icons.report_outlined, size: 30),
                        SizedBox(width: 10),
                        Text('report')
                      ]),
                      value: 'report',
                    ),
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(Icons.block_outlined, color: Colors.red, size: 30),
                          SizedBox(width: 10),
                          Text('block', style: TextStyle(color: Colors.red))
                        ],
                      ),
                      value: 'block',
                    )
                  ]),
        ),
      ],
    );
  }
}
