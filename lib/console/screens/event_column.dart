import 'package:flutter/material.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/providers/graphql/events_provider.dart';

class EventColumn extends StatefulWidget {
  @override
  _EventColumnState createState() => _EventColumnState();
}

class _EventColumnState extends State<EventColumn> {
  late bool loading;
  List<Event>? events;

  @override
  void initState() {
    super.initState();
    loading = false;
    init();
  }

  Future<void> init() async {
    final provider = EventsGqlProvider();
    final result = await provider.flaggedEvents();
    setState(() => events = result.data ?? []);
  }

  @override
  Widget build(BuildContext context) {
    if (loading) return CircularProgressIndicator();
    return ListView.builder(
      itemCount: events!.length,
      itemBuilder: (context, i) => ListTile(title: Text(events![i].title)),
    );
  }
}
