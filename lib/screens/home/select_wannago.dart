import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/wannago.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/screens/profile/user_profile.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';

class SelectWannago extends StatefulWidget {
  final Event event;
  SelectWannago({required this.event});
  @override
  State<StatefulWidget> createState() => _SelectWannagoState();
}

class _SelectWannagoState extends State<SelectWannago> {
  late bool loading;

  @override
  void initState() {
    super.initState();
    loading = false;
  }

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    final event =
        homeState.myEvents!.firstWhere((e) => e.id == widget.event.id);
    List<Wannago> wannago = event.wannago
        .where((w) =>
            !w.declined && !event.invited.map((i) => i.id).contains(w.user.id))
        .toList();
    Future<void> decide(Wannago w, bool accepted) async {
      setState(() => loading = true);
      final provider = EventsGqlProvider();
      if (accepted) {
        final result =
            await provider.addInvite(eventId: event.id, userId: w.user.id);
        if (result.ok) {
          final tempEvent = result.data!;
          homeState.updateEvent(tempEvent);
          homeState.updateMyEvent(tempEvent);
        }
      } else {
        final result =
            await provider.updateWannago(wannagoId: w.id, declined: true);
        if (result.ok) {
          final i = event.wannago.indexWhere((i) => i.id == w.id);
          final Wannago x = event.wannago[i];
          x.declined = true;
          final Event tempEvent = event..wannago[i] = x;
          homeState.updateEvent(tempEvent);
          homeState.updateMyEvent(tempEvent);
        }
      }
      setState(() => loading = false);
    }

    return Scaffold(
      appBar: DefaultAppBar(title: 'Invite'),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : wannago.isEmpty
              ? Center(child: Text('no one left'))
              : ListView(
                  children: wannago
                      .map((wannago) => ListTile(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        UserProfile(user: wannago.user))),
                            leading: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(wannago.user.photoUrls.first),
                            ),
                            title: Text(wannago.user.name),
                            trailing: Container(
                              width: 200,
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () async =>
                                          await decide(wannago, false),
                                      icon: Icon(Icons.clear)),
                                  IconButton(
                                      onPressed: () async =>
                                          await decide(wannago, true),
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
