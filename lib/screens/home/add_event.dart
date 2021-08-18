import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:whatado/widgets/appbars/add_event_app_bar.dart';
import 'package:photo_manager/photo_manager.dart';

class AddEvent extends StatefulWidget {
  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  late TextEditingController textController;
  bool textMode = false;
  bool loading = true;
  late int page;
  late AssetEntity selectedImage;
  late List<Map<String, dynamic>> loadedAssets;
  List<Uint8List> thumbdata = [];
  @override
  void initState() {
    super.initState();
    page = 0;
    textController = TextEditingController();
    initPhotos();
  }

  void initPhotos() async {
    var result = await PhotoManager.requestPermissionExtend();
    // TODO configure iOS app for firebase and photomanager
    if (result.isAuth) {
      setState(() => textMode = false);
      final albums = await PhotoManager.getAssetPathList(onlyAll: true);
      final album = albums.first;
      final recentAssets = await album.getAssetListPaged(page, 20);
      List<Map<String, dynamic>> tempLoadedAssets = await Future.wait(
          recentAssets
              .map((asset) async =>
                  {"asset": asset, "thumb": await asset.thumbData})
              .toList());
      setState(() {
        loadedAssets = tempLoadedAssets;
        selectedImage = recentAssets.first;
        page = 20;
        loading = false;
      });
    } else
      setState(() {
        textMode = true;
        loading = false;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AddEventAppBar(),
      body: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              child: textMode
                  ? Center(
                      child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        maxLines: null,
                        decoration: InputDecoration(
                            hintText: "What are your plans?",
                            border: InputBorder.none),
                        style: TextStyle(fontSize: 30),
                      ),
                    ))
                  : loading
                      ? Container()
                      : FutureBuilder(
                          future: selectedImage.originBytes,
                          builder: (context, snapshot) {
                            if (snapshot.data == null) return Container();
                            final bytes = snapshot.data as Uint8List;
                            return FadeIn(
                                key: ValueKey(snapshot.data),
                                duration: Duration(milliseconds: 200),
                                child: Image.memory(bytes, fit: BoxFit.cover));
                          })),
          Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        color: textMode ? Color(0xffe85c3f) : null,
                        icon: Icon(Icons.text_fields_outlined),
                        iconSize: 30,
                        onPressed: () => setState(() => textMode = true)),
                    IconButton(
                        color: !textMode ? Color(0xffe85c3f) : null,
                        icon: Icon(Icons.camera_alt_outlined),
                        iconSize: 30,
                        onPressed: () => setState(() => textMode = false))
                  ],
                ),
              ))),
          Flexible(
              fit: FlexFit.tight,
              flex: 5,
              child: textMode
                  ? Container()
                  : loading
                      ? Center(child: CircularProgressIndicator())
                      : GridView.count(
                          crossAxisSpacing: 1.0,
                          mainAxisSpacing: 1.0,
                          crossAxisCount: 4,
                          children: loadedAssets
                              .map((assetMap) => InkWell(
                                  onTap: () => setState(
                                      () => selectedImage = assetMap['asset']),
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: [
                                      Image.memory(assetMap['thumb'],
                                          fit: BoxFit.cover),
                                      if (selectedImage == assetMap['asset'])Opacity(
                                          opacity: 0.3,
                                          child:
                                              Container(color: Colors.blue))
                                    ],
                                  )))
                              .toList())),
        ],
      ),
    );
  }
}
