import 'package:flutter/material.dart';

class BottomSheetList extends StatelessWidget {
  final List<Widget> items;
  BottomSheetList({required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
          boxShadow: kElevationToShadow[16],
          color: Colors.grey[50],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
                child: Container(
                    height: 7,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5)))),
            SizedBox(height: 30),
            Text('Sort Events By',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
            SizedBox(height: 20),
            Expanded(
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, i) => items[i],
                    separatorBuilder: (context, i) => Divider(),
                    itemCount: items.length))
          ],
        ),
      ),
    );
  }
}
