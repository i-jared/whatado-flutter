import 'dart:typed_data';

import 'package:flutter/material.dart';

class SelectProfileImageBox extends StatefulWidget {
  final double imageWidth;
  final Uint8List? photoBytes;
  final Function() onPressed;
  final Function() onRemove;
  SelectProfileImageBox(
      {required this.imageWidth,
      required this.onPressed,
      required this.onRemove,
      required this.photoBytes});

  @override
  _SelectProfileImageBoxState createState() => _SelectProfileImageBoxState();
}

class _SelectProfileImageBoxState extends State<SelectProfileImageBox> {
  late bool loading;

  @override
  void initState() {
    super.initState();
    loading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: 120,
            height: 120,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(60),
            ),
            child: widget.photoBytes == null
                ? loading
                    ? CircularProgressIndicator()
                    : IconButton(
                        iconSize: 40,
                        onPressed: () {
                          setState(() => loading = true);
                          widget.onPressed();
                          setState(() => loading = false);
                        },
                        icon: Icon(Icons.add, color: Colors.white))
                : Image.memory(widget.photoBytes ?? Uint8List.fromList([]),
                    fit: BoxFit.cover)),
        if (widget.photoBytes != null)
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
                    onPressed: widget.onRemove,
                    padding: const EdgeInsets.all(0.0),
                    constraints: BoxConstraints(),
                    icon: Icon(Icons.clear, color: Colors.grey[600])),
              )),
      ],
    );
  }
}
