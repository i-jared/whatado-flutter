import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/screens/home/event_details.dart';
import 'package:whatado/state/user_state.dart';

class MyEventDisplay extends StatelessWidget {
  final Event event;
  MyEventDisplay({required this.event});

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final haveWannago = event.creator.id == userState.user?.id &&
        event.wannago.any((wannago) => !wannago.declined);
    final dateFormat = DateFormat('MMM dd, yyyy h:mm a');
    return InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EventDetails(event: event))),
        child: Container(
            height: 150,
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
                Flexible(
                    child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child:
                          event.imageUrl != null && event.imageUrl!.isNotEmpty
                              ? CachedNetworkImage(imageUrl: event.imageUrl!)
                              : Image.asset("assets/Whatado_Transparent.png"),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            event.title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Row(children: [
                            Icon(
                              Icons.calendar_today_outlined,
                              color: Color(0xfff7941d),
                              size: 16,
                            ),
                            const SizedBox(width: 5),
                            Text(dateFormat.format(event.time))
                          ]),
                          Row(children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Color(0xfff7941d),
                              size: 16,
                            ),
                            const SizedBox(width: 5),
                            Text(event.location)
                          ]),
                          if (userState.user?.id == event.creator.id)
                            Row(children: [
                              Icon(
                                Icons.person_outline,
                                color: Color(0xfff7941d),
                                size: 16,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                  "${event.invited.length} gonnago, ${event.wannago.length} wannago")
                            ])
                        ],
                      ),
                    )
                  ],
                ))
              ],
            )));
  }
}
