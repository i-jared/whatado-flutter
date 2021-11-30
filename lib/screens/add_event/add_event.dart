import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:photo_view/photo_view.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/widgets/appbars/add_event_app_bar.dart';
import 'package:whatado/widgets/events/event_photo_selector.dart';

class AddEvent extends StatefulWidget {
  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
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
                : eventState.selectedImage == null ||
                        eventState.selectedImageFile == null ||
                        eventState.selectedImageBytes == null
                    ? Center(child: CircularProgressIndicator())
                    : FadeIn(
                        key: ValueKey(eventState.selectedImageBytes),
                        duration: Duration(milliseconds: 500),
                        child: PhotoView(
                            loadingBuilder: (context, _) =>
                                Center(child: CircularProgressIndicator()),
                            controller: eventState.photoController,
                            minScale: PhotoViewComputedScale.covered,
                            backgroundDecoration:
                                BoxDecoration(color: Colors.grey[200]),
                            imageProvider:
                                MemoryImage(eventState.selectedImageBytes!))),

            // final bytes = file.readAsBytesSync();
            // final widget = FadeIn(
            //     key: ValueKey(bytes),
            //     duration: Duration(milliseconds: 500),
            //     child: PhotoView(
            //         loadingBuilder: (context, _) => Center(
            //             child: CircularProgressIndicator()),
            //         controller: eventState.photoController,
            //         minScale: PhotoViewComputedScale.covered,
            //         backgroundDecoration:
            //             BoxDecoration(color: Colors.grey[200]),
            //         imageProvider: MemoryImage(bytes)));
            // return widget;
          ),
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
              child: eventState.textMode ? Container() : EventPhotoSelector()),
        ],
      ),
    );
  }
}
