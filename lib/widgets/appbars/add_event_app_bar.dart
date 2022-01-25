import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:whatado/screens/add_event/add_event_details.dart';
import 'package:whatado/state/add_event_state.dart';

class AddEventAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    final eventState = Provider.of<AddEventState>(context);
    bool ready = !eventState.textMode ||
        (eventState.textMode && eventState.textModeController.text.isNotEmpty);
    return AppBar(
      iconTheme: IconThemeData(color: Colors.grey[850]),
      backgroundColor: Colors.grey[50],
      leading: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            Navigator.pop(context);
          }),
      title: Text('Add Event',
          style: TextStyle(fontSize: 23, color: Colors.grey[850])),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: TextButton(
              child: Text('NEXT',
                  style: TextStyle(
                      color: !ready ? Colors.grey : Color(0xfff7941d))),
              onPressed: !ready
                  ? null
                  : () {
                      eventState.savePhotoInfo();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddEventDetails())).then(
                          (_) => SystemChrome.setSystemUIOverlayStyle(
                              SystemUiOverlayStyle(
                                  statusBarBrightness: Brightness.dark,
                                  statusBarIconBrightness: Brightness.dark,
                                  systemNavigationBarColor: Colors.grey[50],
                                  statusBarColor: Colors.grey[50])));
                    }),
        ),
      ],
      centerTitle: true,
      elevation: 0.0,
    );
  }
}
