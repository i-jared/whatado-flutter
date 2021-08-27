import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_view/photo_view.dart';
import 'package:image/image.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/models/interest.dart';

class AddEventState extends ChangeNotifier {
  PhotoViewController photoController;
  TextEditingController titleController;
  TextEditingController descriptionController;
  TextEditingController locationController;
  TextEditingController dateController;
  TextEditingController timeController;
  TextEditingController textModeController;
  TextEditingController addInterestController;
  Gender _selectedGender;
  AssetEntity? _selectedImage;

  double _filterAgeStart;
  double _filterAgeEnd;
  bool _textMode;
  bool _loading;
  bool _failed;
  bool _succeeded;

  final popularInterests = [
    Interest(id: 1, name: 'bball'),
    Interest(id: 2, name: 'ping pong'),
    Interest(id: 3, name: 'running'),
    Interest(id: 4, name: 'another'),
    Interest(id: 5, name: 'interest')
  ];

  List<Interest> customInterests = [];
  List<Interest> selectedInterests = [];

  void addInterest(Interest interest) {
    selectedInterests.add(interest);
    notifyListeners();
  }

  void removeInterest(Interest interest) {
    selectedInterests.remove(interest);
    notifyListeners();
  }

  void addCustomInterest(Interest interest) {
    customInterests.add(interest);
    notifyListeners();
  }

  void removeCustomInterest(Interest interest) {
    customInterests.remove(interest);
    notifyListeners();
  }
  // TODO: add real interest data

  AddEventState()
      : photoController = PhotoViewController(),
        titleController = TextEditingController(),
        descriptionController = TextEditingController(),
        locationController = TextEditingController(),
        dateController = TextEditingController(),
        timeController = TextEditingController(),
        textModeController = TextEditingController(),
        addInterestController = TextEditingController(),
        _filterAgeEnd = 40,
        _filterAgeStart = 18,
        _textMode = false,
        _selectedGender = Gender.both,
        _loading = false,
        _succeeded = false,
        _failed = false {
    titleController.addListener(() => notifyListeners());
    descriptionController.addListener(() => notifyListeners());
    locationController.addListener(() => notifyListeners());
    dateController.addListener(() => notifyListeners());
    timeController.addListener(() => notifyListeners());
    textModeController.addListener(() => notifyListeners());
  }

  @override
  void dispose() {
    photoController.dispose();
    titleController.dispose();
    descriptionController.dispose();
    locationController.dispose();
    dateController.dispose();
    timeController.dispose();
    textModeController.dispose();
    addInterestController.dispose();
    super.dispose();
  }

  bool get succeeded => _succeeded;

  set succeeded(bool succeeded) {
    _succeeded = succeeded;
    notifyListeners();
  }

  bool get failed => _failed;

  set failed(bool failed) {
    _failed = failed;
    notifyListeners();
  }

  bool get loading => _loading;

  set loading(bool loading) {
    _loading = loading;
    notifyListeners();
  }

  Gender get selectedGender => _selectedGender;

  set selectedGender(Gender selectedGender) {
    _selectedGender = selectedGender;
    notifyListeners();
  }

  bool get textMode => _textMode;

  set textMode(bool textMode) {
    _textMode = textMode;
    notifyListeners();
  }

  double get filterAgeEnd => _filterAgeEnd;

  set filterAgeEnd(double filterAgeEnd) {
    _filterAgeEnd = filterAgeEnd;
    notifyListeners();
  }

  double get filterAgeStart => _filterAgeStart;

  set filterAgeStart(double filterAgeStart) {
    _filterAgeStart = filterAgeStart;
    notifyListeners();
  }

  AssetEntity? get selectedImage => _selectedImage;

  set selectedImage(AssetEntity? selectedImage) {
    _selectedImage = selectedImage;
    notifyListeners();
  }

  void clear() {
    _selectedImage = null;
    _succeeded = false;
    _failed = false;
    _loading = false;
    photoController.reset();
    titleController.clear();
    descriptionController.clear();
    locationController.clear();
    dateController.clear();
    timeController.clear();
    textModeController.clear();
    addInterestController.clear();
  }

  Future<Uint8List> cropResizeImage(double deviceWidth) async {
    if (_selectedImage == null) return Uint8List.fromList([]);
    final width = _selectedImage!.width;
    final height = _selectedImage!.height;
    // resizing image too small doesn't update controller on revert to min size
    final scale = max(
        deviceWidth / min(width, height), photoController.scale!.toDouble());
    final offsetx = photoController.position.dx / scale;
    final offsety = photoController.position.dy / scale;
    // get positions of TL & BR corners
    final length = deviceWidth / scale;
    final top = (height / 2.0 - length / 2.0 - offsety).round();
    final right = (width / 2.0 - length / 2.0 + offsetx).round();
    final bottom = (height / 2.0 - length / 2.0 + offsety).round();
    final left = (width / 2.0 - length / 2.0 - offsetx).round();
    // crop image and encode it as png
    final rawImage = await _selectedImage!.originBytes;
    final decodedImage = decodeImage(List.from(rawImage ?? []));
    if (decodedImage == null) return Uint8List.fromList([]);
    final face = copyCrop(
      decodedImage,
      left,
      top,
      width - right - left,
      height - top - bottom,
    );
    final resizedFace = copyResize(face, height: 700, width: 700);
    return Uint8List.fromList(encodePng(resizedFace));
  }
}
