import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/screens/home/event_details.dart';

class EventTitle extends StatelessWidget {
  final Event event;
  EventTitle({required this.event});

  final dateFormat = DateFormat('dd MMMM, yyyy');

  @override
  Widget build(BuildContext context) {
    final textFormat = TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: event.imageUrl!.isNotEmpty ? 22 : 30);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(event.title, style: textFormat),
                    SizedBox(height: 5),
                    Text(dateFormat.format(event.time),
                        style: TextStyle(fontSize: 14, color: Colors.grey)),
                  ],
                ),
              ),
              Flexible(
                flex: 3,
                child: ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EventDetails(event: event))),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xffe85c3f))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Join', style: TextStyle(fontSize: 15)),
                        Icon(Icons.add, size: 15),
                      ],
                    )),
              )
            ]),
      ],
    );
  }
}
