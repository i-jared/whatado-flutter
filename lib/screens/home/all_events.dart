import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/widgets/home/calendar_selector.dart';
import 'package:whatado/widgets/home/events/event_display.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

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
    List<String> imageUrls = [
      'https://media.istockphoto.com/photos/nicelooking-attractive-gorgeous-glamorous-elegant-stylish-cheerful-picture-id1165055006?k=6&m=1165055006&s=612x612&w=0&h=X_d75QPcjQ0Zx-X2tTD4npQOIjD6lKXdDPqxJHuovhc=',
      'https://images.unsplash.com/photo-1533174072545-7a4b6ad7a6c3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGFydHl8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80',
      'https://www.godominicanrepublic.com/wp-content/uploads/2019/11/coco-bongo-last-party-of-the-year.jpg',
      'https://i.pinimg.com/originals/11/06/e5/1106e5d6ffa00c189a63e9d0a503277f.gif',
      'https://pyxis.nymag.com/v1/imgs/6a3/f5a/1531262ea5b41618f51259628d6c484a56-party-covid.rsquare.w700.jpg',
    ];
    List<Event> events = List<Event>.generate(
        5,
        (index) => Event(
            creator: jared,
            date: DateTime.now(),
            description: lorem(words: 20, paragraphs: 1),
            imageUrl: imageUrls[index],
            location: '2500 Pennsylvania Ave.',
            title: lorem(words: 2, paragraphs: 1)));
    ///////////////////////////////////////////
    ///                FAKE DATA            ///
    ///////////////////////////////////////////

    final width = MediaQuery.of(context).size.width;
    final homeState = Provider.of<HomeState>(context);

    return SmartRefresher(
      controller: homeState.refreshController,
      onRefresh: homeState.onRefresh,
      child: ListView(
        key: PageStorageKey(0),
        controller: homeState.allEventsScrollController,
        children: [
          CalendarSelector(width: width),
          ...events.map((e) => EventDisplay(event: e)).toList()
        ],
      ),
    );
  }
}
