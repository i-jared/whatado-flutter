import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:geojson/geojson.dart';
import 'package:geopoint/geopoint.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/screens/add_event/target_audience.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/saving_app_bar.dart';
import 'package:whatado/widgets/general/generic_page.dart';
import 'package:whatado/widgets/input/my_text_field.dart';

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
        eventState.dateController.text.isNotEmpty &&
        eventState.locationController.text.isNotEmpty &&
        (eventState.textMode || eventState.titleController.text.isNotEmpty);

    Widget chooseWidget(BuildContext context) {
      final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
      final headingSpacing = 10.0;
      final padding = 30.0;
      final sectionSpacing = 35.0;

      return SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!eventState.textMode) SizedBox(height: sectionSpacing),
            if (!eventState.textMode) Text('TITLE', style: headingStyle),
            if (!eventState.textMode) SizedBox(height: headingSpacing),
            if (!eventState.textMode)
              MyTextField(
                hintText: 'Add title',
                controller: eventState.titleController,
                maxLength: 35,
              ),
            SizedBox(height: sectionSpacing),
            Text('DESCRIPTION', style: headingStyle),
            SizedBox(height: headingSpacing),
            MyTextField(
              hintText: 'Add description',
              controller: eventState.descriptionController,
              maxLines: null,
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
            SizedBox(height: sectionSpacing),
            Row(
              children: [
                Text('LOCATION', style: headingStyle),
                SizedBox(width: 10),
                Tooltip(
                  preferBelow: false,
                  triggerMode: TooltipTriggerMode.tap,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  padding: EdgeInsets.all(8),
                  message: "Location is only visible for invited event members.",
                  child: Icon(Icons.help_outline, size: 20),
                ),
              ],
            ),
            SizedBox(height: headingSpacing),
            TypeAheadFormField(
              direction: AxisDirection.up,
              noItemsFoundBuilder: (context) => SizedBox.shrink(),
              onSuggestionSelected: (Map<String, dynamic> place) async {
                eventState.locationController.text = place['description'];
                final location = await placesService.placeDetails(place['place_id']);
                if (location['lat'] == null || location['lng'] == null) {
                  BotToast.showText(text: 'Invalid location; please make another selection.');
                  eventState.locationController.text = '';
                }
                eventState.coordinates = GeoJsonPoint(
                    geoPoint: GeoPoint(latitude: location['lat'], longitude: location['lng']));
              },
              suggestionsCallback: (String pattern) async {
                final result = await placesService.findPlace(pattern, userState.user?.location);
                return result;
              },
              itemBuilder: (context, Map<String, dynamic> place) =>
                  ListTile(title: Text(place['description'])),
              textFieldConfiguration: TextFieldConfiguration(
                maxLines: null,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Enter location',
                  hintStyle: TextStyle(fontSize: 13),
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
                controller: eventState.locationController,
              ),
            ),
            SizedBox(height: sectionSpacing),
            Text('DATE & TIME', style: headingStyle),
            SizedBox(height: headingSpacing),
            Row(
              children: [
                Flexible(
                  child: TextFormField(
                    readOnly: true,
                    controller: eventState.dateController,
                    onTap: () => DatePicker.showDatePicker(context,
                        onConfirm: (time) =>
                            eventState.dateController.text = dateFormat.format(time),
                        minTime: DateTime.now(),
                        maxTime: DateTime.now().add(Duration(days: 100))),
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: 'Date',
                      hintStyle: TextStyle(fontSize: 13),
                      contentPadding: EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Flexible(
                  child: TextFormField(
                    readOnly: true,
                    controller: eventState.timeController,
                    onTap: () => DatePicker.showTime12hPicker(
                      context,
                      onConfirm: (time) => eventState.timeController.text = timeFormat.format(time),
                      currentTime: DateTime.now(),
                    ),
                    decoration: InputDecoration(
                      hintText: 'Time',
                      isDense: true,
                      hintStyle: TextStyle(fontSize: 13),
                      contentPadding: EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: sectionSpacing),
            TextButton(
                onPressed: !ready
                    ? null
                    : () => Navigator.push(
                        context, MaterialPageRoute(builder: (context) => TargetAudience())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('SELECT TARGET AUDIENCE',
                        style: TextStyle(
                            fontSize: 18, color: !ready ? Colors.grey[400] : AppColors.primary)),
                    Icon(Icons.arrow_forward_ios,
                        color: !ready ? Colors.grey[400] : AppColors.primary)
                  ],
                )),
            SizedBox(height: sectionSpacing),
          ],
        ),
      ));
    }

    return GenericPage(
        appBar: SavingAppBar(
          title: 'Add Event',
          buttonTitle: 'NEXT',
          disabled: !ready,
          onSave: () =>
              Navigator.push(context, MaterialPageRoute(builder: (context) => TargetAudience())),
        ),
        body: chooseWidget(context));
  }
}
