// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'subscriptions_graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hello$Subscription _$Hello$SubscriptionFromJson(Map<String, dynamic> json) =>
    Hello$Subscription()
      ..helloSubscription = json['helloSubscription'] as String;

Map<String, dynamic> _$Hello$SubscriptionToJson(Hello$Subscription instance) =>
    <String, dynamic>{
      'helloSubscription': instance.helloSubscription,
    };

Chat$Subscription$ChatSubscription$Survey$Answers$Votes
    _$Chat$Subscription$ChatSubscription$Survey$Answers$VotesFromJson(
            Map<String, dynamic> json) =>
        Chat$Subscription$ChatSubscription$Survey$Answers$Votes()
          ..id = json['id'] as int
          ..name = json['name'] as String
          ..photoUrls = json['photoUrls'] as String
          ..bio = json['bio'] as String
          ..birthday =
              fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic>
    _$Chat$Subscription$ChatSubscription$Survey$Answers$VotesToJson(
            Chat$Subscription$ChatSubscription$Survey$Answers$Votes instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          'photoUrls': instance.photoUrls,
          'bio': instance.bio,
          'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
        };

Chat$Subscription$ChatSubscription$Survey$Answers
    _$Chat$Subscription$ChatSubscription$Survey$AnswersFromJson(
            Map<String, dynamic> json) =>
        Chat$Subscription$ChatSubscription$Survey$Answers()
          ..id = json['id'] as int
          ..text = json['text'] as String
          ..votes = (json['votes'] as List<dynamic>)
              .map((e) =>
                  Chat$Subscription$ChatSubscription$Survey$Answers$Votes
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$Chat$Subscription$ChatSubscription$Survey$AnswersToJson(
        Chat$Subscription$ChatSubscription$Survey$Answers instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'votes': instance.votes.map((e) => e.toJson()).toList(),
    };

Chat$Subscription$ChatSubscription$Survey
    _$Chat$Subscription$ChatSubscription$SurveyFromJson(
            Map<String, dynamic> json) =>
        Chat$Subscription$ChatSubscription$Survey()
          ..id = json['id'] as int
          ..question = json['question'] as String
          ..answers = (json['answers'] as List<dynamic>)
              .map((e) =>
                  Chat$Subscription$ChatSubscription$Survey$Answers.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$Chat$Subscription$ChatSubscription$SurveyToJson(
        Chat$Subscription$ChatSubscription$Survey instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answers': instance.answers.map((e) => e.toJson()).toList(),
    };

Chat$Subscription$ChatSubscription$Author
    _$Chat$Subscription$ChatSubscription$AuthorFromJson(
            Map<String, dynamic> json) =>
        Chat$Subscription$ChatSubscription$Author()
          ..id = json['id'] as int
          ..name = json['name'] as String
          ..photoUrls = json['photoUrls'] as String
          ..bio = json['bio'] as String
          ..birthday =
              fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);

Map<String, dynamic> _$Chat$Subscription$ChatSubscription$AuthorToJson(
        Chat$Subscription$ChatSubscription$Author instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'bio': instance.bio,
      'birthday': fromDartDateTimeToGraphQLDateTime(instance.birthday),
    };

Chat$Subscription$ChatSubscription _$Chat$Subscription$ChatSubscriptionFromJson(
        Map<String, dynamic> json) =>
    Chat$Subscription$ChatSubscription()
      ..id = json['id'] as int
      ..createdAt =
          fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
      ..text = json['text'] as String
      ..survey = json['survey'] == null
          ? null
          : Chat$Subscription$ChatSubscription$Survey.fromJson(
              json['survey'] as Map<String, dynamic>)
      ..author = Chat$Subscription$ChatSubscription$Author.fromJson(
          json['author'] as Map<String, dynamic>);

Map<String, dynamic> _$Chat$Subscription$ChatSubscriptionToJson(
        Chat$Subscription$ChatSubscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'text': instance.text,
      'survey': instance.survey?.toJson(),
      'author': instance.author.toJson(),
    };

Chat$Subscription _$Chat$SubscriptionFromJson(Map<String, dynamic> json) =>
    Chat$Subscription()
      ..chatSubscription = Chat$Subscription$ChatSubscription.fromJson(
          json['chatSubscription'] as Map<String, dynamic>);

Map<String, dynamic> _$Chat$SubscriptionToJson(Chat$Subscription instance) =>
    <String, dynamic>{
      'chatSubscription': instance.chatSubscription.toJson(),
    };

ChatArguments _$ChatArgumentsFromJson(Map<String, dynamic> json) =>
    ChatArguments(
      forumId: json['forumId'] as int,
    );

Map<String, dynamic> _$ChatArgumentsToJson(ChatArguments instance) =>
    <String, dynamic>{
      'forumId': instance.forumId,
    };
