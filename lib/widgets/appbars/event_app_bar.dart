import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/forum.dart';
import 'package:whatado/providers/graphql/forums_provider.dart';
import 'package:whatado/screens/home/chats.dart';
import 'package:whatado/screens/home/edit_event_details.dart';
import 'package:whatado/state/edit_event_state.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/general/app_bar_action.dart';

class EventAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Event event;
  EventAppBar({required this.event});

  @override
  Size get preferredSize => Size.fromHeight(50.0);

  final dateFormat = DateFormat('EEE, M-d-y');
  final timeFormat = DateFormat('jm');
  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final homeState = Provider.of<HomeState>(context);
    return AppBar(
      leading: Container(
        margin: EdgeInsets.only(left: 6),
        child: AppBarAction(
          child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back, color: AppColors.primary)),
        ),
      ),
      backgroundColor: AppColors.background,
      elevation: 0,
      actions: [
        AppBarAction(
          child: IconButton(
              visualDensity: VisualDensity(
                  horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity),
              onPressed: homeState.myForums == null || homeState.myForums!.isEmpty
                  ? null
                  : () async {
                      final Forum forum =
                          homeState.myForums!.firstWhere((f) => f.eventId == event.id);
                      final provider = ForumsGqlProvider();
                      final result = await provider.access(forum.userNotification.id);
                      if (result.ok) homeState.accessForum(forum);
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Chats(event: event, forum: forum)))
                          .then((_) async {
                        await homeState.myEventsRefresh();
                      });
                    },
              icon: Icon(Icons.forum_outlined),
              color: AppColors.primary),
        ),
        if (userState.user?.id == event.creator.id)
          AppBarAction(
            child: IconButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
                      final forum =
                          homeState.myForums?.firstWhereOrNull((f) => f.eventId == event.id) ??
                              null;
                      return ChangeNotifierProvider(
                          create: (context) => EditEventState(event, forum),
                          child: EditEventDetails(event: event, forum: forum));
                    })),
                icon: Icon(Icons.edit_outlined),
                color: AppColors.primary),
          ),
        SizedBox(width: 30),
      ],
    );
  }
}
