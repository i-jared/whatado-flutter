import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/add_event_state.dart';

class AddEventDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    final eventState = Provider.of<AddEventState>(context);
    return AppBar(
      iconTheme: IconThemeData(color: Colors.grey[850]),
      backgroundColor: Colors.grey[50],
      title: Text('Add Event',
          style: TextStyle(fontSize: 23, color: Colors.grey[850])),
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: TextButton(
                child: Text('SAVE', style: TextStyle(color: Color(0xffe85c3f))),
                onPressed: !eventState.ready
                    ? () => null
                    : () =>
                        Navigator.popUntil(context, (route) => route.isFirst))),
      ],
      centerTitle: true,
      elevation: 0.0,
    );
  }
}
