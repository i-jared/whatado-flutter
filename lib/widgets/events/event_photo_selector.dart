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
  @override
  void initState() {
    super.initState();
    // final eventState = Provider.of<AddEventState>(context, listen: false);
    // eventState.loadPhotos();
  }

  @override
  Widget build(BuildContext context) {
    final eventState = Provider.of<AddEventState>(context);
    if (eventState.photoAssets == null) {
      return Center(child: CircularProgressIndicator());
    }
    return eventState.photoAssets!.isEmpty
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
                controller: eventState.thumbScrollController,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 1.0,
                crossAxisCount: 4,
                children: eventState.photoAssets!
                    .map((asset) => InkWell(
                        onTap: () => eventState.selectedImage = asset,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            // FutureBuilder<Uint8List?>(
                            //     future: asset?.thumbData,
                            //     builder: (context, snapshot) {
                            //       if (snapshot.data == null) return Container();
                            //       return Image.memory(snapshot.data!,
                            //           fit: BoxFit.cover);
                            //     }),
                            if (eventState.selectedImage == asset)
                              Opacity(
                                  opacity: 0.3,
                                  child: Container(color: Colors.blue))
                          ],
                        )))
                    .toList()),
          );
  }
}
