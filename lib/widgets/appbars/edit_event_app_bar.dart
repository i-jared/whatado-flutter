import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/forum.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/providers/graphql/forums_provider.dart';
import 'package:whatado/state/edit_event_state.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/utils/logger.dart';
import 'package:whatado/utils/time_tools.dart';

class EditEventAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Event event;
  final Forum? forum;
  EditEventAppBar({required this.event, required this.forum});

  @override
  Size get preferredSize => Size.fromHeight(50.0);

  final dateFormat = DateFormat('EEE, M-d-y');
  final timeFormat = DateFormat('jm');
  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    final editEventState = Provider.of<EditEventState>(context);
    bool disabled = eventDisabled(editEventState) && forumDisabled(editEventState);
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: AppColors.background,
      elevation: 0,
      title: Text('Edit Event', style: TextStyle(fontSize: 23, color: Colors.grey[850])),
      centerTitle: true,
      actions: [
        editEventState.loading
            ? Center(child: CircularProgressIndicator())
            : IconButton(
                onPressed: disabled
                    ? null
                    : () async {
                        editEventState.loading = true;
                        if (!forumDisabled(editEventState)) {
                          // update the forum
                          await updateForum(editEventState, homeState);
                        }
                        if (!eventDisabled(editEventState)) {
                          // update the event
                          await updateEvent(editEventState, homeState);
                        }
                        editEventState.loading = false;
                        Navigator.pop(context);
                      },
                icon: Icon(Icons.save_outlined),
                color: AppColors.primary),
        SizedBox(width: 15),
      ],
    );
  }

  bool forumDisabled(EditEventState editEventState) {
    return (forum != null && editEventState.chatDisabled == forum!.chatDisabled);
  }

  bool eventDisabled(EditEventState editEventState) {
    return (editEventState.locationController.text.isEmpty ||
            editEventState.descriptionController.text.isEmpty ||
            editEventState.titleController.text.isEmpty ||
            editEventState.dateController.text.isEmpty ||
            editEventState.timeController.text.isEmpty) ||
        (editEventState.titleController.text == event.title &&
            editEventState.screened == event.screened &&
            editEventState.locationController.text == event.location &&
            editEventState.descriptionController.text == event.description &&
            editEventState.dateController.text == dateFormat.format(event.time) &&
            editEventState.timeController.text == timeFormat.format(event.time));
  }

  Future<void> updateEvent(EditEventState editEventState, HomeState homeState) async {
    final eventInput = EventFilterInput(
      id: event.id,
      screened: editEventState.screened,
      title: editEventState.titleController.text,
      time: formatMyTime(
          editEventState.dateController.text, editEventState.timeController.text),
      description: editEventState.descriptionController.text,
      location: editEventState.locationController.text,
    );
    final provider = EventsGqlProvider();
    final result = await provider.updateEvent(eventInput);
    if (result.ok) {
      await homeState.myEventsRefresh();
      await homeState.allEventsRefresh();
      BotToast.showText(text: 'Successfully edited event');
    } else {
      BotToast.showText(text: 'Error editing event');
    }
  }

  Future<void> updateForum(EditEventState editEventState, HomeState homeState) async {
    final provider = ForumsGqlProvider();
    final result = await provider.updateForum(
        ForumFilterInput(id: forum!.id, chatDisabled: editEventState.chatDisabled));
    if (result.ok) {
      await homeState.myEventsRefresh();
      BotToast.showText(text: 'Successfully edited event forum');
    } else {
      logger.e(result);
      BotToast.showText(text: 'Error editing event forum');
    }
  }
}
