import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/home/home.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/setup_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/entry/image_box.dart';
import 'package:whatado/widgets/entry/select_image_box.dart';
import 'package:whatado/widgets/entry/select_profile_image_box.dart';

class SelectPhotosScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SelectPhotosScreenState();
}

class _SelectPhotosScreenState extends State<SelectPhotosScreen> {
  late bool loading;

  @override
  void initState() {
    super.initState();
    loading = false;
  }

  final headingStyle = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
  final headingSpacing = 10.0;
  final padding = 30.0;
  final sectionSpacing = 35.0;
  final imageSpacing = 10.0;
  final paragraphStyle = TextStyle(fontSize: 20);

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final setupState = Provider.of<SetupState>(context);
    final imageWidth =
        (MediaQuery.of(context).size.width - (padding + imageSpacing) * 2) /
            3.0;

    final theList = [
      ...setupState.photos.map((xfile) => ImageBox(
          data: xfile?.readAsBytesSync() ?? Uint8List.fromList([]),
          url: null,
          imageWidth: imageWidth,
          onRemove: () => setupState.removePhoto(xfile))),
      ...List.generate(
          6 - setupState.photos.length,
          (i) => SelectImageBox(
              imageWidth: imageWidth,
              onSelect: () async {
                final image = await cloudStorageService.pickImage();
                if (image != null) {
                  final updatedPhotos = setupState.photos;
                  updatedPhotos.add(image);
                  final updatedPhotosData = setupState.photosImageData;
                  updatedPhotosData
                      .add(cloudStorageService.resize(file: image));
                  //update
                  setupState.photos = updatedPhotos;
                  setupState.photosImageData = updatedPhotosData;
                  print(setupState.photosImageData.length);
                }
              }))
    ];

    void onPressed(int userId) async {
      setState(() => loading = true);
      // upload images to cloud
      final List<String?> photoUrls = await Future.wait(
          setupState.photosImageData.map<Future<String?>>((data) {
        if (data == null) return Future.value(null);
        return cloudStorageService.uploadImage(data, userId, userImage: true);
      }));

      // save urls to user profile
      final provider = UserGqlProvider();
      if (photoUrls.contains(null)) return;
      await provider.updatePhotos(List<String>.from(photoUrls));
      setState(() => loading = false);
      // reload user object
      userState.getUser();
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => HomeScreen()), (_) => false);
    }

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
                        child: Image.asset("assets/text_logo.png", height: 100),
                      ),
                      SizedBox(height: sectionSpacing),
                      Text('Profile Pictures', style: headingStyle),
                      SizedBox(height: headingSpacing),
                      Text('Great!  Now add a few pictures.',
                          style: paragraphStyle),
                      SizedBox(height: headingSpacing),
                      Wrap(
                          spacing: imageSpacing,
                          runSpacing: 10.0,
                          children: theList),
                      Spacer(),
                      Center(
                        child: loading
                            ? Center(child: CircularProgressIndicator())
                            : RoundedArrowButton(
                                disabled: setupState.photos.length == 0,
                                text: "Continue",
                                onPressed: userState.user == null
                                    ? null
                                    : () => onPressed(userState.user!.id),
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
  }
}
