import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/chat.dart';
import 'package:whatado/state/user_state.dart';

class ChatBubble extends StatelessWidget {
  final Chat chat;
  ChatBubble({required this.chat});

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final isOwner = chat.author.id == userState.user?.id;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Bubble(
        margin:
            BubbleEdges.only(left: isOwner ? 50 : 0, right: isOwner ? 0 : 50),
        color: isOwner ? Colors.grey[850] : Colors.white,
        radius: Radius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(chat.text,
              style: TextStyle(
                  fontSize: 18,
                  color: isOwner ? Colors.white : Colors.grey[850])),
        ),
        alignment: isOwner ? Alignment.topRight : Alignment.topLeft,
        nip: isOwner ? BubbleNip.rightTop : BubbleNip.leftTop,
        nipRadius: 0,
        nipWidth: 0.001,
        nipHeight: 30,
      ),
    );
  }
}
