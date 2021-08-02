import 'package:flutter/material.dart';
import 'package:whatado/widgets/home/calendar_selector.dart';

class AllEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
        child: Column(
      children: [SizedBox(height: 10), CalendarSelector(width: width)],
    ));
  }
}
