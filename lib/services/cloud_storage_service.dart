import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:image/image.dart' as fi;
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatado/utils/logger.dart';

class CloudStorageService {
  firebase_storage.FirebaseStorage storage;

  CloudStorageService() : storage = firebase_storage.FirebaseStorage.instance;

  Future<String?> uploadImage(Uint8List imageData, int userId, {bool userImage = false}) async {
    firebase_storage.Reference ref = storage
        .ref('${userImage ? 'user_images' : 'event_images'}/${userId}_${DateTime.now()}.png');
    try {
      await ref.putData(imageData);
      return await ref.getDownloadURL();
    } on firebase_storage.FirebaseException catch (e) {
      logger.e('$e');
      return null;
    }
  }

  Uint8List resize({required File? file, int x = 600, int y = 600}) {
    final bytes = file!.readAsBytesSync();
    final decodedImage = fi.decodeImage(bytes);
    final resizedFace = fi.copyResize(decodedImage as fi.Image, height: y, width: x);
    return Uint8List.fromList(fi.encodePng(resizedFace));
  }

  Future<File?> pickImage() async {
    final ImagePicker picker = ImagePicker();
    final xFile = await picker.pickImage(source: ImageSource.gallery);
    if (xFile == null) return null;
    return await ImageCropper()
        .cropImage(sourcePath: xFile.path, aspectRatio: CropAspectRatio(ratioX: 1.0, ratioY: 1.0));
  }
}
