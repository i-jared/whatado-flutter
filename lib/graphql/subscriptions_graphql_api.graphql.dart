// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:whatado/utils/coercers.dart';
part 'subscriptions_graphql_api.graphql.g.dart';

mixin EventUserMixin {
  late int id;
  late String name;
  late String photoUrls;
  late String bio;
  @JsonKey(
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime birthday;
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

@JsonSerializable(explicitToJson: true)
class Chat$Subscription$ChatSubscription$Survey$Answers$Votes
    extends JsonSerializable with EquatableMixin, EventUserMixin {
  Chat$Subscription$ChatSubscription$Survey$Answers$Votes();

  factory Chat$Subscription$ChatSubscription$Survey$Answers$Votes.fromJson(
          Map<String, dynamic> json) =>
      _$Chat$Subscription$ChatSubscription$Survey$Answers$VotesFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
  @override
  Map<String, dynamic> toJson() =>
      _$Chat$Subscription$ChatSubscription$Survey$Answers$VotesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chat$Subscription$ChatSubscription$Survey$Answers extends JsonSerializable
    with EquatableMixin {
  Chat$Subscription$ChatSubscription$Survey$Answers();

  factory Chat$Subscription$ChatSubscription$Survey$Answers.fromJson(
          Map<String, dynamic> json) =>
      _$Chat$Subscription$ChatSubscription$Survey$AnswersFromJson(json);

  late int id;

  late String text;

  late List<Chat$Subscription$ChatSubscription$Survey$Answers$Votes> votes;

  @override
  List<Object?> get props => [id, text, votes];
  @override
  Map<String, dynamic> toJson() =>
      _$Chat$Subscription$ChatSubscription$Survey$AnswersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chat$Subscription$ChatSubscription$Survey extends JsonSerializable
    with EquatableMixin {
  Chat$Subscription$ChatSubscription$Survey();

  factory Chat$Subscription$ChatSubscription$Survey.fromJson(
          Map<String, dynamic> json) =>
      _$Chat$Subscription$ChatSubscription$SurveyFromJson(json);

  late int id;

  late String question;

  late List<Chat$Subscription$ChatSubscription$Survey$Answers> answers;

  @override
  List<Object?> get props => [id, question, answers];
  @override
  Map<String, dynamic> toJson() =>
      _$Chat$Subscription$ChatSubscription$SurveyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chat$Subscription$ChatSubscription$Author extends JsonSerializable
    with EquatableMixin, EventUserMixin {
  Chat$Subscription$ChatSubscription$Author();

  factory Chat$Subscription$ChatSubscription$Author.fromJson(
          Map<String, dynamic> json) =>
      _$Chat$Subscription$ChatSubscription$AuthorFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrls, bio, birthday];
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

  Chat$Subscription$ChatSubscription$Survey? survey;

  late Chat$Subscription$ChatSubscription$Author author;

  @override
  List<Object?> get props => [id, createdAt, text, survey, author];
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

@JsonSerializable(explicitToJson: true)
class ChatArguments extends JsonSerializable with EquatableMixin {
  ChatArguments({required this.forumId});

  @override
  factory ChatArguments.fromJson(Map<String, dynamic> json) =>
      _$ChatArgumentsFromJson(json);

  late int forumId;

  @override
  List<Object?> get props => [forumId];
  @override
  Map<String, dynamic> toJson() => _$ChatArgumentsToJson(this);
}

final CHAT_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'chat'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'forumId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'chatSubscription'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'forumId'),
                  value: VariableNode(name: NameNode(value: 'forumId')))
            ],
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
                  name: NameNode(value: 'survey'),
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
                        name: NameNode(value: 'question'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'answers'),
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
                              name: NameNode(value: 'text'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'votes'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FragmentSpreadNode(
                                    name: NameNode(value: 'EventUser'),
                                    directives: [])
                              ]))
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'author'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'EventUser'), directives: [])
                  ]))
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'EventUser'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'photoUrls'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'birthday'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class ChatSubscription extends GraphQLQuery<Chat$Subscription, ChatArguments> {
  ChatSubscription({required this.variables});

  @override
  final DocumentNode document = CHAT_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName = 'chat';

  @override
  final ChatArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Chat$Subscription parse(Map<String, dynamic> json) =>
      Chat$Subscription.fromJson(json);
}
