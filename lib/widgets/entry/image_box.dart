import 'dart:typed_data';

import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  final Function() onRemove;
  final Uint8List? data;
  final String? url;
  final double imageWidth;
  ImageBox(
      {required this.data,
      required this.url,
      required this.imageWidth,
      required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            width: imageWidth,
            height: imageWidth,
            child: data == null
                ? Image.network(url ?? '', fit: BoxFit.cover)
                : Image.memory(data ?? Uint8List.fromList([]),
                    fit: BoxFit.cover)),
        Positioned(
            top: 5,
            right: 5,
            child: Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: IconButton(
                  onPressed: onRemove,
                  padding: const EdgeInsets.all(0.0),
                  constraints: BoxConstraints(),
                  icon: Icon(Icons.clear, color: Colors.grey[600])),
            )),
      ],
    );
  }
}
