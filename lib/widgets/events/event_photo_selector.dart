import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/utils/logger.dart';

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
        if (!paginationDone && _controller.position.atEdge && _controller.position.pixels != 0) {
          await loadMorePhotos();
        }
      });
    SchedulerBinding.instance.addPostFrameCallback((_) {
      initPhotos(context);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> loadMorePhotos() async {
    final albums = await PhotoManager.getAssetPathList(
      onlyAll: true,
      type: RequestType.image,
    );
    final album = albums.first;
    final nextAssets = await album.getAssetListPaged(page: page, size: 40);
    if (nextAssets.isEmpty) {
      setState(() => paginationDone = true);
    }

    setState(() => page = page + 1);
    List<Map<String, dynamic>> tempLoadedAssets = await Future.wait(nextAssets
        .map((asset) async => {
              "asset": asset,
              "thumb": await asset.thumbnailData,
              "valid": asset.type == AssetType.image
            })
        .toList());
    loadedAssets.addAll(tempLoadedAssets);
    setState(() {
      loadedAssets = loadedAssets;
    });
  }

  void initPhotos(BuildContext context) async {
    final eventState = Provider.of<AddEventState>(context, listen: false);
    var result = await PhotoManager.requestPermissionExtend();
    logger.wtf(result);
    if (result.isAuth) {
      try {
        eventState.textMode = false;
        final albums = await PhotoManager.getAssetPathList(onlyAll: true, type: RequestType.image);
        final album = albums.first;
        final recentAssets = await album.getAssetListPaged(page: page, size: 40);
        List<Map<String, dynamic>> tempLoadedAssets = await Future.wait(recentAssets
            .map((asset) async => {
                  "asset": asset,
                  "thumb": await asset.thumbnailData,
                  "valid": asset.type == AssetType.image
                })
            .toList());
        await eventState
            .setImage(tempLoadedAssets.firstWhere((assetMap) => assetMap["valid"])["asset"]);
        setState(() {
          loadedAssets = tempLoadedAssets;
          page = 1;
        });
      } catch (e) {
        logger.e(e.toString());
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
    return noImages || loadedAssets.isEmpty
        ? Center(
            child: Wrap(alignment: WrapAlignment.center, children: [
            Text(
              'Make sure you allow Whatado to access your photos. ',
              textAlign: TextAlign.center,
            ),
            TextButton(onPressed: PhotoManager.openSetting, child: Text('open settings'))
          ]))
        : Container(
            color: AppColors.background,
            child: GridView.count(
                controller: _controller,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 1.0,
                crossAxisCount: 4,
                children: loadedAssets
                    .where((map) => map['valid'] ?? false)
                    .map((assetMap) => InkWell(
                        onTap: () async {
                          await eventState.setImage(assetMap['asset']);
                        },
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.memory(assetMap['thumb'], fit: BoxFit.cover),
                            if (eventState.selectedImage == assetMap['asset'])
                              Opacity(opacity: 0.3, child: Container(color: Colors.blue))
                          ],
                        )))
                    .toList()),
          );
  }
}
