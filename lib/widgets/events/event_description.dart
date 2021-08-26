import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:whatado/models/event.dart';

class EventDescription extends StatelessWidget {
  final Event event;
  EventDescription({required this.event});
  @override
  Widget build(BuildContext context) {
    return ExpandableText(
      event.description,
      expandText: 'more',
      maxLines: 2,
      style: TextStyle(fontSize: 14),
      linkColor: Colors.grey,
    );
  }
}
