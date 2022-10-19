import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/public_event.dart';
import 'package:whatado/screens/home/event_details.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/logger.dart';
import 'package:whatado/widgets/events/event_description.dart';
import 'package:whatado/widgets/events/event_title.dart';
import 'package:whatado/widgets/events/event_top_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';

class EventDisplay extends StatefulWidget {
  final PublicEvent event;
  final bool showButton;
  EventDisplay({required this.event, this.showButton = true});
  createState() => _EventDisplayState();
}

class _EventDisplayState extends State<EventDisplay> {
  final padding = 15.0;
  final sectionSpacing = 7.0;
  final eventSpacing = 15.0;

  late final List<int> invitedUserIds;
  @override
  void initState() {
    super.initState();
    invitedUserIds = widget.event.invited.map((i) => i.id).toList();
  }

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final homeState = Provider.of<HomeState>(context);
    final bool going = invitedUserIds.contains(userState.user?.id) ||
        widget.event.creator.id == userState.user?.id;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: !going || !(homeState.myEvents?.any((e) => e.id == widget.event.id) ?? false)
          ? null
          : () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => EventDetails(
                      event: homeState.myEvents!.firstWhere((e) => e.id == widget.event.id)))),
      child: Container(
        color: AppColors.background,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: sectionSpacing),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: padding),
                child: EventTopBar(event: widget.event)),
            if (widget.event.imageUrl?.isNotEmpty ?? false) SizedBox(height: sectionSpacing),
            if (widget.event.imageUrl?.isNotEmpty ?? false)
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: CachedNetworkImage(
                      imageUrl: widget.event.imageUrl ?? '',
                      placeholder: (context, url) => Shimmer.fromColors(
                          child: Container(height: width, width: width),
                          baseColor: Colors.grey[200] ?? Colors.grey,
                          highlightColor: Colors.white),
                      fit: BoxFit.fitWidth)),
            SizedBox(height: sectionSpacing),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: padding),
                child: EventTitle(event: widget.event, showButton: widget.showButton)),
            SizedBox(height: sectionSpacing),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: padding),
                child: EventDescription(event: widget.event)),
            SizedBox(height: sectionSpacing),
          ],
        ),
      ),
    );
  }
}
