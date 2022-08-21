import 'package:flutter/cupertino.dart';
import 'package:geojson/geojson.dart';
import 'package:intl/intl.dart';
import 'package:whatado/graphql/queries_graphql_api.graphql.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/forum.dart';

class EditEventState extends ChangeNotifier {
  final dateFormat = DateFormat('EEE, M-d-y');
  final timeFormat = DateFormat('jm');
  bool _loading;
  bool _screened;
  Privacy _privacy;
  bool? _chatDisabled;
  TextEditingController titleController;
  TextEditingController descriptionController;
  TextEditingController locationController;
  TextEditingController dateController;
  TextEditingController timeController;
  GeoJsonPoint coordinates;

  EditEventState(Event event, Forum? forum)
      : _loading = false,
        _privacy = event.privacy,
        _chatDisabled = forum?.chatDisabled,
        _screened = event.screened,
        coordinates = event.coordinates,
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

  bool get screened => _screened;

  set screened(bool screened) {
    _screened = screened;
    notifyListeners();
  }

  Privacy get privacy => _privacy;

  set privacy(Privacy privacy) {
    _privacy = privacy;
    notifyListeners();
  }

  bool? get chatDisabled => _chatDisabled;

  set chatDisabled(bool? chatDisabled) {
    _chatDisabled = chatDisabled;
    notifyListeners();
  }
}
