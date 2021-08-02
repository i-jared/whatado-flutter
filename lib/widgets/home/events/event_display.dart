import 'package:flutter/material.dart';
import 'package:whatado/models/event.dart';

class EventDisplay extends StatelessWidget {
  final Event event;
  EventDisplay({required this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            CircleAvatar(
              backgroundImage: NetworkImage(event.creator.imageUrl),
            ),
            Text(event.creator.name),
          ]),
          Image.network(event.imageUrl),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  children: [Text(event.title), Text(event.date.toString())]),
              ElevatedButton(onPressed: () => null, child: null)
            ],
          ),
          Text(event.description),
        ],
      ),
    );
  }
}
