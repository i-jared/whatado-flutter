import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/screens/home/select_wannago.dart';
import 'package:whatado/screens/profile/user_profile.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/event_app_bar.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';

class EventDetails extends StatefulWidget {
  final Event event;
  EventDetails({required this.event});

  @override
  State<StatefulWidget> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  late bool expanded;
  @override
  void initState() {
    super.initState();
    expanded = false;
  }

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    final userState = Provider.of<UserState>(context);
    final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    final headingSpacing = 10.0;
    final padding = 30.0;
    final sectionSpacing = 35.0;
    final circleSpacing = 10.0;
    final dateFormat = DateFormat('dd MMMM, yyyy HH:mm');
    final circleRadius = (MediaQuery.of(context).size.width -
            padding * 2.0 -
            circleSpacing * 2.0) /
        6.0;
    final event = homeState.myEvents?.firstWhere((e) => e.id == widget.event.id,
            orElse: () => widget.event) ??
        widget.event;
    final wannago = event.wannago
        .where((w) =>
            !w.declined && !event.invited.map((i) => i.id).contains(w.user.id))
        .toList();

    final removeUser = (EventUser user) => userState.user?.id ==
                event.creator.id &&
            userState.user?.id != user.id
        ? () => showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                    title: Text('Remove from event?'),
                    content: Text(
                        'Are you sure you want to remove ${user.name} from the event and chat?'),
                    actions: [
                      TextButton(
                          child: Text("Cancel"),
                          onPressed: () => Navigator.pop(context)),
                      TextButton(
                        child: Text("Remove"),
                        onPressed: () async {
                          final provider = EventsGqlProvider();
                          final result = await provider.removeInvite(
                              eventId: event.id, userId: userState.user!.id);
                          if (result.ok) {
                            await homeState.myEventsRefresh();
                          }
                          Navigator.pop(context);
                        },
                      ),
                    ]))
        : null;

    return Container(
      color: Colors.grey[50],
      child: SafeArea(
        child: Scaffold(
            appBar: EventAppBar(event: event),
            body: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: sectionSpacing),
                    Text('DESCRIPTION', style: headingStyle),
                    SizedBox(height: headingSpacing),
                    Text(event.description),
                    SizedBox(height: sectionSpacing),
                    Text('LOCATION', style: headingStyle),
                    SizedBox(height: headingSpacing),
                    Text(event.location),
                    SizedBox(height: sectionSpacing),
                    Text('TIME', style: headingStyle),
                    SizedBox(height: headingSpacing),
                    Text(dateFormat.format(event.time.toLocal())),
                    SizedBox(height: sectionSpacing),
                    Text('ORGANIZER', style: headingStyle),
                    SizedBox(height: headingSpacing),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            if (event.creator.id != userState.user?.id) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          UserProfile(user: event.creator)));
                            }
                          },
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                NetworkImage(event.creator.photoUrls.first),
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(event.creator.name)
                      ],
                    ),
                    SizedBox(height: sectionSpacing),
                    Text('ATTENDEES', style: headingStyle),
                    SizedBox(height: headingSpacing),
                    Wrap(
                      spacing: circleSpacing,
                      runSpacing: circleSpacing,
                      children: !expanded && event.invited.length > 5
                          ? [
                              ...event.invited
                                  .map((eventUser) => InkWell(
                                        onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    UserProfile(
                                                        user: eventUser))),
                                        child: CircleAvatar(
                                            radius: circleRadius,
                                            backgroundImage: NetworkImage(
                                                eventUser.photoUrls.first)),
                                      ))
                                  .toList()
                                  .take(5),
                              InkWell(
                                  onTap: () =>
                                      setState(() => expanded = !expanded),
                                  child: CircleAvatar(
                                    radius: circleRadius,
                                    child: Text('+${event.invited.length - 5}',
                                        style: TextStyle(fontSize: 28)),
                                    backgroundColor: Colors.grey[200],
                                  ))
                            ]
                          : event.invited
                              .map((eventUser) => InkWell(
                                    onLongPress: removeUser(eventUser),
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UserProfile(user: eventUser))),
                                    child: CircleAvatar(
                                        radius: circleRadius,
                                        backgroundImage: NetworkImage(
                                            eventUser.photoUrls.first)),
                                  ))
                              .toList(),
                    ),
                    SizedBox(height: sectionSpacing),
                    if (event.creator.id == userState.user?.id)
                      RoundedArrowButton(
                          disabled: wannago.isEmpty,
                          onPressed: () async {
                            await Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SelectWannago(event: event)));
                            // event = homeState.myEvents
                            // .firstWhere((e) => e.id == widget.event.id);
                            // setState(() {});
                          },
                          text: '${wannago.length} people wannago'),
                    SizedBox(height: 50),
                  ]),
            ))),
      ),
    );
  }
}
