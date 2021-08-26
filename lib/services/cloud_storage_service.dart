import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class CloudStorageService {
  firebase_storage.FirebaseStorage storage;

  CloudStorageService() : storage = firebase_storage.FirebaseStorage.instance;

  Future<String?> uploadImage(Uint8List imageData, int userId) async {
    firebase_storage.Reference ref =
        storage.ref('event_images/${userId}_${DateTime.now()}.png');
    try {
      await ref.putData(imageData);
      return await ref.getDownloadURL();
    } on firebase_storage.FirebaseException catch (e) {
      print('$e');
      return null;
    }
  }
}
