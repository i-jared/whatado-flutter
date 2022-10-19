import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/forum.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/providers/graphql/forums_provider.dart';
import 'package:whatado/screens/home/chats.dart';
import 'package:whatado/screens/home/edit_event_details.dart';
import 'package:whatado/state/edit_event_state.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/dialogs.dart';
import 'package:whatado/utils/logger.dart';
import 'package:whatado/widgets/dialog/confirm_cancel_dialog.dart';
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
    final Forum? forum = homeState.myForums?.firstWhereOrNull((f) => f.eventId == event.id);
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
              onPressed: homeState.myForums == null || homeState.myForums!.isEmpty || forum == null
                  ? null
                  : () async {
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
          )
        else
          AppBarAction(
            child: PopupMenuButton(
                icon: Icon(Icons.more_vert, color: AppColors.primary),
                onSelected: (value) async {
                  if (value == 'unmute') {
                    final provider = ForumsGqlProvider();
                    final result = await provider.unmute(forum!.userNotification.id);
                    if (result.ok) {
                      BotToast.showText(text: "Successfully unmuted chat");
                      Forum copy = forum!..userNotification.muted = false;
                      forum.userNotification.muted = false;
                      homeState.updateForum(copy);
                    } else {
                      BotToast.showText(text: "Error unmuting chat");
                    }
                  }
                  if (value == 'mute') {
                    final provider = ForumsGqlProvider();
                    final result = await provider.mute(forum!.userNotification.id);
                    if (result.ok) {
                      BotToast.showText(text: "Successfully muted chat");
                      Forum copy = forum..userNotification.muted = false;
                      forum.userNotification.muted = true;
                      homeState.updateForum(copy);
                    } else {
                      BotToast.showText(text: "Error muting chat");
                    }
                  }
                  if (value == 'leave') {
                    showMyDialog(
                        context,
                        ConfirmCancelDialog.async(
                            title: 'Leave Event?',
                            body: 'Are you sure you want to leave the event?',
                            confirmText: 'Leave',
                            onConfirmAsync: () async {
                              final provider = EventsGqlProvider();
                              final result = await provider.removeInvite(
                                  eventId: event.id, userId: userState.user!.id);
                              if (result.ok) {
                                await homeState.myEventsRefresh();
                                Navigator.popUntil(context, (route) => route.isFirst);
                                BotToast.showText(text: "Successfully left event");
                              } else {
                                logger.e(result.errors);
                                BotToast.showText(text: "Error leaving event");
                              }
                            }));
                  }
                  if (value == 'delete') {
                    showMyDialog(
                        context,
                        ConfirmCancelDialog.async(
                            title: 'Delete Event?',
                            body:
                                'Are you sure you want to delete the event? This will delete the event and chat for all members.',
                            confirmText: 'Delete',
                            onConfirmAsync: () async {
                              final provider = EventsGqlProvider();
                              final result = await provider.deleteEvent(event.id);
                              if (result.ok) {
                                await homeState.myEventsRefresh();
                                Navigator.popUntil(context, (route) => route.isFirst);
                                BotToast.showText(text: "Successfully deleted event");
                              } else {
                                BotToast.showText(text: "Error deleting event");
                              }
                            }));
                  }
                },
                itemBuilder: (context) => [
                      if (forum!.userNotification.muted)
                        PopupMenuItem(
                          child: Row(children: [
                            Icon(Icons.volume_up_outlined, color: Colors.blue, size: 30),
                            SizedBox(width: 10),
                            Text('unmute', style: TextStyle(color: Colors.blue))
                          ]),
                          value: 'unmute',
                        ),
                      if (!forum.userNotification.muted)
                        PopupMenuItem(
                          child: Row(children: [
                            Icon(Icons.volume_off_outlined, color: Colors.blue, size: 30),
                            SizedBox(width: 10),
                            Text('mute', style: TextStyle(color: Colors.blue))
                          ]),
                          value: 'mute',
                        ),
                      if (userState.user?.id == event.creator.id)
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(Icons.logout_outlined, color: Colors.red, size: 30),
                              SizedBox(width: 10),
                              Text('delete', style: TextStyle(color: Colors.red))
                            ],
                          ),
                          value: 'delete',
                        ),
                      if (userState.user?.id != event.creator.id)
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(Icons.logout_outlined, color: Colors.red, size: 30),
                              SizedBox(width: 10),
                              Text('leave', style: TextStyle(color: Colors.red))
                            ],
                          ),
                          value: 'leave',
                        )
                    ]),
          ),
        SizedBox(width: 20),
      ],
    );
  }
}
