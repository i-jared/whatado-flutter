import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/screens/home/event_details.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/events/inner_event_display.dart';

class MyEventDisplay extends StatelessWidget {
  final Event event;
  MyEventDisplay({required this.event});

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final filteredWannago = event.wannago.where((wannago) =>
        !wannago.declined && !event.invited.map((eu) => eu.id).contains(wannago.user.id));
    final haveWannago =
        event.creator.id == userState.user?.id && filteredWannago.isNotEmpty;
    return InkWell(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => EventDetails(event: event))),
        child: Container(
            height: 150,
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.only(top: 8, bottom: 8, right: 16),
            child: Row(
              children: [
                haveWannago
                    ? Container(
                        margin: EdgeInsets.symmetric(horizontal: 6),
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xfff7941d)),
                      )
                    : const SizedBox(width: 24),
                InnerEventDisplay(event, filteredWannago),
              ],
            )));
  }
}
