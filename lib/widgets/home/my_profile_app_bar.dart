import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/screens/home/edit_my_profile.dart';
import 'package:whatado/state/home_state.dart';

class MyProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);

    ///                                ////
    ///             FAKE DATA          ////
    ///                                ////
    final User jared = User(
      email: 'jaredclambert@gmail.com',
      imageUrl:
          'https://i.guim.co.uk/img/media/7f461faef1a1f1601fca37eb6e865e248ca7f791/50_0_1133_680/master/1133.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=75e943e1cc536746aa58839c49175512',
      name: 'Jared Lambert',
      interests: ['Cooking', 'Games', 'Health', 'Traveling', 'Photography']
          .map((name) => Interest(name: name))
          .toList(),
      bio: lorem(words: 20, paragraphs: 1),
      photoUrls: [
        'https://i.guim.co.uk/img/media/7f461faef1a1f1601fca37eb6e865e248ca7f791/50_0_1133_680/master/1133.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=75e943e1cc536746aa58839c49175512',
        'https://i.guim.co.uk/img/media/7f461faef1a1f1601fca37eb6e865e248ca7f791/50_0_1133_680/master/1133.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=75e943e1cc536746aa58839c49175512',
        'https://i.guim.co.uk/img/media/7f461faef1a1f1601fca37eb6e865e248ca7f791/50_0_1133_680/master/1133.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=75e943e1cc536746aa58839c49175512',
        'https://i.guim.co.uk/img/media/7f461faef1a1f1601fca37eb6e865e248ca7f791/50_0_1133_680/master/1133.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=75e943e1cc536746aa58839c49175512',
      ],
    );

    ///                                ////
    ///             FAKE DATA          ////
    ///                                ////

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
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EditMyProfile(user: jared)))),
        ),
      ],
    );
  }
}
