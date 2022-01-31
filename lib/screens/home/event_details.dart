import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/screens/add_event/add_friends.dart';
import 'package:whatado/screens/home/select_wannago.dart';
import 'package:whatado/screens/home/user_list_page.dart';
import 'package:whatado/screens/profile/user_profile.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/event_app_bar.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/buttons/shaded_icon.dart';
import 'package:whatado/widgets/events/picture_waterfall.dart';
import 'package:whatado/widgets/users/user_avatar.dart';

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
    final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.w400);
    final headingSpacing = 10.0;
    final padding = 30.0;
    final sectionSpacing = 35.0;
    final dateFormat = DateFormat('dd MMMM, yyyy h:mm a');
    final event = homeState.myEvents?.firstWhere((e) => e.id == widget.event.id,
            orElse: () => widget.event) ??
        widget.event;
    final wannago = event.wannago
        .where((w) =>
            !w.declined && !event.invited.map((i) => i.id).contains(w.user.id))
        .toList();
    final wannagoUsers = wannago.map((w) => w.user).toList();

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
                    if (event.imageUrl != null)
                      Padding(
                        padding: EdgeInsets.only(top: sectionSpacing),
                        child: Hero(
                          tag: 'event_${event.id}',
                          child: Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              child: CachedNetworkImage(
                                imageUrl: event.imageUrl!,
                                placeholder: (context, _) => Shimmer.fromColors(
                                  baseColor: Colors.grey[200]!,
                                  highlightColor: Colors.white,
                                  child: Container(
                                      color: Colors.grey,
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.width),
                                ),
                              )),
                        ),
                      ),
                    SizedBox(height: headingSpacing),
                    Text(event.title,
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold)),
                    SizedBox(height: headingSpacing),
                    Text(event.description),
                    SizedBox(height: headingSpacing),
                    Divider(),
                    SizedBox(height: headingSpacing),
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (event.creator.id != userState.user?.id) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => UserProfile(
                                                user: event.creator))).then(
                                        (_) async {
                                      await Future.delayed(
                                          Duration(milliseconds: 500));
                                      SystemChrome.setSystemUIOverlayStyle(
                                          SystemUiOverlayStyle(
                                        statusBarBrightness: Brightness.dark,
                                        statusBarIconBrightness:
                                            Brightness.dark,
                                        systemNavigationBarColor:
                                            Colors.grey[50],
                                        statusBarColor: Colors.transparent,
                                      ));
                                    });
                                  }
                                },
                                child: UserAvatar(
                                    url: event.creator.photoUrls.isEmpty
                                        ? null
                                        : event.creator.photoUrls.first,
                                    radius: 25),
                              ),
                              SizedBox(width: 10),
                              Flexible(
                                child: Text(event.creator.name,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        ),
                        Text("Organizer", style: headingStyle)
                      ],
                    ),
                    SizedBox(height: headingSpacing),
                    Divider(),
                    SizedBox(height: headingSpacing),
                    Row(
                      children: [
                        ShadedIcon(
                            icon: Icons.calendar_today_outlined,
                            width: 50,
                            iconSize: 25),
                        SizedBox(width: 10),
                        Text(dateFormat.format(event.time),
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                    SizedBox(height: headingSpacing),
                    Divider(),
                    SizedBox(height: headingSpacing),
                    InkWell(
                      onTap: event.invited.isEmpty
                          ? null
                          : () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      UserListPage(
                                          title: "Gonnago",
                                          users: event.invited))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Container(
                                height: 40,
                                child: event.invited.isEmpty
                                    ? Container(
                                        width: 40,
                                        alignment: Alignment.center,
                                        child: Text("--",
                                            style: TextStyle(fontSize: 30)),
                                      )
                                    : PictureWaterfall(
                                        radius: 20,
                                        loading: false,
                                        users: event.invited)),
                          ),
                          Text('Gonnago', style: headingStyle)
                        ],
                      ),
                    ),
                    SizedBox(height: headingSpacing),
                    if (event.creator.id == userState.user?.id)
                      InkWell(
                        onTap: wannago.isEmpty
                            ? null
                            : () async {
                                await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SelectWannago(event: event)));
                              },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            wannagoUsers.isEmpty
                                ? Container(
                                    width: 40,
                                    alignment: Alignment.center,
                                    child: Text("--",
                                        style: TextStyle(fontSize: 30)),
                                  )
                                : PictureWaterfall(
                                    radius: 20,
                                    loading: false,
                                    users: wannagoUsers),
                            Text('Wannago', style: headingStyle)
                          ],
                        ),
                      ),
                    if (event.creator.id == userState.user?.id)
                      TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddFriends(
                                      eventId: event.id,
                                      invitedUsers: event.invited))),
                          child: Text('add friends',
                              style: TextStyle(color: Color(0xff0073ab)))),
                    Divider(),
                    SizedBox(height: headingSpacing),
                    Row(
                      children: [
                        ShadedIcon(
                            icon: Icons.location_on_outlined,
                            width: 50,
                            iconSize: 25),
                        SizedBox(width: 10),
                        Flexible(
                            child: Text(event.location,
                                style: TextStyle(fontSize: 18))),
                      ],
                    ),
                    SizedBox(height: headingSpacing),
                    Divider(),
                    SizedBox(height: headingSpacing),
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
