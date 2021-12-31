// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'subscriptions_graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hello$Subscription _$Hello$SubscriptionFromJson(Map<String, dynamic> json) {
  return Hello$Subscription()
    ..helloSubscription = json['helloSubscription'] as String;
}

Map<String, dynamic> _$Hello$SubscriptionToJson(Hello$Subscription instance) =>
    <String, dynamic>{
      'helloSubscription': instance.helloSubscription,
    };

Chat$Subscription$ChatSubscription$Author
    _$Chat$Subscription$ChatSubscription$AuthorFromJson(
        Map<String, dynamic> json) {
  return Chat$Subscription$ChatSubscription$Author()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..photoUrls = json['photoUrls'] as String
    ..bio = json['bio'] as String
    ..birthday = fromGraphQLDateTimeToDartDateTime(json['birthday'] as String);
}

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
    Map<String, dynamic> json) {
  return Chat$Subscription$ChatSubscription()
    ..id = json['id'] as int
    ..createdAt = fromGraphQLDateTimeToDartDateTime(json['createdAt'] as String)
    ..text = json['text'] as String
    ..author = Chat$Subscription$ChatSubscription$Author.fromJson(
        json['author'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Chat$Subscription$ChatSubscriptionToJson(
        Chat$Subscription$ChatSubscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'text': instance.text,
      'author': instance.author.toJson(),
    };

Chat$Subscription _$Chat$SubscriptionFromJson(Map<String, dynamic> json) {
  return Chat$Subscription()
    ..chatSubscription = Chat$Subscription$ChatSubscription.fromJson(
        json['chatSubscription'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Chat$SubscriptionToJson(Chat$Subscription instance) =>
    <String, dynamic>{
      'chatSubscription': instance.chatSubscription.toJson(),
    };

ChatArguments _$ChatArgumentsFromJson(Map<String, dynamic> json) {
  return ChatArguments(
    forumId: json['forumId'] as int,
  );
}

Map<String, dynamic> _$ChatArgumentsToJson(ChatArguments instance) =>
    <String, dynamic>{
      'forumId': instance.forumId,
    };
