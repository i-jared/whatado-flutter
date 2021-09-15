import 'package:flutter/material.dart';
import 'package:whatado/models/chat.dart';
import 'package:whatado/providers/graphql/chat_provider.dart';

class ChatColumn extends StatefulWidget {
  @override
  _ChatColumnState createState() => _ChatColumnState();
}

class _ChatColumnState extends State<ChatColumn> {
  late bool loading;
  List<Chat>? chats;

  @override
  void initState() {
    super.initState();
    loading = false;
    init();
  }

  Future<void> init() async {
    final provider = ChatGqlProvider();
    final result = await provider.flaggedChats();
    setState(() => chats = result.data ?? []);
  }

  @override
  Widget build(BuildContext context) {
    if (loading || chats == null) return CircularProgressIndicator();
    return ListView.builder(
        itemCount: chats!.length,
        itemBuilder: (context, i) => ListTile(title: Text(chats![i].text)));
  }
}
