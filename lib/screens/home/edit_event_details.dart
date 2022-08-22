import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:geojson/geojson.dart';
import 'package:geopoint/geopoint.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/forum.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/edit_event_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/edit_event_app_bar.dart';
import 'package:whatado/widgets/general/generic_page.dart';
import 'package:whatado/widgets/input/my_text_field.dart';

import '../../graphql/queries_graphql_api.graphql.dart';

class EditEventDetails extends StatelessWidget {
  final Event event;
  final Forum? forum;
  EditEventDetails({required this.event, this.forum});
  final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final headingSpacing = 10.0;
  final padding = 30.0;
  final sectionSpacing = 35.0;
  final dateFormat = DateFormat('EEE, M-d-y');
  final timeFormat = DateFormat('jm');

  @override
  Widget build(BuildContext context) {
    final editEventState = Provider.of<EditEventState>(context);
    final userState = Provider.of<UserState>(context);
    return GenericPage(
        appBar: EditEventAppBar(event: event, forum: forum),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: sectionSpacing),
            Text('Title', style: headingStyle),
            SizedBox(height: headingSpacing),
            MyTextField(
              controller: editEventState.titleController,
              hintText: 'Enter title',
            ),
            SizedBox(height: sectionSpacing),
            Text('Description', style: headingStyle),
            SizedBox(height: headingSpacing),
            MyTextField(
              controller: editEventState.descriptionController,
              hintText: 'Enter description',
              maxLines: null,
            ),
            SizedBox(height: sectionSpacing),
            Text('Location', style: headingStyle),
            SizedBox(height: headingSpacing),
            TypeAheadFormField(
              direction: AxisDirection.up,
              noItemsFoundBuilder: (context) => SizedBox.shrink(),
              onSuggestionSelected: (Map<String, dynamic> place) {
                editEventState.locationController.text = place['description'];
                editEventState.coordinates = GeoJsonPoint(
                    geoPoint: GeoPoint(
                        latitude: place['location']['y'], longitude: place['location']['x']));
              },
              suggestionsCallback: (String pattern) async {
                final result = await placesService.findPlace(pattern, userState.user!.location);
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
                controller: editEventState.locationController,
              ),
            ),
            SizedBox(height: sectionSpacing),
            Text('Time', style: headingStyle),
            SizedBox(height: headingSpacing),
            Row(
              children: [
                Flexible(
                  child: TextFormField(
                    readOnly: true,
                    controller: editEventState.dateController,
                    onTap: () => DatePicker.showDatePicker(context,
                        onConfirm: (time) =>
                            editEventState.dateController.text = dateFormat.format(time),
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
                    controller: editEventState.timeController,
                    onTap: () => DatePicker.showTime12hPicker(
                      context,
                      onConfirm: (time) =>
                          editEventState.timeController.text = timeFormat.format(time),
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
            if (event.privacy == Privacy.public) ...[
              Row(
                children: [
                  Switch(
                    onChanged: (newVal) => editEventState.screened = newVal,
                    value: editEventState.screened,
                    activeColor: AppColors.primary,
                  ),
                  SizedBox(width: 20),
                  Text('Screen Event Members'),
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
                    Text('Chat Open'),
                  ],
                ),
            ]
          ]),
        )));
  }
}
