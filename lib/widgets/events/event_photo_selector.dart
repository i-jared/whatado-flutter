import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/add_event_state.dart';

class EventPhotoSelector extends StatefulWidget {
  @override
  _StateEventPhotoSelector createState() => _StateEventPhotoSelector();
}

class _StateEventPhotoSelector extends State<EventPhotoSelector> {
  late bool paginationDone;
  late bool loading;
  late int page;
  late bool noImages;
  late List<Map<String, dynamic>> loadedAssets;
  late List<Uint8List> thumbdata;
  late ScrollController _controller;

  @override
  void initState() {
    super.initState();
    noImages = false;
    loading = true;
    paginationDone = false;
    page = 0;
    thumbdata = [];
    _controller = ScrollController()
      ..addListener(() async {
        if (!paginationDone &&
            _controller.position.atEdge &&
            _controller.position.pixels != 0) {
          await loadMorePhotos();
        }
      });
    initPhotos();
  }

  Future<void> loadMorePhotos() async {
    final albums = await PhotoManager.getAssetPathList(
        onlyAll: true, type: RequestType.image);
    final album = albums.first;
    final nextAssets = await album.getAssetListPaged(page, 40);
    if (nextAssets.isEmpty) {
      setState(() => paginationDone = true);
    }

    setState(() => page = page + 1);
    List<Map<String, dynamic>> tempLoadedAssets = await Future.wait(nextAssets
        .map((asset) async => {
              "asset": asset,
              "thumb": await asset.thumbData,
              "valid": await asset.exists && asset.type == AssetType.image
            })
        .toList());
    loadedAssets.addAll(tempLoadedAssets);
    setState(() {
      loadedAssets = loadedAssets;
    });
  }

  void initPhotos() async {
    final eventState = Provider.of<AddEventState>(context, listen: false);
    var result = await PhotoManager.requestPermissionExtend();
    if (result.isAuth) {
      try {
        eventState.textMode = false;
        final albums = await PhotoManager.getAssetPathList(
            onlyAll: true, type: RequestType.image);
        final album = albums.first;
        final recentAssets = await album.getAssetListPaged(page, 40);
        List<Map<String, dynamic>> tempLoadedAssets =
            await Future.wait(recentAssets
                .map((asset) async => {
                      "asset": asset,
                      "thumb": await asset.thumbData,
                      "valid":
                          await asset.exists && asset.type == AssetType.image
                    })
                .toList());
        eventState.selectedImage = tempLoadedAssets
            .firstWhere((assetMap) => assetMap["valid"])["asset"];
        setState(() {
          loadedAssets = tempLoadedAssets;
          page = 1;
        });
      } catch (e) {
        setState(() => noImages = true);
      }
    } else {
      setState(() => noImages = true);
    }
    setState(() => loading = false);
  }

  @override
  Widget build(BuildContext context) {
    final eventState = Provider.of<AddEventState>(context);
    if (loading) {
      return Center(child: CircularProgressIndicator());
    }
    return noImages
        ? Center(
            child: Wrap(alignment: WrapAlignment.center, children: [
            Text(
              'No images? Make sure you allow Whatado to access your photos. ',
              textAlign: TextAlign.center,
            ),
            TextButton(
                onPressed: PhotoManager.openSetting,
                child: Text('open settings'))
          ]))
        : Container(
            color: Colors.grey[50],
            child: GridView.count(
                controller: _controller,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 1.0,
                crossAxisCount: 4,
                children: loadedAssets
                    .where((map) => map['valid'] ?? false)
                    .map((assetMap) => InkWell(
                        onTap: () =>
                            eventState.selectedImage = assetMap['asset'],
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.memory(assetMap['thumb'], fit: BoxFit.cover),
                            if (eventState.selectedImage == assetMap['asset'])
                              Opacity(
                                  opacity: 0.3,
                                  child: Container(color: Colors.blue))
                          ],
                        )))
                    .toList()),
          );
  }
}
