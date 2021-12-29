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
    final filteredWannago = event.wannago.where((wannago) =>
        !wannago.declined &&
        !event.invited.map((eu) => eu.id).contains(wannago.user.id));
    final haveWannago =
        event.creator.id == userState.user?.id && filteredWannago.isNotEmpty;
    final dateFormat = DateFormat('MMM dd, yyyy h:mm a');
    return InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EventDetails(event: event))),
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
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(blurRadius: 10, color: Colors.grey[200]!)
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[50],
                    ),
                    child: Row(
                      children: [
                        Hero(
                          tag: 'event_${event.id}',
                          child: Container(
                            height: 150,
                            width: 150,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: event.imageUrl != null
                                ? CachedNetworkImage(
                                    imageUrl: event.imageUrl!,
                                    fit: BoxFit.cover)
                                : Image.asset("assets/Whatado_Transparent.png"),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  event.title,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
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
                                  Flexible(
                                    child: Text(
                                      event.location,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                ]),
                                if (userState.user?.id == event.creator.id)
                                  Row(children: [
                                    Icon(
                                      Icons.person_outline,
                                      color: Color(0xfff7941d),
                                      size: 16,
                                    ),
                                    const SizedBox(width: 5),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text: "Gonnago ",
                                          style:
                                              TextStyle(color: Colors.black)),
                                      TextSpan(
                                          text: "${event.invited.length}  ",
                                          style: TextStyle(
                                              color: Color(0xfff7941d))),
                                    ])),
                                    Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                          border: Border(
                                              right: BorderSide(
                                                  color: Color(0xfff7941d)))),
                                    ),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text: "  Wannago ",
                                          style:
                                              TextStyle(color: Colors.black)),
                                      TextSpan(
                                          text: "${filteredWannago.length}",
                                          style: TextStyle(
                                              color: Color(0xfff7941d))),
                                    ]))
                                  ])
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
