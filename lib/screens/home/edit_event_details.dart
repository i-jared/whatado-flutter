import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:geojson/geojson.dart';
import 'package:geopoint/geopoint.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/forum.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/providers/graphql/forums_provider.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/edit_event_state.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/dialogs.dart';
import 'package:whatado/utils/extensions/text.dart';
import 'package:whatado/utils/logger.dart';
import 'package:whatado/utils/time_tools.dart';
import 'package:whatado/widgets/appbars/saving_app_bar.dart';
import 'package:whatado/widgets/buttons/rounded_delete_button.dart';
import 'package:whatado/widgets/dialog/confirm_cancel_dialog.dart';
import 'package:whatado/widgets/events/shadow_box.dart';
import 'package:whatado/widgets/general/generic_page.dart';
import 'package:whatado/widgets/input/labeled_outline_text_field.dart';

class EditEventDetails extends StatelessWidget {
  final Event event;
  final Forum? forum;
  EditEventDetails({required this.event, this.forum});
  final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final headingSpacing = 10.0;
  final padding = 20.0;
  final sectionSpacing = 15.0;
  final dateFormat = DateFormat('EEE, M-d-y');
  final timeFormat = DateFormat('jm');

  @override
  Widget build(BuildContext context) {
    final editEventState = context.watch<EditEventState>();
    final userState = context.watch<UserState>();
    final homeState = context.watch<HomeState>();
    return GenericPage(
        appBar: SavingAppBar(
            title: 'Edit Event',
            disabled: eventDisabled(editEventState) && forumDisabled(editEventState),
            onSave: () async {
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
            }),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: sectionSpacing),
            LabeledOutlineTextField(
              controller: editEventState.titleController,
              label: 'Title',
              hintText: 'Enter title',
            ),
            SizedBox(height: sectionSpacing),
            LabeledOutlineTextField(
              controller: editEventState.descriptionController,
              label: 'Description',
              hintText: 'Enter description',
              maxLines: null,
            ),
            SizedBox(height: sectionSpacing),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: editEventState.coordinates == null
                        ? AppColors.unfocused
                        : AppColors.primary,
                  ),
                  borderRadius: BorderRadius.circular(AppRadii.button)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Location', style: TextStyle(color: Colors.grey[700])),
                      SizedBox(width: 5),
                      Tooltip(
                        showDuration: Duration(seconds: 3),
                        preferBelow: false,
                        triggerMode: TooltipTriggerMode.tap,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        padding: EdgeInsets.all(8),
                        message: "Location is only visible for invited event members.",
                        child: Icon(Icons.help_outline, size: 15, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  TypeAheadFormField(
                    direction: AxisDirection.up,
                    suggestionsBoxDecoration: SuggestionsBoxDecoration(
                        borderRadius: BorderRadius.circular(AppRadii.button), offsetX: 30),
                    noItemsFoundBuilder: (context) => SizedBox.shrink(),
                    loadingBuilder: (context) => SizedBox.shrink(),
                    suggestionsBoxVerticalOffset: 40,
                    onSuggestionSelected: (Map<String, dynamic> place) async {
                      editEventState.locationController.text = place['description'];
                      final location = await placesService.placeDetails(place['place_id']);
                      if (location['lat'] == null || location['lng'] == null) {
                        BotToast.showText(text: 'Invalid location; please make another selection.');
                        editEventState.locationController.text = '';
                      }
                      editEventState.coordinates = GeoJsonPoint(
                          geoPoint:
                              GeoPoint(latitude: location['lat'], longitude: location['lng']));
                    },
                    suggestionsCallback: (String pattern) async {
                      final result =
                          await placesService.findPlace(pattern, userState.user?.location);
                      return result;
                    },
                    itemBuilder: (context, Map<String, dynamic> place) =>
                        ListTile(title: Text(place['description'])),
                    textFieldConfiguration: TextFieldConfiguration(
                      maxLines: null,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter location',
                        contentPadding: EdgeInsets.symmetric(vertical: 12),
                      ),
                      controller: editEventState.locationController,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: sectionSpacing),
            ShadowBox(
              child: TableCalendar(
                  availableGestures: AvailableGestures.none,
                  headerStyle:
                      HeaderStyle(formatButtonVisible: false, headerPadding: EdgeInsets.zero),
                  daysOfWeekHeight: 50,
                  daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: const TextStyle(
                          color: const Color(0xFF4F4F4F), fontWeight: FontWeight.bold),
                      weekendStyle: const TextStyle(
                          color: const Color(0xFF6A6A6A), fontWeight: FontWeight.bold),
                      dowTextFormatter: (day, locale) => DateFormat.E(locale).format(day)),
                  calendarBuilders: CalendarBuilders(
                    headerTitleBuilder: (context, day) => Center(
                        child: Text(DateFormat('MMMM y').format(day),
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
                    todayBuilder: (context, day, focusedDay) =>
                        Container(child: Center(child: Text(day.day.toString()))),
                    selectedBuilder: (context, day, focusedDay) => Container(
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(AppRadii.button)),
                        child: Center(
                            child:
                                Text(day.day.toString(), style: TextStyle(color: Colors.white)))),
                  ),
                  selectedDayPredicate: (day) =>
                      dateFormat.format(day) == dateFormat.format(editEventState.selectedDate),
                  onDaySelected: (selectedDay, focusedDay) =>
                      editEventState.selectedDate = selectedDay,
                  currentDay: null,
                  focusedDay: editEventState.selectedDate,
                  firstDay: DateTime.now(),
                  lastDay: DateTime.now().add(Duration(days: 365))),
            ),
            SizedBox(height: sectionSpacing),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: AppColors.primary,
                  ),
                  borderRadius: BorderRadius.circular(AppRadii.button)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Time', style: TextStyle(color: Colors.grey[700])),
                  TextFormField(
                    readOnly: true,
                    onTap: () async {
                      final timeofday = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay(hour: event.time.hour, minute: event.time.minute));
                      final now = DateTime.now();
                      if (timeofday != null)
                        editEventState.timeController.text = timeFormat.format(DateTime(
                            now.year, now.month, now.day, timeofday.hour, timeofday.minute));
                    },
                    controller: editEventState.timeController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Event Time',
                        suffixIcon:
                            Icon(Icons.schedule_rounded, size: 30, color: AppColors.primary)),
                    maxLines: null,
                  ),
                ],
              ),
            ),
            SizedBox(height: sectionSpacing),
            if (event.privacy == Privacy.public)
              ShadowBox(
                child: Column(
                  children: [
                    Row(
                      children: [
                        CupertinoSwitch(
                          onChanged: (newVal) => editEventState.screened = newVal,
                          value: editEventState.screened,
                          activeColor: AppColors.primary,
                        ),
                        SizedBox(width: 20),
                        Text('Screen Event Members').semibold(),
                      ],
                    ),
                    if (editEventState.chatDisabled != null)
                      Row(
                        children: [
                          Switch(
                            onChanged: (newVal) => editEventState.chatDisabled = !newVal,
                            value: !editEventState.chatDisabled!,
                            activeColor: AppColors.primary,
                          ),
                          SizedBox(width: 20),
                          Text('Chat Open').semibold(),
                        ],
                      ),
                  ],
                ),
              ),
            RoundedDeleteButton(
                onPressed: () => showMyDialog(
                    context,
                    ConfirmCancelDialog.async(
                        title: 'Delete Event?',
                        body:
                            'Are you sure you want to delete the event? This will delete the event and chat for all members.',
                        confirmText: 'Delete',
                        onConfirmAsync: () async {
                          final provider = EventsGqlProvider();
                          final result = await provider.deleteEvent(event.id);
                          if (result.ok) {
                            await homeState.myEventsRefresh();
                            Navigator.popUntil(context, (route) => route.isFirst);
                            BotToast.showText(text: "Successfully deleted event");
                          } else {
                            BotToast.showText(text: "Error deleting event");
                          }
                        })),
                text: 'Delete'),
            SizedBox(height: sectionSpacing),
          ]),
        )));
  }

  bool forumDisabled(EditEventState editEventState) {
    return (forum != null && editEventState.chatDisabled == forum!.chatDisabled);
  }

  bool eventDisabled(EditEventState editEventState) {
    return (editEventState.locationController.text.isEmpty ||
            editEventState.descriptionController.text.isEmpty ||
            editEventState.titleController.text.isEmpty ||
            editEventState.timeController.text.isEmpty) ||
        (editEventState.titleController.text == event.title &&
            editEventState.screened == event.screened &&
            editEventState.locationController.text == event.location &&
            editEventState.descriptionController.text == event.description &&
            editEventState.timeController.text == timeFormat.format(event.time));
  }

  Future<void> updateEvent(EditEventState editEventState, HomeState homeState) async {
    final eventInput = EventFilterInput(
      id: event.id,
      screened: editEventState.screened,
      title: editEventState.titleController.text,
      time: formatMyTime(
          dateFormat.format(editEventState.selectedDate), editEventState.timeController.text),
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
      logger.e(result);
      BotToast.showText(text: 'Error editing event');
    }
  }

  Future<void> updateForum(EditEventState editEventState, HomeState homeState) async {
    final provider = ForumsGqlProvider();
    final result = await provider
        .updateForum(ForumFilterInput(id: forum!.id, chatDisabled: editEventState.chatDisabled));
    if (result.ok) {
      await homeState.myEventsRefresh();
      BotToast.showText(text: 'Successfully edited event forum');
    } else {
      logger.e(result);
      BotToast.showText(text: 'Error editing event forum');
    }
  }
}
