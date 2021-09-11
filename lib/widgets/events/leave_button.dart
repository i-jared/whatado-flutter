import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';

class LeaveButton extends StatelessWidget {
  final Event event;
  LeaveButton({required this.event});
  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    final userState = Provider.of<UserState>(context);
    return ElevatedButton(
        onPressed: () async {
          try {
            final wannago = event.wannago
                .firstWhere((w) => w.user.id == userState.user!.id);
            final provider = EventsGqlProvider();
            await provider.deleteWannago(wannagoId: wannago.id);
            // update the event
            event.wannago = event.wannago
                .where((w) => w.user.id != userState.user!.id)
                .toList();
            homeState.updateEvent(event);
          } catch (e) {
            print(e.toString());
          }
        },
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
            backgroundColor: MaterialStateProperty.all(Color(0xffe85c3f))),
        child: Icon(Icons.check_outlined, size: 15));
  }
}
