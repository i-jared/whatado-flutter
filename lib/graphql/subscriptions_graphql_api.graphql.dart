// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:whatado/utils/coercers.dart';
part 'subscriptions_graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Chat$Subscription$ChatSubscription$Author extends JsonSerializable
    with EquatableMixin {
  Chat$Subscription$ChatSubscription$Author();

  factory Chat$Subscription$ChatSubscription$Author.fromJson(
          Map<String, dynamic> json) =>
      _$Chat$Subscription$ChatSubscription$AuthorFromJson(json);

  late int id;

  late String profilePhotoUrl;

  late String username;

  @override
  List<Object?> get props => [id, profilePhotoUrl, username];
  @override
  Map<String, dynamic> toJson() =>
      _$Chat$Subscription$ChatSubscription$AuthorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chat$Subscription$ChatSubscription extends JsonSerializable
    with EquatableMixin {
  Chat$Subscription$ChatSubscription();

  factory Chat$Subscription$ChatSubscription.fromJson(
          Map<String, dynamic> json) =>
      _$Chat$Subscription$ChatSubscriptionFromJson(json);

  late int id;

  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime createdAt;

  late String text;

  late Chat$Subscription$ChatSubscription$Author author;

  @override
  List<Object?> get props => [id, createdAt, text, author];
  @override
  Map<String, dynamic> toJson() =>
      _$Chat$Subscription$ChatSubscriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chat$Subscription extends JsonSerializable with EquatableMixin {
  Chat$Subscription();

  factory Chat$Subscription.fromJson(Map<String, dynamic> json) =>
      _$Chat$SubscriptionFromJson(json);

  late Chat$Subscription$ChatSubscription chatSubscription;

  @override
  List<Object?> get props => [chatSubscription];
  @override
  Map<String, dynamic> toJson() => _$Chat$SubscriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Hello$Subscription extends JsonSerializable with EquatableMixin {
  Hello$Subscription();

  factory Hello$Subscription.fromJson(Map<String, dynamic> json) =>
      _$Hello$SubscriptionFromJson(json);

  late String helloSubscription;

  @override
  List<Object?> get props => [helloSubscription];
  @override
  Map<String, dynamic> toJson() => _$Hello$SubscriptionToJson(this);
}

final CHAT_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'chat'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'chatSubscription'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'createdAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'text'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'author'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'profilePhotoUrl'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'username'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class ChatSubscription
    extends GraphQLQuery<Chat$Subscription, JsonSerializable> {
  ChatSubscription();

  @override
  final DocumentNode document = CHAT_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName = 'chat';

  @override
  List<Object?> get props => [document, operationName];
  @override
  Chat$Subscription parse(Map<String, dynamic> json) =>
      Chat$Subscription.fromJson(json);
}

final HELLO_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'hello'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'helloSubscription'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class HelloSubscription
    extends GraphQLQuery<Hello$Subscription, JsonSerializable> {
  HelloSubscription();

  @override
  final DocumentNode document = HELLO_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName = 'hello';

  @override
  List<Object?> get props => [document, operationName];
  @override
  Hello$Subscription parse(Map<String, dynamic> json) =>
      Hello$Subscription.fromJson(json);
}
