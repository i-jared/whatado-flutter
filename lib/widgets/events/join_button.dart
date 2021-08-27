import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';

class JoinButton extends StatelessWidget {
  final Event event;
  JoinButton({required this.event});
  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    final userState = Provider.of<UserState>(context);
    return ElevatedButton(
        onPressed: () async {
          try {
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
                wannagoIds: [...event.wannagoIds, userState.user!.id],
                creatorId: event.creator.id,
                pictureUrl: event.imageUrl);
            final result = await provider.updateEvent(eventInput);
            // update the event
            homeState.updateEvent(result.data as Event);
          } catch (e) {
            print(e.toString());
          }
        },
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
            backgroundColor: MaterialStateProperty.all(Color(0xffe85c3f))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Join', style: TextStyle(fontSize: 15)),
            Icon(Icons.add, size: 15),
          ],
        ));
  }
}
