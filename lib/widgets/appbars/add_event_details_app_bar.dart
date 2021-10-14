import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/providers/graphql/create_event_query.dart';
import 'package:whatado/providers/graphql/interest_provider.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';

class AddEventDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
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
            onPressed: !ready || eventState.postLoading
                ? null
                : () async {
                    eventState.postLoading = true;
                    if (userState.user == null) {
                      print('fail: user null');
                      await userState.getUser();
                    }

                    try {
                      String? downloadUrl;
                      if (!eventState.textMode) {
                        downloadUrl = await cloudStorageService.uploadImage(
                          await eventState.cropResizeImage(
                              MediaQuery.of(context).size.width),
                          userState.user!.id,
                        );
                      }

                      if (!eventState.textMode && downloadUrl == null) {
                        print('fail: downloadUrl null');
                        eventState.clear();
                        eventState.failed = true;
                        eventState.postLoading = false;
                        return;
                      }

                      // frankenstein the time from user input
                      final prefixSplit =
                          eventState.dateController.text.split(" ");
                      final dateSplit = prefixSplit[1].split("-");
                      final timeSplit =
                          eventState.timeController.text.split(" ");
                      final isPm = timeSplit[1] == "PM";
                      final hourSplit = timeSplit[0].split(":");
                      final hour = int.parse(hourSplit[0]) + (isPm ? 12 : 0);
                      final finalTime = DateTime.parse(
                          '${dateSplit[2]}-${dateSplit[0].padLeft(2, '0')}-${dateSplit[1].padLeft(2, '0')} ${hour.toString().padLeft(2, '0')}:${hourSplit[1]}:00');

                      // create interests
                      final interestsProvider = InterestGqlProvider();
                      final interests =
                          await interestsProvider.create(interestsText: [
                        ...(eventState.customInterests
                            .map((i) => i.title)
                            .toList()),
                        if (eventState.selectedInterests.isNotEmpty)
                          ...(eventState.selectedInterests
                              .map((i) => i.title)
                              .toList())
                      ]);

                      // make query
                      final query = CreateEventGqlQuery();
                      await query.create(
                          eventInput: EventInput(
                        creatorId: userState.user!.id,
                        description: eventState.descriptionController.text,
                        filterAge: json.encode([
                          eventState.filterAgeStart,
                          eventState.filterAgeEnd
                        ]),
                        filterGender: eventState.selectedGender,
                        filterLocation: '', // not yet used
                        filterRadius: 5, // not yet used
                        location: eventState.locationController.text,
                        relatedInterestsIds: List<int>.from(interests.data ??
                            eventState.selectedInterests
                                .map((v) => v.id)
                                .toList()),
                        time: finalTime,
                        pictureUrl: downloadUrl,
                        title: eventState.textMode
                            ? eventState.textModeController.text
                            : eventState.titleController.text,
                        wannagoIds: [],
                        invitedIds: [],
                        // TODO: add group size / tags
                      ));
                    } catch (e) {
                      print(e.toString());
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
