import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/widgets/events/event_description.dart';
import 'package:whatado/widgets/events/event_title.dart';
import 'package:whatado/widgets/events/event_top_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';

class EventDisplay extends StatelessWidget {
  final Event event;
  final bool showButton;
  EventDisplay({required this.event, this.showButton = true});

  final padding = 15.0;
  final sectionSpacing = 7.0;
  final eventSpacing = 15.0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: sectionSpacing),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: EventTopBar(event: event)),
          if (event.imageUrl?.isNotEmpty ?? false)
            SizedBox(height: sectionSpacing),
          if (event.imageUrl?.isNotEmpty ?? false)
            Container(
                width: MediaQuery.of(context).size.width,
                child: CachedNetworkImage(
                    imageUrl: event.imageUrl ?? '',
                    placeholder: (context, url) => Shimmer.fromColors(
                        child: Container(height: width, width: width),
                        baseColor: Colors.grey[200] ?? Colors.grey,
                        highlightColor: Colors.white),
                    fit: BoxFit.fitWidth)),
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
