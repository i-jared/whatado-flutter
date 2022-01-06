import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/wannago.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';
import 'package:whatado/widgets/events/my_event_display.dart';
import 'package:whatado/widgets/users/user_list_item.dart';

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

    final wannagoWidgets =
        List<Widget>.generate(max(0, wannago.length * 2 - 1), (i) {
      if (i.isOdd) return Divider();
      final w = wannago[i ~/ 2];
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            UserListItem(w.user),
            Container(
              child: Row(
                children: [
                  IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () async => await decide(w, false),
                      icon: Icon(Icons.cancel_outlined),
                      iconSize: 40,
                      color: Color(0xfff7941d)),
                  IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () async => await decide(w, true),
                      icon: Icon(Icons.check_circle_outline_outlined),
                      iconSize: 40,
                      color: Color(0xfff7941d)),
                ],
              ),
            ),
          ],
        ),
      );
    });

    return Container(
      color: Colors.grey[50],
      child: SafeArea(
        child: Scaffold(
          appBar: DefaultAppBar(title: 'Invite'),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IgnorePointer(child: MyEventDisplay(event: event)),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text("Invite People",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              ),
              SizedBox(height: 10),
              Expanded(
                  child: wannago.isEmpty
                      ? Center(child: Text('No one left'))
                      : loading
                          ? Center(child: CircularProgressIndicator())
                          : Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              child: ListView(children: wannagoWidgets),
                            )),
            ],
          ),
        ),
      ),
    );
  }
}
