import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/state/edit_event_state.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/utils/time_tools.dart';

class EditEventAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Event event;
  EditEventAppBar({required this.event});

  @override
  Size get preferredSize => Size.fromHeight(50.0);

  final dateFormat = DateFormat('EEE, M-d-y');
  final timeFormat = DateFormat('jm');
  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    final editEventState = Provider.of<EditEventState>(context);
    bool disabled = (editEventState.locationController.text.isEmpty ||
            editEventState.descriptionController.text.isEmpty ||
            editEventState.titleController.text.isEmpty ||
            editEventState.dateController.text.isEmpty ||
            editEventState.timeController.text.isEmpty) ||
        (editEventState.titleController.text == event.title &&
            editEventState.locationController.text == event.location &&
            editEventState.descriptionController.text == event.description &&
            editEventState.dateController.text ==
                dateFormat.format(event.time) &&
            editEventState.timeController.text ==
                timeFormat.format(event.time));
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.grey[50],
      elevation: 0,
      title: Text('Edit Event',
          style: TextStyle(fontSize: 23, color: Colors.grey[850])),
      centerTitle: true,
      actions: [
        editEventState.loading
            ? Center(child: CircularProgressIndicator())
            : IconButton(
                onPressed: disabled
                    ? null
                    : () async {
                        editEventState.loading = true;
                        final eventInput = EventFilterInput(
                          id: event.id,
                          title: editEventState.titleController.text,
                          time: formatMyTime(editEventState.dateController.text,
                              editEventState.timeController.text),
                          description:
                              editEventState.descriptionController.text,
                          location: editEventState.locationController.text,
                        );
                        final provider = EventsGqlProvider();
                        final result = await provider.updateEvent(eventInput);
                        if (result.ok) {
                          await homeState.myEventsRefresh();
                          await homeState.allEventsRefresh();
                        }
                        editEventState.loading = false;
                        Navigator.pop(context);
                      },
                icon: Icon(Icons.save_outlined),
                color: Color(0xfff7941d)),
        SizedBox(width: 15),
      ],
    );
  }
}
