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
    final eventState = Provider.of<AddEventState>(context, listen: false);
    var result = await PhotoManager.requestPermissionExtend();
    if (result.isAuth) {
      eventState.textMode = false;
      final albums = await PhotoManager.getAssetPathList(onlyAll: true);
      final album = albums.first;
      final recentAssets = await album.getAssetListPaged(page, 20);
      List<Map<String, dynamic>> tempLoadedAssets = await Future.wait(
          recentAssets
              .map((asset) async =>
                  {"asset": asset, "thumb": await asset.thumbData})
              .toList());

      eventState.selectedImage = recentAssets.first;
      setState(() {
        loadedAssets = tempLoadedAssets;
        page = 20;
        loading = false;
      });
    } else
      eventState.textMode = true;
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final eventState = Provider.of<AddEventState>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AddEventAppBar(),
      body: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              child: eventState.textMode
                  ? Center(
                      child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: TextFormField(
                        controller: eventState.textModeController,
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
                          future: eventState.selectedImage?.originBytes,
                          builder: (context, snapshot) {
                            if (snapshot.data == null) return Container();
                            final bytes = snapshot.data as Uint8List;

                            return FadeIn(
                                key: ValueKey(snapshot.data),
                                duration: Duration(milliseconds: 200),
                                child: PhotoView(
                                    controller: eventState.photoController,
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
                            color:
                                eventState.textMode ? Color(0xffe85c3f) : null,
                            icon: Icon(Icons.text_fields_outlined),
                            iconSize: 30,
                            onPressed: () => eventState.textMode = true),
                        IconButton(
                            color:
                                !eventState.textMode ? Color(0xffe85c3f) : null,
                            icon: Icon(Icons.camera_alt_outlined),
                            iconSize: 30,
                            onPressed: () => eventState.textMode = false)
                      ],
                    ),
                  ))),
          Flexible(
              fit: FlexFit.tight,
              flex: 5,
              child: eventState.textMode
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
                                      onTap: () => eventState.selectedImage =
                                          assetMap['asset'],
                                      child: Stack(
                                        fit: StackFit.expand,
                                        children: [
                                          Image.memory(assetMap['thumb'],
                                              fit: BoxFit.cover),
                                          if (eventState.selectedImage ==
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
