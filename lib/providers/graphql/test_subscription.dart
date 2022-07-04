import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/graphql/subscriptions_graphql_api.dart';
import 'package:whatado/services/service_provider.dart';

class TestGqlSubscription {
  Stream<String> subscribe() {
    final subscription = HelloSubscription();
    final stream = graphqlClientService.subscribe(subscription);
    return stream.map((event) => event.data?['helloSubscription']);
  }

  Future<bool> mutate() async {
    final mutation = HelloMutation(
        variables: HelloArguments(message: DateTime.now().toString()));
    final result = await graphqlClientService.mutate(mutation);
    return result.data?['helloMutation'];
  }
}
