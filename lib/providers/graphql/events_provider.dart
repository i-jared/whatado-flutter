import 'dart:async';

import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/graphql/queries_graphql_api.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/query_response.dart';
import 'package:whatado/services/service_provider.dart';

class EventsGqlProvider {
  Future<MyQueryResponse<List<Event>>> events(
      DateTime start, DateTime end, int take, int skip, SortType sortType) async {
    final query = EventsQuery(
        variables: EventsArguments(
      dateRange: DateRangeInput(startDate: start, endDate: end),
      take: take,
      skip: skip,
      sortType: sortType,
    ));
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['events'];
    final data = root != null && root['nodes'] != null
        ? List<Event>.from((root?['nodes']).map((event) {
            return Event.fromGqlData(event);
          }).toList())
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<List<Event>>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<List<Event>>> groupEvents(int groupId) async {
    final query = GroupEventsQuery(
        variables: GroupEventsArguments(
      groupId: groupId,
    ));
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['groupEvents'];
    final data = root != null && root['nodes'] != null
        ? List<Event>.from((root?['nodes']).map((event) {
            return Event.fromGqlData(event);
          }))
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<List<Event>>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<List<Event>>> otherEvents(
      DateTime start, DateTime end, int take, int skip, SortType sortType) async {
    final query = OtherEventsQuery(
        variables: OtherEventsArguments(
      dateRange: DateRangeInput(startDate: start, endDate: end),
      take: take,
      skip: skip,
      sortType: sortType,
    ));
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['otherEvents'];
    final data = root != null && root['nodes'] != null
        ? List<Event>.from((root?['nodes']).map((event) {
            return Event.fromGqlData(event);
          }).toList())
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<List<Event>>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<Event>> createEvent(EventInput eventInput) async {
    final mutation =
        CreateEventMutation(variables: CreateEventArguments(eventInput: eventInput));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['event'];
    final data =
        root != null && root['nodes'] != null ? Event.fromGqlData(root?['nodes']) : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<Event>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<List<Event>>> myEvents() async {
    final query = MyEventsQuery();
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['myEvents'];
    final data = root != null && root['nodes'] != null
        ? List<Event>.from(
            (root?['nodes']).map((event) => Event.fromGqlData(event)).toList())
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<List<Event>>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> flagEvent(int eventId) async {
    final mutation = FlagEventMutation(variables: FlagEventArguments(eventId: eventId));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['flagEvent'];
    final data = root?['ok'] ?? false;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<Event>> updateEvent(EventFilterInput eventInput) async {
    final mutation =
        UpdateEventMutation(variables: UpdateEventArguments(eventInput: eventInput));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }
    final root = result.data?['updateEvent'];
    final data =
        root != null && root['nodes'] != null ? Event.fromGqlData(root?['nodes']) : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<Event>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<List<Event>>> flaggedEvents() async {
    final query = FlaggedEventsQuery();
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }
    final root = result.data?['flaggedEvents'];
    final data = root != null && root['nodes'] != null
        ? List<Event>.from((root?['nodes']).map((event) {
            return Event.fromGqlData(event);
          }).toList())
        : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<List<Event>>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<Event>> addWannago(
      {required int eventId, required int userId}) async {
    final mutation = AddWannagoMutation(
        variables: AddWannagoArguments(eventId: eventId, userId: userId));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }
    print('add wannago $result');
    final root = result.data?['addWannago'];
    final data =
        root != null && root['nodes'] != null ? Event.fromGqlData(root?['nodes']) : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<Event>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<Event>> addInvite(
      {required int eventId, required int userId}) async {
    final mutation = AddInviteMutation(
        variables: AddInviteArguments(eventId: eventId, userId: userId));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }
    final root = result.data?['addInvite'];
    final data =
        root != null && root['nodes'] != null ? Event.fromGqlData(root?['nodes']) : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<Event>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<Event>> removeInvite(
      {required int eventId, required int userId}) async {
    final mutation = RemoveInviteMutation(
        variables: RemoveInviteArguments(eventId: eventId, userId: userId));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['removeInvite'];
    final data =
        root != null && root['nodes'] != null ? Event.fromGqlData(root?['nodes']) : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<Event>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> updateWannago(
      {required int wannagoId, required bool declined}) async {
    final mutation = UpdateWannagoMutation(
        variables: UpdateWannagoArguments(id: wannagoId, declined: declined));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }
    print('update wannago $result');
    final root = result.data?['updateWannago'];
    final data = root?['ok'] ?? false;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> deleteEvent(int eventId) async {
    final mutation =
        DeleteEventMutation(variables: DeleteEventArguments(eventId: eventId));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }
    final root = result.data?['deleteEvent'];
    final data = root?['ok'] ?? false;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<bool>> deleteWannago({required int wannagoId}) async {
    final mutation =
        DeleteWannagoMutation(variables: DeleteWannagoArguments(id: wannagoId));
    final result = await graphqlClientService.mutate(mutation);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }
    final root = result.data?['deleteWannago'];
    final data = root?['ok'] ?? false;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<bool>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }

  Future<MyQueryResponse<Event>> event(int eventId) async {
    final query = EventQuery(variables: EventArguments(eventId: eventId));
    final result = await graphqlClientService.query(query);
    if (result.hasException) {
      print('client error ${result.exception?.linkException}');
      result.exception?.graphqlErrors.forEach((element) {
        print(element.message);
      });
    }

    final root = result.data?['event'];
    final data =
        root != null && root['nodes'] != null ? Event.fromGqlData(root?['nodes']) : null;
    final ok = root?['ok'] ?? false;
    final errors = root?['errors'];

    return MyQueryResponse<Event>(
      ok: ok,
      data: data,
      errors: errors,
    );
  }
}
