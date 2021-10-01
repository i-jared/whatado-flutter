import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/providers/graphql/forums_provider.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/home/all_events.dart';
import 'package:whatado/screens/home/chats.dart';
import 'package:whatado/screens/profile/my_profile.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/home_app_bar.dart';
import 'package:whatado/widgets/appbars/my_profile_app_bar.dart';
import 'package:whatado/widgets/home/my_navigation_bar.dart';

import 'my_events.dart';
import 'my_forums.dart';

class HomeScreen extends StatefulWidget {
  PreferredSizeWidget? getAppBar(int pageNo) {
    if (pageNo == 0)
      return HomeAppBar();
    else
      return MyProfileAppBar();
  }

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> setupInteractedMessage() async {
    // notifications when terminated
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      await _handleMessage(initialMessage);
    }

    // notifications when in background
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  Future<void> _handleMessage(RemoteMessage message) async {
    if (message.data['type'] == 'chat') {
      final eventId = message.data['eventId'];
      final forumId = message.data['forumId'];
      final eventProvider = EventsGqlProvider();
      final forumProvider = ForumsGqlProvider();
      final eventResult = await eventProvider.event(eventId);
      final forumResult = await forumProvider.forum(forumId);
      if (eventResult.ok && forumResult.ok) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Chats(
                      event: eventResult.data!,
                      forum: forumResult.data!,
                    )));
      }
    }
    if (message.data['type'] == 'event') {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        localNotificationService.flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                localNotificationService.channel.id,
                localNotificationService.channel.name,
                localNotificationService.channel.description,
                icon: android.smallIcon,
                // other properties...
              ),
            ));
      }
      final homeState = Provider.of<HomeState>(context, listen: false);
      await homeState.myEventsRefresh();
    }
  }

  Future<void> saveDeviceToken(String? token) async {
    final userState = Provider.of<UserState>(context, listen: false);
    if (token == null || userState.user == null) return;
    final provider = UserGqlProvider();
    await provider
        .updateUser(UserFilterInput(id: userState.user!.id, deviceId: token));
  }

  Future<void> setupTokenSaving() async {
    final token = await FirebaseMessaging.instance.getToken();
    await saveDeviceToken(token);
    FirebaseMessaging.instance.onTokenRefresh.listen(saveDeviceToken);
  }

  Future<void> setupPermissions() async {
    // request permissions
    final messaging = FirebaseMessaging.instance;
    final settings = await messaging.requestPermission();
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('permission granted');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print('provisional permissions');
    } else {
      print('permission declined');
    }
  }

  @override
  void initState() {
    super.initState();
    setupPermissions();
    setupTokenSaving();
    setupInteractedMessage();
  }

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    return Scaffold(
        appBar: widget.getAppBar(homeState.bottomBarPageNo),
        body: homeState.bottomBarPageNo == 0
            ? PageView(
                key: PageStorageKey(9),
                onPageChanged: (pageNo) => homeState.appBarPageNo = pageNo,
                controller: homeState.homePageController,
                children: [AllEvents(), MyEvents(), MyForums()],
              )
            : MyProfile(),
        bottomNavigationBar: MyNavigationBar(
          indexSetState: (pageNo) => homeState.bottomBarPageNo = pageNo,
          selectedIndex: homeState.bottomBarPageNo,
        ));
  }
}
