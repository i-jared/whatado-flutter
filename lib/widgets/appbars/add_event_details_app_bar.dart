import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/providers/graphql/create_event_query.dart';
import 'package:whatado/providers/graphql/interest_provider.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';

class AddEventDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    final eventState = Provider.of<AddEventState>(context);
    final userState = Provider.of<UserState>(context);
    final homeState = Provider.of<HomeState>(context);
    final ready = eventState.timeController.text.isNotEmpty &&
        eventState.dateController.text.isNotEmpty &&
        eventState.locationController.text.isNotEmpty &&
        eventState.coordinates != null &&
        (eventState.textMode || eventState.titleController.text.isNotEmpty) &&
        (eventState.privacy != Privacy.private || eventState.selectedUsers.isNotEmpty) &&
        (eventState.privacy != Privacy.group || eventState.selectedGroup != null);

    return AppBar(
      iconTheme: IconThemeData(color: Colors.grey[850]),
      backgroundColor: AppColors.background,
      title: Text('Add Event', style: TextStyle(fontSize: 23, color: Colors.grey[850])),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: TextButton(
            child: eventState.postLoading
                ? CircularProgressIndicator()
                : Text('Publish',
                    style: TextStyle(color: !ready ? Colors.grey : AppColors.primary)),
            onPressed: !ready || eventState.postLoading
                ? null
                : () async {
                    await eventState.postEvent(
                        userState.user!.id,
                        MediaQuery.of(context).size.width,
                        homeState.getMyEvents,
                        homeState.getMyForums);
                  },
          ),
        ),
      ],
      centerTitle: true,
      elevation: 0.0,
    );
  }
}
