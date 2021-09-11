import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image/image.dart' as fi;
import 'package:provider/provider.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/home/home.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/setup_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

//TODO: configure image picker for ios
class SelectPhotosScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SelectPhotosScreenState();
}

class _SelectPhotosScreenState extends State<SelectPhotosScreen> {
  late List<File?> selectedPhotos;
  File? profilePhoto;
  late bool loading;

  @override
  void initState() {
    super.initState();
    selectedPhotos = [];
    loading = false;
  }

  final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final headingSpacing = 10.0;
  final padding = 30.0;
  final sectionSpacing = 35.0;
  final imageSpacing = 10.0;

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final ImagePicker picker = ImagePicker();
    final imageWidth =
        (MediaQuery.of(context).size.width - (padding + imageSpacing) * 2) /
            3.0;

    void onPressed(int userId) async {
      setState(() => loading = true);
      final profileUrl = await cloudStorageService.uploadImage(
          profilePhoto!.readAsBytesSync(), userState.user!.id);
      final List<String?> photoUrls =
          await Future.wait(selectedPhotos.map<Future<String?>>((file) {
        final bytes = file!.readAsBytesSync();
        final decodedImage = fi.decodeImage(List.from(bytes));
        if (decodedImage == null) {
          return Future.value(null);
        }
        final resizedFace =
            fi.copyResize(decodedImage, height: 700, width: 700);
        final sizedBytes = Uint8List.fromList(fi.encodePng(resizedFace));
        return cloudStorageService.uploadImage(sizedBytes, userState.user!.id);
      }));
      final provider = UserGqlProvider();
      if (profileUrl == null || photoUrls.contains(null)) return;
      await provider.updateProfilePhoto(profileUrl);
      await provider.updatePhotos(List<String>.from(photoUrls));
      setState(() => loading = false);
      userState.getUser();
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => HomeScreen()), (_) => true);
    }

    Future<File?> pickImage() async {
      final xFile = await picker.pickImage(source: ImageSource.gallery);
      if (xFile == null) return null;
      return await ImageCropper.cropImage(
          sourcePath: xFile.path,
          aspectRatio: CropAspectRatio(ratioX: 1.0, ratioY: 1.0));
    }

    final imageWidgets = selectedPhotos
        .map((xfile) => Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            width: imageWidth,
            height: imageWidth,
            child: FutureBuilder(
                future: xfile?.readAsBytes(),
                builder: (context, snapshot) => snapshot.hasData
                    ? Image.memory(snapshot.data as Uint8List,
                        fit: BoxFit.cover)
                    : Container())))
        .toList();

    for (int i = 0; i < 6 - selectedPhotos.length; i++) {
      imageWidgets.add(Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey[400]),
          width: imageWidth,
          height: imageWidth,
          child: IconButton(
              iconSize: 40,
              onPressed: () async {
                final image = await pickImage();
                if (image != null) {
                  selectedPhotos.add(image);
                  setState(() => selectedPhotos = selectedPhotos);
                }
              },
              icon: Icon(Icons.add, color: Colors.white))));
    }
    return ChangeNotifierProvider<SetupState>(
        create: (_) => SetupState(),
        builder: (context, _) {
          return Scaffold(
              body: Form(
            child: LayoutBuilder(
              builder: (context, constraints) => SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                    minWidth: constraints.maxWidth,
                  ),
                  child: IntrinsicHeight(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: padding),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 50),
                            Center(
                              child: Image.asset("assets/text_logo.png",
                                  height: 100),
                            ),
                            SizedBox(height: sectionSpacing),
                            Text('Select Profile Photo', style: headingStyle),
                            SizedBox(height: headingSpacing),
                            Container(
                                width: 120,
                                height: 120,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                child: profilePhoto == null
                                    ? IconButton(
                                        iconSize: 40,
                                        onPressed: () async {
                                          final image = await pickImage();
                                          if (image != null) {
                                            setState(
                                                () => profilePhoto = image);
                                          }
                                        },
                                        icon: Icon(Icons.add,
                                            color: Colors.white))
                                    : FutureBuilder(
                                        future: profilePhoto!.readAsBytes(),
                                        builder: (context, snapshot) =>
                                            snapshot.hasData
                                                ? Image.memory(
                                                    snapshot.data as Uint8List,
                                                    fit: BoxFit.cover)
                                                : Container())),
                            SizedBox(height: sectionSpacing),
                            Text('Select Other Photos', style: headingStyle),
                            SizedBox(height: headingSpacing),
                            Wrap(
                                spacing: imageSpacing,
                                runSpacing: 10.0,
                                children: imageWidgets),
                            Spacer(),
                            Center(
                              child: loading
                                  ? Center(child: CircularProgressIndicator())
                                  : RoundedArrowButton(
                                      disabled: selectedPhotos.length == 0 ||
                                          profilePhoto == null,
                                      text: "Continue",
                                      onPressed: () =>
                                          onPressed(userState.user!.id),
                                    ),
                            ),
                            SizedBox(height: 40)
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          ));
        });
  }
}
