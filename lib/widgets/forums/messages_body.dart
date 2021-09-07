import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/chat_state.dart';
import 'package:whatado/widgets/forums/chat_bubble.dart';

class MessagesBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatState = Provider.of<ChatState>(context);
    return Expanded(
      child: chatState.chats != null
          ? Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: ListView.builder(
                  controller: chatState.scrollController,
                  reverse: true,
                  itemCount: chatState.chats!.length,
                  itemBuilder: (context, i) =>
                      ChatBubble(chat: chatState.chats![i])),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
