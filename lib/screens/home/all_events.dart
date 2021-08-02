import 'package:flutter/material.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/widgets/home/calendar_selector.dart';
import 'package:whatado/widgets/home/events/event_display.dart';

class AllEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///////////////////////////////////////////
    ///                FAKE DATA            ///
    ///////////////////////////////////////////
    User jared = User(
        email: 'jaredclambert@gmail.com',
        imageUrl:
            'https://i.guim.co.uk/img/media/7f461faef1a1f1601fca37eb6e865e248ca7f791/50_0_1133_680/master/1133.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=75e943e1cc536746aa58839c49175512',
        name: 'Jared Lambert');
    List<Event> events = List<Event>.generate(
        5,
        (index) => Event(
            creator: jared,
            date: DateTime.now(),
            description: 'this is cool',
            imageUrl:
                'https://www.addtoevent.co.uk/sites/default/files/styles/one_third/public/user/11236/supplier/images/avatar-party.jpg',
            location: '2500 Pennsylvania Ave.',
            title: 'My Party'));
    ///////////////////////////////////////////
    ///                FAKE DATA            ///
    ///////////////////////////////////////////
    ///
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(height: 10),
        CalendarSelector(width: width),
        Expanded(
          child: ListView(
            children: events.map((e) => EventDisplay(event: e)).toList(),
          ),
        )
      ],
    );
  }
}
