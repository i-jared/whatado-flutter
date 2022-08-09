import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/event.dart';

class LeaveButton extends StatelessWidget {
  final Event event;
  LeaveButton({required this.event});
  @override
  Widget build(BuildContext context) {
    // final homeState = Provider.of<HomeState>(context);
    // final userState = Provider.of<UserState>(context);
    return ElevatedButton(
        onPressed: null,
        //  () async {
        // try {
        // if (userState.user == null) return;
        // final wannago = event.wannago
        // .firstWhere((w) => w.user.id == userState.user!.id);
        // final provider = EventsGqlProvider();
        // await provider.deleteWannago(wannagoId: wannago.id);
        // update the event
        // event.wannago = event.wannago
        // .where((w) => w.user.id != userState.user!.id)
        // .toList();
        // homeState.updateEvent(event);
        // } catch (e) {
        // print(e.toString());
        // }
        // },
        style: ButtonStyle(
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
            backgroundColor: MaterialStateProperty.all(AppColors.primary)),
        child: Icon(Icons.check_outlined, size: 15, color: Colors.white));
  }
}
