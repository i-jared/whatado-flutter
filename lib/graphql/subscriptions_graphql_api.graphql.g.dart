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
