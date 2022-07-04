import 'dart:async';

import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
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
      {required int userId,
      required String text,
      required int forumId,
      required int eventId,
      String? question,
      List<String>? answers}) async {
    final mutation = CreateChatMutation(
      variables: CreateChatArguments(
          chatInput: ChatInput(
              authorId: userId, forumId: forumId, eventId: eventId, text: text),
          surveyInput: question == null || answers == null
              ? null
              : SurveyInput(question: question, answers: answers)),
    );
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['createChat'];
    final data = root != null && root['nodes'] != null
        ? Chat.fromGqlData(root['nodes'])
        : null;
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

  Future<MyQueryResponse<List<Chat>>> chats(
      int forumId, int take, int skip) async {
    final query = ChatsQuery(
        variables: ChatsArguments(forumId: forumId, take: take, skip: skip));
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

  Future<MyQueryResponse<bool>> vote(
      int chatId, int answerId, int forumId) async {
    final query = VoteMutation(
        variables: VoteArguments(
            chatId: chatId, answerId: answerId, forumId: forumId));
    final result = await graphqlClientService.mutate(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['vote'];
    final data = root?['nodes'];
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }
}
