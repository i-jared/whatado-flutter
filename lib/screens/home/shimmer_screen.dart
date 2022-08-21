import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:whatado/widgets/general/generic_page.dart';

class ShimmerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GenericPage(
        appBar: null,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Shimmer.fromColors(
            baseColor: Colors.grey[200] ?? Colors.grey,
            highlightColor: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 40),
                Container(color: Colors.grey, height: 50, width: 500),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(radius: 30),
                    SizedBox(width: 20),
                    Expanded(child: Container(color: Colors.grey, height: 50))
                  ],
                ),
                SizedBox(height: 10),
                Container(color: Colors.grey, height: 20, width: 500),
                SizedBox(height: 10),
                Container(color: Colors.grey, height: 20, width: 500),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(radius: 30),
                    SizedBox(width: 20),
                    Expanded(child: Container(color: Colors.grey, height: 50))
                  ],
                ),
                SizedBox(height: 10),
                Container(color: Colors.grey, height: 20, width: 500),
                SizedBox(height: 10),
                Container(color: Colors.grey, height: 20, width: 500),
                SizedBox(height: 10),
                Container(color: Colors.grey, height: 20, width: 500),
                SizedBox(height: 10),
                Container(color: Colors.grey, height: 20, width: 500),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(radius: 30),
                    SizedBox(width: 20),
                    Expanded(child: Container(color: Colors.grey, height: 50))
                  ],
                ),
                SizedBox(height: 10),
                Container(color: Colors.grey, height: 20, width: 500),
                SizedBox(height: 10),
                Container(color: Colors.grey, height: 20, width: 500),
                SizedBox(height: 40),
              ],
            ),
          ),
        ));
  }
}
