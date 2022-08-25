import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/public_event.dart';
import 'package:whatado/screens/home/event_details.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/events/leave_button.dart';
import 'package:whatado/widgets/events/join_button.dart';
import 'package:whatado/widgets/events/my_event_button.dart';

class EventTitle extends StatelessWidget {
  final PublicEvent event;
  final bool showButton;
  EventTitle({required this.event, required this.showButton});

  final dateFormat = DateFormat('dd MMMM, yyyy');

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    final userState = Provider.of<UserState>(context);
    final textFormat =
        TextStyle(fontWeight: FontWeight.bold, fontSize: event.imageUrl != null ? 22 : 30);
    if (userState.user == null) return SizedBox.shrink();
    final wannago = event.wannago.map((w) => w.user.id).contains(userState.user!.id);
    final invited = event.invited.map((u) => u.id).contains(userState.user?.id);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(event.title, style: textFormat),
                    SizedBox(height: 5),
                    Text(dateFormat.format(event.time.toLocal()),
                        style: TextStyle(fontSize: 14, color: Colors.grey)),
                  ],
                ),
              ),
              if (showButton)
                Flexible(
                    flex: 3,
                    child: event.creator.id == userState.user?.id
                        ? NoJoinButton(
                            text: 'My Event',
                            onPressed: homeState.myEvents == null ||
                                    !homeState.myEvents!.any((e) => e.id == event.id)
                                ? null
                                : () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EventDetails(
                                            event: homeState.myEvents!
                                                .firstWhere((e) => e.id == event.id)))),
                          )
                        : !wannago && !invited
                            ? JoinButton(event: event)
                            : wannago && !invited
                                ? LeaveButton(event: event)
                                : NoJoinButton(text: 'Going'))
            ]),
      ],
    );
  }
}
