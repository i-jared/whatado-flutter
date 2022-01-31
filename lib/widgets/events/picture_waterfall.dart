import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/widgets/users/user_avatar.dart';

class PictureWaterfall extends StatelessWidget {
  final bool loading;
  final List<EventUser> users;
  final double radius;
  PictureWaterfall(
      {required this.loading, required this.users, this.radius = 13});

  @override
  Widget build(BuildContext context) {
    final int length = 4;
    return Row(
      children: [
        Container(
          height: radius * 2,
          width: radius *
              (loading ? (length + 1) : (min(length, users.length) + 1)),
          child: Stack(
              children: loading
                  ? List<Widget>.generate(
                      length,
                      (i) => Positioned(
                            left: i * radius,
                            bottom: 0,
                            child: Shimmer.fromColors(
                                child: CircleAvatar(radius: radius),
                                baseColor: Colors.grey[200] ?? Colors.grey,
                                highlightColor: Colors.white),
                          ))
                  : List<Widget>.generate(
                      min(length, users.length),
                      (i) => Positioned(
                            left: i * radius,
                            bottom: 0,
                            child: UserAvatar(
                                url: users[i].photoUrls.isEmpty
                                    ? null
                                    : users[i].photoUrls.first,
                                radius: radius),
                          )).toList()),
        ),
        SizedBox(width: 10),
        if (!loading && length < users.length)
          Expanded(
            child: Text('+${users.length - 4}',
                style: TextStyle(fontSize: radius - 2)),
          ),
      ],
    );
  }
}
