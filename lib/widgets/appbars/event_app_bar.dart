import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/screens/home/chats.dart';
import 'package:whatado/screens/home/edit_event_details.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';

class EventAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Event event;
  final bool inEdit;
  EventAppBar({required this.event, this.inEdit = false});

  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final homeState = Provider.of<HomeState>(context);
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.grey[50],
      elevation: 0,
      title: Text(inEdit ? 'Edit Event' : 'Event Details',
          style: TextStyle(fontSize: 23, color: Colors.grey[850])),
      centerTitle: true,
      actions: [
        if (!inEdit && userState.user?.id == event.creator.id)
          IconButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EditEventDetails(event: event))),
              icon: Icon(Icons.edit_outlined),
              color: Colors.grey[850]),
        if (inEdit)
          IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.save_outlined),
              color: Color(0xfff7941d)),
        SizedBox(width: 15),
      ],
    );
  }
}
