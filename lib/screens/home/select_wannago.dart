import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/wannago.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/screens/profile/user_profile.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';

class SelectWannago extends StatelessWidget {
  final Event event;
  final List<Wannago> wannago;
  SelectWannago({required this.event, required this.wannago});

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    Future<void> decide(Wannago wannago, bool accepted) async {
      final provider = EventsGqlProvider();
      if (accepted) {
        await provider.deleteWannago(wannagoId: wannago.id);
        final result = await provider.addInvite(
            eventId: event.id, userId: wannago.user.id);
        if (result.data != null) homeState.updateEvent(result.data as Event);
      } else {
        await provider.updateWannago(wannagoId: wannago.id, declined: true);
      }
    }

    return Scaffold(
      appBar: DefaultAppBar(title: 'Invite'),
      body: ListView(
        children: wannago
            .map((wannago) => ListTile(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              UserProfile(initialUserData: wannago.user))),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(wannago.user.imageUrl),
                  ),
                  title: Text(wannago.user.name),
                  trailing: Container(
                    width: 200,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () async => await decide(wannago, false),
                            icon: Icon(Icons.clear)),
                        IconButton(
                            onPressed: () async => await decide(wannago, true),
                            icon: Icon(Icons.check))
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
