import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:photo_view/photo_view.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/widgets/appbars/add_event_app_bar.dart';
import 'package:whatado/widgets/events/event_photo_selector.dart';

class AddEvent extends StatefulWidget {
  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.grey[50],
        statusBarColor: Colors.grey[50]));
  }

  @override
  Widget build(BuildContext context) {
    final eventState = Provider.of<AddEventState>(context);
    return Container(
      color: Colors.grey[50],
      child: SafeArea(
        top: Platform.isIOS ? false : true,
        bottom: Platform.isIOS ? false : true,
        child: Scaffold(
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
                              hintText: "What are your plans?", border: InputBorder.none),
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
                                color: eventState.textMode ? AppColors.primary : null,
                                icon: Icon(Icons.text_fields_outlined),
                                iconSize: 30,
                                onPressed: () => eventState.textMode = true),
                            IconButton(
                                color: !eventState.textMode ? AppColors.primary : null,
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
        ),
      ),
    );
  }
}
