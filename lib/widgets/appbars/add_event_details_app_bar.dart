import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/providers/graphql/create_event_query.dart';
import 'package:whatado/providers/graphql/interest_provider.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/time_tools.dart';

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
        (eventState.textMode || eventState.titleController.text.isNotEmpty) &&
        (eventState.privacy != Privacy.private || eventState.selectedUsers.isNotEmpty) &&
        (eventState.privacy != Privacy.group || eventState.selectedGroup != null);

    return AppBar(
      iconTheme: IconThemeData(color: Colors.grey[850]),
      backgroundColor: Colors.grey[50],
      title: Text('Add Event', style: TextStyle(fontSize: 23, color: Colors.grey[850])),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: TextButton(
            child: Text('PUBLISH',
                style: TextStyle(color: !ready ? Colors.grey : Color(0xfff7941d))),
            onPressed: !ready || eventState.postLoading
                ? null
                : () async {
                    if (eventState.postLoading) return;
                    eventState.postLoading = true;
                    if (userState.user == null) {
                      await userState.getUser();
                    }

                    try {
                      String? downloadUrl;
                      if (!eventState.textMode) {
                        downloadUrl = await cloudStorageService.uploadImage(
                          await eventState
                              .cropResizeImage(MediaQuery.of(context).size.width),
                          userState.user!.id,
                        );
                      }

                      if (!eventState.textMode && downloadUrl == null) {
                        eventState.clear();
                        eventState.failed = true;
                        eventState.postLoading = false;
                        return;
                      }

                      // frankenstein the time from user input
                      final finalTime = formatMyTime(
                          eventState.dateController.text, eventState.timeController.text);
                      // create interests
                      final interestsProvider = InterestGqlProvider();
                      final interests = await interestsProvider.create(interestsText: [
                        ...(eventState.customInterests.map((i) => i.title).toList()),
                        if (eventState.selectedInterests.isNotEmpty)
                          ...(eventState.selectedInterests.map((i) => i.title).toList())
                      ]);

                      // make query
                      final query = CreateEventGqlQuery();
                      await query.create(
                          eventInput: EventInput(
                        creatorId: userState.user!.id,
                        description: eventState.descriptionController.text,
                        filterMinAge: eventState.filterAgeStart.toInt(),
                        filterMaxAge: eventState.filterAgeEnd.toInt(),
                        filterGender: eventState.selectedGender,
                        filterLocation: '', // not yet used
                        filterRadius: 5, // not yet used
                        privacy: eventState.privacy,
                        location: eventState.locationController.text,
                        coordinates: eventState.coordinates,
                        relatedInterestsIds: List<int>.from(interests.data ??
                            eventState.selectedInterests.map((v) => v.id).toList()),
                        time: finalTime,
                        pictureUrl: downloadUrl,
                        title: eventState.textMode
                            ? eventState.textModeController.text
                            : eventState.titleController.text,
                        wannagoIds: [],
                        groupId: eventState.selectedGroup?.id,
                        invitedIds: eventState.privacy == Privacy.group
                            ? eventState.selectedGroup!.users.map((u) => u.id).toList()
                            : eventState.selectedUsers.map((u) => u.id).toList(),
                      ));
                    } catch (e) {
                      eventState.clear();
                      eventState.failed = true;
                      eventState.postLoading = false;
                      return;
                    }
                    await homeState.getMyEvents();
                    await homeState.getMyForums();
                    eventState.clear();
                    eventState.succeeded = true;
                    eventState.postLoading = false;
                  },
          ),
        ),
      ],
      centerTitle: true,
      elevation: 0.0,
    );
  }
}
