import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:geojson/geojson.dart';
import 'package:geopoint/geopoint.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/screens/add_event/target_audience.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/saving_app_bar.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/events/shadow_box.dart';
import 'package:whatado/widgets/general/generic_page.dart';
import 'package:whatado/widgets/input/labeled_outline_text_field.dart';

class AddEventDetails extends StatefulWidget {
  @override
  State<AddEventDetails> createState() => _AddEventDetailsState();
}

class _AddEventDetailsState extends State<AddEventDetails> {
  final dateFormat = DateFormat('EEE, M-d-y');
  final timeFormat = DateFormat('jm');
  final sizes = [
    {'Any': Colors.red},
    {'Small (2-4)': AppColors.primary},
    {'Med (5-8)': Colors.yellow[600]},
    {'Big (9-20)': Colors.green},
    {'Huge (21+)': Colors.blue}
  ];
  String? selectedSize;
  @override
  void initState() {
    super.initState();
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarBrightness: Brightness.dark,
    //   statusBarIconBrightness: Brightness.dark,
    //   systemNavigationBarColor: AppColors.background,
    //   statusBarColor: Colors.transparent,
    // ));
    selectedSize = 'Any';
  }

  @override
  Widget build(BuildContext context) {
    final eventState = Provider.of<AddEventState>(context);
    final userState = Provider.of<UserState>(context);
    final ready = eventState.timeController.text.isNotEmpty &&
        eventState.descriptionController.text.isNotEmpty &&
        eventState.coordinates != null &&
        eventState.locationController.text.isNotEmpty &&
        (eventState.textMode || eventState.titleController.text.isNotEmpty);

    Widget chooseWidget(BuildContext context) {
      final headingSpacing = 15.0;
      final padding = 30.0;
      final sectionSpacing = 35.0;

      return SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!eventState.textMode) SizedBox(height: sectionSpacing),
            if (!eventState.textMode)
              LabeledOutlineTextField(
                label: 'Title',
                textCapitalization: TextCapitalization.sentences,
                controller: eventState.titleController,
                hintText: 'Event Title',
              ),
            SizedBox(height: headingSpacing),
            LabeledOutlineTextField(
              textCapitalization: TextCapitalization.sentences,
              label: 'Description',
              controller: eventState.descriptionController,
              hintText: 'Event Description',
              maxLines: 7,
            ),
            // SizedBox(height: sectionSpacing),
            // Text('GROUP SIZE', style: headingStyle),
            // SizedBox(height: headingSpacing),
            // Wrap(
            // runSpacing: 0.0,
            // spacing: 10.0,
            // children: sizes
            // .map((size) => InterestBubble(
            // text: size.keys.first,
            // selected: selectedSize == size.keys.first,
            // selectedColor: size.values.first,
            // onSelected: (notSelected) {
            // if (notSelected) {
            // setState(() => selectedSize = size.keys.first);
            // } else {
            // setState(() => selectedSize = null);
            // }
            // }))
            // .toList(),
            // ),
            SizedBox(height: headingSpacing),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: eventState.coordinates == null ? AppColors.unfocused : AppColors.primary,
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
                      eventState.locationController.text = place['description'];
                      final location = await placesService.placeDetails(place['place_id']);
                      if (location['lat'] == null || location['lng'] == null) {
                        BotToast.showText(text: 'Invalid location; please make another selection.');
                        eventState.locationController.text = '';
                      }
                      eventState.coordinates = GeoJsonPoint(
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
                      controller: eventState.locationController,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: headingSpacing),
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
                      dateFormat.format(day) == dateFormat.format(eventState.selectedDate),
                  onDaySelected: (selectedDay, focusedDay) => eventState.selectedDate = selectedDay,
                  currentDay: null,
                  focusedDay: eventState.selectedDate,
                  firstDay: DateTime.now(),
                  lastDay: DateTime.now().add(Duration(days: 365))),
            ),
            SizedBox(height: headingSpacing),

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
                          context: context, initialTime: TimeOfDay(hour: 1, minute: 30));
                      final now = DateTime.now();
                      if (timeofday != null)
                        eventState.timeController.text = timeFormat.format(DateTime(
                            now.year, now.month, now.day, timeofday.hour, timeofday.minute));
                    },
                    controller: eventState.timeController,
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

            SizedBox(height: headingSpacing),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Divider(color: Colors.grey),
            ),
            SizedBox(height: headingSpacing),
            RoundedArrowButton(
                height: 65,
                disabled: !ready,
                onPressed: !ready
                    ? null
                    : () => Navigator.push(
                        context, MaterialPageRoute(builder: (context) => TargetAudience())),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Select Target Audience',
                          style: TextStyle(color: !ready ? Colors.grey[400] : Colors.white)),
                      Icon(Icons.arrow_forward_ios, color: !ready ? Colors.grey[400] : Colors.white)
                    ],
                  ),
                )),
            SizedBox(height: sectionSpacing),
          ],
        ),
      ));
    }

    return GenericPage(
        appBar: SavingAppBar(
          title: 'Add Event',
          buttonTitle: 'Next',
          disabled: !ready,
          onSave: () =>
              Navigator.push(context, MaterialPageRoute(builder: (context) => TargetAudience())),
        ),
        body: chooseWidget(context));
  }
}
