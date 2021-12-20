import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/chat_state.dart';
import 'package:whatado/state/user_state.dart';

class MessagesTextField extends StatelessWidget {
  final double height = 50.0;
  @override
  Widget build(BuildContext context) {
    final chatState = Provider.of<ChatState>(context);
    final userState = Provider.of<UserState>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      color: Colors.grey[50],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: TextFormField(
              controller: chatState.textController,
              textCapitalization: TextCapitalization.sentences,
              maxLines: null,
              decoration: InputDecoration(
                  hintText: "Type your message...", border: InputBorder.none),
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            height: height,
            width: height,
            decoration: BoxDecoration(
              color: Color(0xfff7941d),
              borderRadius: BorderRadius.circular(height / 2.0),
            ),
            child: IconButton(
                onPressed: () => userState.user == null
                    ? null
                    : chatState.sendMessage(userState.user!.id),
                icon: Icon(Icons.send, color: Colors.white, size: 30)),
          )
        ],
      ),
    );
  }
}
