import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/wannago.dart';
import 'package:whatado/state/user_state.dart';

class InnerEventDisplay extends StatelessWidget {
  final Event event;
  final Iterable<Wannago> filteredWannago;

  InnerEventDisplay(this.event, this.filteredWannago);

  Widget build(BuildContext context) {
    final dateFormat = DateFormat('MMM dd, yyyy h:mm a');
    final userState = Provider.of<UserState>(context);
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey[200]!)],
          borderRadius: BorderRadius.circular(20),
          color: AppColors.background,
        ),
        child: Row(
          children: [
            Hero(
              tag: 'event_${event.id}',
              child: Container(
                height: 150,
                width: 150,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: event.imageUrl != null
                    ? CachedNetworkImage(imageUrl: event.imageUrl!, fit: BoxFit.cover)
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
                      overflow: TextOverflow.fade,
                      softWrap: false,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        color: AppColors.primary,
                        size: 16,
                      ),
                      const SizedBox(width: 5),
                      Text(dateFormat.format(event.time))
                    ]),
                    Row(children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: AppColors.primary,
                        size: 16,
                      ),
                      const SizedBox(width: 5),
                      Flexible(
                        child: Text(
                          event.location,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                        ),
                      )
                    ]),
                    if (userState.user?.id == event.creator.id)
                      Row(children: [
                        Icon(
                          Icons.person_outline,
                          color: AppColors.primary,
                          size: 16,
                        ),
                        const SizedBox(width: 5),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Gonnago ", style: TextStyle(color: Colors.black)),
                          TextSpan(
                              text: "${event.invited.length}  ",
                              style: TextStyle(color: AppColors.primary)),
                        ])),
                        Container(
                          height: 20,
                          decoration: BoxDecoration(
                              border:
                                  Border(right: BorderSide(color: AppColors.primary))),
                        ),
                        Flexible(
                          child: RichText(
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "  Wannago ",
                                    style: TextStyle(color: Colors.black)),
                                TextSpan(
                                    text: "${filteredWannago.length}",
                                    style: TextStyle(color: AppColors.primary)),
                              ])),
                        )
                      ])
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
