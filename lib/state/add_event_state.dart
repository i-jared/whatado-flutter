import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_view/photo_view.dart';

class AddEventState extends ChangeNotifier {
  PhotoViewController photoController;
  TextEditingController textController;
  AssetEntity? _selectedImage;

  AssetEntity? get selectedImage => _selectedImage;

  set selectedImage(AssetEntity? selectedImage) {
    _selectedImage = selectedImage;
    notifyListeners();
  }

  AddEventState()
      : photoController = PhotoViewController(),
        textController = TextEditingController();
}
