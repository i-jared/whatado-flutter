import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:photo_view/photo_view.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/widgets/appbars/add_event_app_bar.dart';
import 'package:photo_manager/photo_manager.dart';

class AddEvent extends StatefulWidget {
  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  bool textMode = false;
  bool loading = true;
  late int page;
  late List<Map<String, dynamic>> loadedAssets;
  List<Uint8List> thumbdata = [];
  @override
  void initState() {
    super.initState();
    page = 0;

    initPhotos();
  }

  void initPhotos() async {
    final addEventState = Provider.of<AddEventState>(context, listen: false);
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

      addEventState.selectedImage = recentAssets.first;
      setState(() {
        loadedAssets = tempLoadedAssets;
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
    final addEventState = Provider.of<AddEventState>(context);
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
                          future: addEventState.selectedImage?.originBytes,
                          builder: (context, snapshot) {
                            if (snapshot.data == null) return Container();
                            final bytes = snapshot.data as Uint8List;

                            return FadeIn(
                                key: ValueKey(snapshot.data),
                                duration: Duration(milliseconds: 200),
                                child: PhotoView(
                                    controller: addEventState.photoController,
                                    minScale: PhotoViewComputedScale.covered,
                                    backgroundDecoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                    imageProvider: MemoryImage(bytes)));
                          })),
          Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                  color: Colors.grey[50],
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
                      : Container(
                          color: Colors.grey[50],
                          child: GridView.count(
                              crossAxisSpacing: 1.0,
                              mainAxisSpacing: 1.0,
                              crossAxisCount: 4,
                              children: loadedAssets
                                  .map((assetMap) => InkWell(
                                      onTap: () => setState(() => addEventState
                                          .selectedImage = assetMap['asset']),
                                      child: Stack(
                                        fit: StackFit.expand,
                                        children: [
                                          Image.memory(assetMap['thumb'],
                                              fit: BoxFit.cover),
                                          if (addEventState.selectedImage ==
                                              assetMap['asset'])
                                            Opacity(
                                                opacity: 0.3,
                                                child: Container(
                                                    color: Colors.blue))
                                        ],
                                      )))
                                  .toList()),
                        )),
        ],
      ),
    );
  }
}
