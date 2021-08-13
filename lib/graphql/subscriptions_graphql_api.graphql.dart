// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:whatado/utils/coercers.dart';
part 'subscriptions_graphql_api.graphql.g.dart';

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
