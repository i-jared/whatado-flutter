import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/state/edit_event_state.dart';
import 'package:whatado/widgets/appbars/edit_event_app_bar.dart';
import 'package:whatado/widgets/input/my_text_field.dart';

class EditEventDetails extends StatelessWidget {
  final Event event;
  EditEventDetails({required this.event});

  final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final headingSpacing = 10.0;
  final padding = 30.0;
  final sectionSpacing = 35.0;
  final dateFormat = DateFormat('EEE, M-d-y');
  final timeFormat = DateFormat('jm');

  @override
  Widget build(BuildContext context) {
    final editEventState = Provider.of<EditEventState>(context);
    return Container(
      color: Colors.grey[50],
      child: SafeArea(
        child: Scaffold(
            appBar: EditEventAppBar(event: event),
            body: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: sectionSpacing),
                    Text('TITLE', style: headingStyle),
                    SizedBox(height: headingSpacing),
                    MyTextField(
                      controller: editEventState.titleController,
                      hintText: 'Enter title',
                    ),
                    SizedBox(height: sectionSpacing),
                    Text('DESCRIPTION', style: headingStyle),
                    SizedBox(height: headingSpacing),
                    MyTextField(
                      controller: editEventState.descriptionController,
                      hintText: 'Enter description',
                      maxLines: null,
                    ),
                    SizedBox(height: sectionSpacing),
                    Text('LOCATION', style: headingStyle),
                    SizedBox(height: headingSpacing),
                    MyTextField(
                      controller: editEventState.locationController,
                      hintText: 'Enter location',
                    ),
                    SizedBox(height: sectionSpacing),
                    Text('TIME', style: headingStyle),
                    SizedBox(height: headingSpacing),
                    Row(
                      children: [
                        Flexible(
                          child: TextFormField(
                            readOnly: true,
                            controller: editEventState.dateController,
                            onTap: () => DatePicker.showDatePicker(context,
                                onConfirm: (time) => editEventState
                                    .dateController
                                    .text = dateFormat.format(time),
                                minTime: DateTime.now(),
                                maxTime:
                                    DateTime.now().add(Duration(days: 100))),
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Date',
                              hintStyle: TextStyle(fontSize: 13),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 12),
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
                              onConfirm: (time) => editEventState.timeController
                                  .text = timeFormat.format(time),
                              currentTime: DateTime.now(),
                            ),
                            decoration: InputDecoration(
                              hintText: 'Time',
                              isDense: true,
                              hintStyle: TextStyle(fontSize: 13),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: sectionSpacing),
                  ]),
            ))),
      ),
    );
  }
}
