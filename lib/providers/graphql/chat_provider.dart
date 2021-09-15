import 'dart:async';

import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/queries_graphql_api.dart';
import 'package:whatado/models/chat.dart';
import 'package:whatado/models/query_response.dart';
import 'package:whatado/services/service_provider.dart';

class ChatGqlProvider {
  Future<MyQueryResponse<Chat>> lastChat(int forumId) async {
    final query = LastChatQuery(variables: LastChatArguments(forumId: forumId));
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['lastChat'];
    final data =
        root?['nodes'] != null ? Chat.fromGqlData(root?['nodes']) : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<Chat>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<Chat?>> create(
      {required int userId, required String text, required int forumId}) async {
    final mutation = CreateChatMutation(
      variables: CreateChatArguments(
          chatInput: ChatInput(authorId: userId, forumId: forumId, text: text)),
    );
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['createChat'];
    final data = Chat.fromGqlData(root['nodes']);
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<Chat?>(
      data: data,
      ok: ok,
      errors: errors,
    );
  }

  Future<MyQueryResponse<List<Chat>>> flaggedChats() async {
    final query = FlaggedChatsQuery();
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['flaggedChats'];
    final data = root != null && root['nodes'] != null
        ? List<Chat>.from((root['nodes']).map((chat) {
            return Chat.fromGqlData(chat);
          }).toList())
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<List<Chat>>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<List<Chat>>> chats(int forumId) async {
    final query = ChatsQuery(variables: ChatsArguments(forumId: forumId));
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['chats'];
    final data = root != null && root['nodes'] != null
        ? List<Chat>.from((root['nodes']).map((chat) {
            return Chat.fromGqlData(chat);
          }).toList())
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<List<Chat>>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }
}
