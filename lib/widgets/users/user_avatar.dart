import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String? url;
  final double radius;
  UserAvatar({required this.url, required this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius * 2,
      width: radius * 2,
      clipBehavior: Clip.antiAlias,
      child: url == null
          ? Image.asset("assets/Whatado_Transparent.png")
          : CachedNetworkImage(imageUrl: url!),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius)),
    );
  }
}
