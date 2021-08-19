import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/widgets/appbars/add_event_details_app_bar.dart';
import 'package:whatado/widgets/input/my_text_field.dart';

class AddEventDetails extends StatefulWidget {
  @override
  State<AddEventDetails> createState() => _AddEventDetailsState();
}

class _AddEventDetailsState extends State<AddEventDetails> {
  @override
  Widget build(BuildContext context) {
    final eventState = Provider.of<AddEventState>(context);
    final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    final headingSpacing = 10.0;
    final padding = 30.0;
    final sectionSpacing = 35.0;
    return Scaffold(
        appBar: AddEventDetailsAppBar(),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: sectionSpacing),
              Text('DESCRIPTION', style: headingStyle),
              SizedBox(height: headingSpacing),
              MyTextField(
                hintText: 'Add description',
                controller: eventState.descriptionController,
                maxLines: 4,
              ),
              SizedBox(height: sectionSpacing),
              Text('GROUP SIZE', style: headingStyle),
              SizedBox(height: headingSpacing),
              // TODO: something like interest chips to choose group size
              SizedBox(height: sectionSpacing),
              Text('LOCATION', style: headingStyle),
              SizedBox(height: headingSpacing),
              MyTextField(
                hintText: 'Add location',
                controller: eventState.locationController,
              ),
              SizedBox(height: sectionSpacing),
              Text('DATE & TIME', style: headingStyle),
              SizedBox(height: headingSpacing),
              Row(
                children: [
                  Flexible(
                    child: MyTextField(
                      hintText: 'Date',
                      controller: eventState.locationController,
                    ),
                  ),
                  SizedBox(width: 20),
                  Flexible(
                    child: MyTextField(
                      hintText: 'Time',
                      controller: eventState.locationController,
                    ),
                  ),
                ],
              ),
              SizedBox(height: sectionSpacing),
              TextButton(
                  onPressed: () => null,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('SELECT TARGET AUDIENCE',
                          style: TextStyle(
                              fontSize: 18, color: Color(0xffe85c3f))),
                      Icon(Icons.arrow_forward_ios, color: Color(0xffe85c3f))
                    ],
                  ))
            ],
          ),
        )));
  }
}
