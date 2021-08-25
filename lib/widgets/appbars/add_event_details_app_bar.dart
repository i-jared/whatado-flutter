import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/providers/graphql/create_event_query.dart';
import 'package:whatado/state/add_event_state.dart';

class AddEventDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    final eventState = Provider.of<AddEventState>(context);
    final ready = eventState.timeController.text.isNotEmpty &&
        eventState.dateController.text.isNotEmpty &&
        eventState.locationController.text.isNotEmpty &&
        (eventState.textMode || eventState.titleController.text.isNotEmpty);

    return AppBar(
      iconTheme: IconThemeData(color: Colors.grey[850]),
      backgroundColor: Colors.grey[50],
      title: Text('Add Event',
          style: TextStyle(fontSize: 23, color: Colors.grey[850])),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: TextButton(
            child: Text('PUBLISH',
                style:
                    TextStyle(color: !ready ? Colors.grey : Color(0xffe85c3f))),
            onPressed: !ready
                ? null
                : () async {
                    final query = CreateEventGqlQuery();
                    //TODO: upload image to cloud
                    final response = await query.create(
                        eventInput: EventInput(
                            creatorId: 1, // TODO: fix these fields
                            description: eventState.descriptionController.text,
                            filterAge: '',
                            filterGender: Gender.both,
                            filterLocation: '',
                            filterRadius: 5,
                            location: eventState.locationController.text,
                            relatedInterestsIds: [],
                            time: DateTime.now(),
                            pictureUrl: '',
                            title: eventState.titleController.text));
                    // TODO: load screen transition to success or failure message
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
          ),
        ),
      ],
      centerTitle: true,
      elevation: 0.0,
    );
  }
}
