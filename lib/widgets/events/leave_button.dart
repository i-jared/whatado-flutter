import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
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
            final tempIds = event.wannagoIds
                .where((id) => id != userState.user!.id)
                .toList();
            final provider = EventsGqlProvider();
            final eventInput = EventInput(
                id: event.id,
                description: event.description,
                filterAge: '',
                filterGender: event.filterGender,
                filterLocation: '',
                filterRadius: 5,
                invitedIds: event.invitedIds,
                location: event.location,
                relatedInterestsIds: event.relatedInterestIds,
                time: event.time,
                title: event.title,
                wannagoIds: tempIds,
                creatorId: event.creator.id,
                pictureUrl: event.imageUrl);
            final response = await provider.updateEvent(eventInput);
            // update the event
            homeState.updateEvent(response.data as Event);
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
