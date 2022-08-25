import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatado/graphql/subscriptions_graphql_api.dart';
import 'package:whatado/models/chat.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/forum.dart';
import 'package:whatado/providers/graphql/chat_provider.dart';
import 'package:whatado/providers/graphql/forums_provider.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/utils/logger.dart';

class ChatState extends ChangeNotifier {
  final Event event;
  final Forum forum;
  int _skip;

  final TextEditingController textController;
  final TextEditingController surveyController;
  final ScrollController scrollController;
  StreamSubscription? streamSubscription;
  List<Chat>? chats;

  final provider;

  ChatState({required this.event, required this.forum})
      : textController = TextEditingController(),
        surveyController = TextEditingController(),
        scrollController = ScrollController(),
        _skip = 0,
        provider = ForumsGqlProvider() {
    scrollController
      ..addListener(() async {
        if (scrollController.position.atEdge && scrollController.position.pixels != 0) {
          await getChats();
        }
      });
    textController.addListener(() => notifyListeners());
    surveyController.addListener(() => notifyListeners());
    init();
  }

  @override
  void dispose() {
    streamSubscription?.cancel();
    // scrollController.dispose();
    // textController.dispose();
    super.dispose();
  }

  void init() async {
    await getChats();
    subscribe(forum.id);
  }

  Future<void> getChats() async {
    final provider = ChatGqlProvider();
    final result = await provider.chats(forum.id, 20, _skip);
    _skip += 20;
    if (chats == null)
      chats = result.data ?? [];
    else
      chats!.addAll(result.data ?? []);
    notifyListeners();
  }

  void subscribe(int forumId) {
    final subscription = ChatSubscription(variables: ChatArguments(forumId: forumId));
    final stream = graphqlClientService.subscribe(subscription).map((event) {
      // update last accessed
      provider.access(forum.userNotification.id);
      return Chat.fromGqlData(event.data?['chatSubscription']);
    });
    stream.handleError((e) => logger.e('stream error $e'));
    streamSubscription = stream.listen((newChat) {
      final existingId = chats?.indexWhere((c) => c.id == newChat.id) ?? -1;
      if (existingId >= 0) {
        chats?[existingId] = newChat;
      } else {
        chats?.insert(0, newChat);
      }
      notifyListeners();
    });
    streamSubscription?.onError((e) => logger.e('sub error $e'));
  }

  Future<void> sendMessage(int authorId, [List<String>? answers, String? question]) async {
    final tempText = textController.text;
    textController.clear();
    final provider = ChatGqlProvider();
    await provider.create(
        text: tempText,
        userId: authorId,
        forumId: forum.id,
        eventId: event.id,
        answers: answers,
        question: question);
  }
}
