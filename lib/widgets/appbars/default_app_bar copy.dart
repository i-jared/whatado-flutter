import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/state/user_state.dart';

class UserProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final EventUser user;
  UserProfileAppBar({required this.title, required this.user});

  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    return AppBar(
      iconTheme: IconThemeData(color: Colors.grey[850]),
      backgroundColor: Colors.grey[50],
      title:
          Text(title, style: TextStyle(fontSize: 23, color: Colors.grey[850])),
      centerTitle: true,
      elevation: 0.0,
      actions: [
        PopupMenuButton(
            padding: EdgeInsets.zero,
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
      ],
    );
  }
}
