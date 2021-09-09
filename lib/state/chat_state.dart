import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatado/graphql/subscriptions_graphql_api.dart';
import 'package:whatado/models/chat.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/forum.dart';
import 'package:whatado/providers/graphql/chat_provider.dart';
import 'package:whatado/services/service_provider.dart';

class ChatState extends ChangeNotifier {
  final Event event;
  final Forum forum;

  final TextEditingController textController;
  final ScrollController scrollController;
  StreamSubscription? streamSubscription;
  List<Chat>? chats;

  ChatState({required this.event, required this.forum})
      : textController = TextEditingController(),
        scrollController = ScrollController() {
    init();
  }

  @override
  void dispose() {
    streamSubscription?.cancel();
    scrollController.dispose();
    textController.dispose();
    super.dispose();
  }

  void init() async {
    final provider = ChatGqlProvider();
    final result = await provider.chats(forum.id);
    chats = result.data;
    subscribe();
    notifyListeners();
  }

  void subscribe() {
    final subscription = ChatSubscription();
    final stream = graphqlClientService.subscribe(subscription).map((event) {
      return Chat.fromGqlData(event.data?['chatSubscription']);
    });
    stream.handleError((e) => print('jcl stream error $e'));
    streamSubscription = stream.listen((event) {
      chats?.insert(0, event);
      notifyListeners();
    });
    streamSubscription?.onError((e) => print('jcl sub error $e'));
  }

  void sendMessage(int authorId) async {
    final provider = ChatGqlProvider();
    await provider.create(
        text: textController.text, userId: authorId, forumId: forum.id);
    textController.clear();
  }
}
