import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/forum.dart';
import 'package:whatado/state/chat_state.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';
import 'package:whatado/widgets/forums/group_members_row.dart';
import 'package:whatado/widgets/forums/messages_body.dart';
import 'package:whatado/widgets/forums/messages_text_field.dart';

class Chats extends StatefulWidget {
  final Event event;
  final Forum forum;

  Chats({required this.event, required this.forum});

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: widget.event.title),
      body: ChangeNotifierProvider<ChatState>(
        create: (BuildContext context) => ChatState(
          forum: widget.forum,
          event: widget.event,
        ),
        child: Column(children: [
          GroupMembersRow(event: widget.event),
          MessagesBody(),
          MessagesTextField(),
        ]),
      ),
    );
  }
}