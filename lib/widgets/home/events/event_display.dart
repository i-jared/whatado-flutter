import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatado/models/event.dart';

class EventDisplay extends StatelessWidget {
  final Event event;
  final dateFormat = DateFormat('dd MMMM, yyyy');
  EventDisplay({required this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(event.creator.imageUrl),
              ),
              SizedBox(width: 20),
              Text(event.creator.name, style: TextStyle(fontSize: 16)),
              Spacer(),
              Text('1h ago', style: TextStyle(color: Colors.grey)),
            ]),
          ),
          SizedBox(height: 10),
          Container(
              width: MediaQuery.of(context).size.width,
              child: Image.network(event.imageUrl, fit: BoxFit.fitWidth)),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(event.title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                  SizedBox(height: 5),
                  Text(dateFormat.format(event.date),
                      style: TextStyle(fontSize: 16, color: Colors.grey)),
                ]),
                ElevatedButton(
                    onPressed: () => null,
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.red[300])),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Join', style: TextStyle(fontSize: 16)),
                        Icon(Icons.add, size: 15),
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: ExpandableText(
              event.description,
              expandText: 'more',
              maxLines: 2,
              style: TextStyle(fontSize: 16),
              linkColor: Colors.grey,
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
