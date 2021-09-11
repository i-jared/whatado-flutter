import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/events/join_button.dart';
import 'package:whatado/widgets/events/leave_button.dart';
import 'package:whatado/widgets/events/my_event_button.dart';

class EventTitle extends StatelessWidget {
  final Event event;
  final bool showButton;
  EventTitle({required this.event, required this.showButton});

  final dateFormat = DateFormat('dd MMMM, yyyy');

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final textFormat = TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: event.imageUrl!.isNotEmpty ? 22 : 30);
    if (userState.user == null) return SizedBox.shrink();
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
                    Text(dateFormat.format(event.time),
                        style: TextStyle(fontSize: 14, color: Colors.grey)),
                  ],
                ),
              ),
              if (showButton)
                Flexible(
                    flex: 3,
                    child: event.creator.id == userState.user!.id
                        ? MyEventButton()
                        : !event.wannago
                                .map((w) => w.user.id)
                                .contains(userState.user!.id)
                            ? JoinButton(event: event)
                            : LeaveButton(event: event))
            ]),
      ],
    );
  }
}
