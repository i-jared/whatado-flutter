import 'package:whatado/graphql/subscriptions_graphql_api.dart';
import 'package:whatado/services/service_provider.dart';

class TestGqlSubscription {
  Stream<String> subscribe() {
    final subscription = HelloSubscription();
    final stream = graphqlClientService.subscribe(subscription);
    return stream.map((event) => event.data?['helloSubscription']);
  }
}
