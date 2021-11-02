import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/chat_state.dart';
import 'package:whatado/widgets/forums/chat_bubble.dart';

class MessagesBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatState = Provider.of<ChatState>(context);
    return chatState.chats != null
        ? Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 30.0, left: 10.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  controller: chatState.scrollController,
                  reverse: true,
                  itemCount: chatState.chats!.length,
                  itemBuilder: (context, i) =>
                      ChatBubble(chat: chatState.chats![i])),
            ),
          )
        : Center(
            child: CircularProgressIndicator(),
          );
  }
}
