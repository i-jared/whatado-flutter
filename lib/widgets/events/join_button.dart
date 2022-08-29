import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/public_event.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/screens/entry/choose_interests.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/dialogs.dart';
import 'package:whatado/utils/logger.dart';

class JoinButton extends StatefulWidget {
  final PublicEvent event;
  JoinButton({required this.event});
  @override
  State<StatefulWidget> createState() => _JoinButtonState();
}

class _JoinButtonState extends State<JoinButton> {
  late bool loading;
  late PublicEvent event;
  @override
  void initState() {
    super.initState();
    loading = false;
    event = widget.event;
  }

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    final userState = Provider.of<UserState>(context);
    return ElevatedButton(
        onPressed: () async {
          try {
            if (userState.user == null) return;
            if (!userState.setupComplete()) {
              if (!await runOnboarding(context, userState.setupStep())) {
                return;
              }
            }
            final provider = EventsGqlProvider();
            setState(() => loading = true);
            final result = await provider.addWannago(eventId: event.id, userId: userState.user!.id);
            // update the event
            if (result.ok) {
              homeState.updateEvent(result.data as PublicEvent);
              setState(() => event = result.data as PublicEvent);
            }
            setState(() => loading = false);
          } catch (e) {
            logger.e(e.toString());
          }
        },
        style: ButtonStyle(
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
            backgroundColor: MaterialStateProperty.all(AppColors.primary)),
        child: loading
            ? Container(
                height: 20,
                width: 20,
                child: Center(child: CircularProgressIndicator(color: Colors.white)))
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Join', style: TextStyle(fontSize: 15)),
                  if (event.screened) Icon(Icons.add, size: 15),
                ],
              ));
  }
}
