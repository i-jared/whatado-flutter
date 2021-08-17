import 'package:flutter/material.dart';
import 'package:whatado/widgets/appbars/add_event_app_bar.dart';

class AddEvent extends StatefulWidget {
  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  late TextEditingController textController;
  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AddEventAppBar(),
      body: Column(
        children: [
          Flexible(
              flex: 4,
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  maxLines: null,
                  decoration: InputDecoration(hintText: "What are your plans?", border: InputBorder.none),
                  style: TextStyle(fontSize: 30),
                ),
              ))),
          Flexible(flex: 1, child: Container(color: Colors.black)),
          Flexible(flex: 5, child: Container(color: Colors.green)),
        ],
      ),
    );
  }
}
