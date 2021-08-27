import 'package:flutter/material.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/widgets/events/event_description.dart';
import 'package:whatado/widgets/events/event_title.dart';
import 'package:whatado/widgets/events/event_top_bar.dart';

class EventDisplay extends StatelessWidget {
  final Event event;
  final bool showButton;
  EventDisplay({required this.event, this.showButton = true});

  final padding = 15.0;
  final sectionSpacing = 7.0;
  final eventSpacing = 30.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: eventSpacing),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: EventTopBar(event: event)),
          if (event.imageUrl?.isNotEmpty ?? false)
            SizedBox(height: sectionSpacing),
          if (event.imageUrl?.isNotEmpty ?? false)
            Container(
                width: MediaQuery.of(context).size.width,
                child:
                    Image.network(event.imageUrl ?? '', fit: BoxFit.fitWidth)),
          SizedBox(height: sectionSpacing),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: EventTitle(event: event, showButton: showButton)),
          SizedBox(height: sectionSpacing),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: EventDescription(event: event)),
          SizedBox(height: sectionSpacing),
        ],
      ),
    );
  }
}
