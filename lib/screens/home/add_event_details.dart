import 'package:flutter/material.dart';
import 'package:whatado/widgets/appbars/add_event_details_app_bar.dart';

class AddEventDetails extends StatefulWidget {
  @override
  State<AddEventDetails> createState() => _AddEventDetailsState();
}

class _AddEventDetailsState extends State<AddEventDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AddEventDetailsAppBar(), body: Container());
  }
}
