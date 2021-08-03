import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/home_state.dart';

class MyProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);

    return AppBar(
      backgroundColor: Colors.grey[50],
      title: Text('Profile',
          style: TextStyle(fontSize: 23, color: Colors.grey[850])),
      centerTitle: true,
      elevation: homeState.myProfileScrollController.hasClients &&
              homeState.myProfileScrollController.offset > 10
          ? 1.0
          : 0.0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: IconButton(
          icon:
              Icon(Icons.settings_outlined, color: Colors.grey[850], size: 30),
          onPressed: () => null,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: IconButton(
              icon:
                  Icon(Icons.edit_outlined, color: Colors.grey[850], size: 30),
              onPressed: () => null),
        ),
      ],
    );
  }
}
