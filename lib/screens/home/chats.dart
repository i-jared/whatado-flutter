import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/forum.dart';
import 'package:whatado/state/chat_state.dart';
import 'package:whatado/widgets/appbars/chat_app_bar.dart';
import 'package:whatado/widgets/forums/messages_body.dart';
import 'package:whatado/widgets/forums/messages_text_field.dart';
import 'package:whatado/widgets/general/generic_page.dart';

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
    return GenericPage(
      appBar: ChatAppBar(event: widget.event, forum: widget.forum),
      body: ChangeNotifierProvider<ChatState>(
        create: (BuildContext context) => ChatState(
          forum: widget.forum,
          event: widget.event,
        ),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  repeat: ImageRepeat.repeat,
                  image: AssetImage('assets/chat_background.png'))),
          child: Stack(
            children: [
              Column(children: [
                MessagesBody(),
                SizedBox(height: 70),
              ]),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      color: AppColors.background,
                      width: MediaQuery.of(context).size.width,
                      child: MessagesTextField(
                        event: widget.event,
                        forum: widget.forum,
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
