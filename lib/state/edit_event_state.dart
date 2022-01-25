import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:whatado/models/event.dart';

class EditEventState extends ChangeNotifier {
  final dateFormat = DateFormat('EEE, M-d-y');
  final timeFormat = DateFormat('jm');
  bool _loading;
  TextEditingController titleController;
  TextEditingController descriptionController;
  TextEditingController locationController;
  TextEditingController dateController;
  TextEditingController timeController;
  EditEventState(Event event)
      : _loading = false,
        titleController = TextEditingController(text: event.title),
        descriptionController = TextEditingController(text: event.description),
        locationController = TextEditingController(text: event.location),
        dateController = TextEditingController(),
        timeController = TextEditingController() {
    dateController.text = dateFormat.format(event.time);
    timeController.text = timeFormat.format(event.time);
    titleController.addListener(() => notifyListeners());
    descriptionController.addListener(() => notifyListeners());
    locationController.addListener(() => notifyListeners());
    dateController.addListener(() => notifyListeners());
    timeController.addListener(() => notifyListeners());
  }

  bool get loading => _loading;

  set loading(bool loading) {
    _loading = loading;
    notifyListeners();
  }
}
