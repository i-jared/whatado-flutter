import 'package:flutter/material.dart';

class SelectImageBox extends StatefulWidget {
  final Function() onSelect;
  final double imageWidth;
  SelectImageBox({required this.imageWidth, required this.onSelect});

  @override
  _SelectImageBoxState createState() => _SelectImageBoxState();
}

class _SelectImageBoxState extends State<SelectImageBox> {
  late bool loading;
  @override
  void initState() {
    super.initState();
    loading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.grey[400]),
        width: widget.imageWidth,
        height: widget.imageWidth,
        child: loading
            ? Center(child: CircularProgressIndicator())
            : IconButton(
                iconSize: 40,
                onPressed: () async {
                  setState(() => loading = true);
                  await widget.onSelect();
                  setState(() => loading = false);
                },
                icon: Icon(Icons.add, color: Colors.white)));
  }
}
