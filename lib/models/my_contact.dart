import 'dart:typed_data';

class MyContact {
  String? phone;
  String displayName;
  Uint8List? thumbnail;
  bool referred;

  MyContact(
      {required this.displayName, required this.referred, this.phone, this.thumbnail});

  MyContact copyWith(
      {String? phone, String? displayName, Uint8List? thumbnail, bool? referred}) {
    return MyContact(
      displayName: displayName ?? this.displayName,
      phone: phone ?? this.phone,
      thumbnail: thumbnail ?? this.thumbnail,
      referred: referred ?? this.referred,
    );
  }
}
