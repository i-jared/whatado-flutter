import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/screens/home/event_details.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/events/event_display.dart';

class MyEventDisplay extends StatelessWidget {
  final Event event;
  MyEventDisplay({required this.event});

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final haveWannago = event.creator.id == userState.user?.id &&
        event.wannago.any((wannago) => !wannago.declined);
    return InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EventDetails(event: event))),
        child: EventDisplay(
          event: event,
          showButton: false,
        ));
  }
}
