import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarSelector extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CalendarSelectorState();
}

class _CalendarSelectorState extends State<CalendarSelector> {
  List<DateTime> dates = [];
  DateTime _selectedDate = DateTime.now();

  String toDate(DateTime time) {
    return DateFormat('yyyy-MM-dd').format(time);
  }

  @override
  void initState() {
    for (int i = 0; i < 100; i++) {
      dates.add(DateTime.now().add(Duration(days: i)));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
        height: 56,
        child: Row(
          children: [
            Container(
              width: 70,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.red[300],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: Center(
                  child: Text('JUL',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
            ),
            Expanded(
                child: ListView(scrollDirection: Axis.horizontal, children: [
              ...dates
                  .map((_dateTime) => InkWell(
                        onTap: () => setState(() => _selectedDate == _dateTime
                            ? _selectedDate = DateTime(1900)
                            : _selectedDate = _dateTime),
                        child: Stack(
                          children: [
                            Container(
                                height: double.infinity,
                                width: (width - 70) / 6,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(_dateTime.day.toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                    Text(DateFormat('EE').format(_dateTime)),
                                  ],
                                )),
                            if (toDate(_dateTime) == toDate(_selectedDate))
                              Positioned(
                                top: 5,
                                right: 5,
                                child: Container(
                                    height: 7,
                                    width: 7,
                                    decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              )
                          ],
                        ),
                      ))
                  .toList()
            ]))
          ],
        ));
  }
}
