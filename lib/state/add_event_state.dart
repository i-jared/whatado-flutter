import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_view/photo_view.dart';
import 'package:image/image.dart';

class AddEventState extends ChangeNotifier {
  PhotoViewController photoController;
  TextEditingController titleController;
  TextEditingController descriptionController;
  TextEditingController locationController;
  AssetEntity? _selectedImage;

  AssetEntity? get selectedImage => _selectedImage;

  set selectedImage(AssetEntity? selectedImage) {
    _selectedImage = selectedImage;
    notifyListeners();
  }

  AddEventState()
      : photoController = PhotoViewController(),
        titleController = TextEditingController(),
        descriptionController = TextEditingController(),
        locationController = TextEditingController();

  Future<Uint8List> cropImage(double deviceWidth) async {
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
    return Uint8List.fromList(encodePng(face));
  }
}
