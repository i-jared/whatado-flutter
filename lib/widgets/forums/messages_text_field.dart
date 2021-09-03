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
      // height: height,
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: TextFormField(
              controller: chatState.textController,
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
              color: Color(0xffe85c3f),
              borderRadius: BorderRadius.circular(height / 2.0),
            ),
            child: IconButton(
                onPressed: () => chatState.sendMessage(userState.user!.id),
                icon: Icon(Icons.send, color: Colors.white, size: 30)),
          )
        ],
      ),
    );
  }
}
