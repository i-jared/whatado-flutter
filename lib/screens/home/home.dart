import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/providers/graphql/forums_provider.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/home/all_events.dart';
import 'package:whatado/screens/home/chats.dart';
import 'package:whatado/screens/home/search_page.dart';
import 'package:whatado/screens/profile/my_profile.dart';
import 'package:whatado/screens/home/settings.dart';
import 'package:whatado/screens/profile/user_profile.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';
import 'package:whatado/widgets/appbars/home_app_bar.dart';
import 'package:whatado/widgets/general/generic_page.dart';
import 'package:whatado/widgets/home/my_navigation_bar.dart';

import 'event_details.dart';
import 'my_events.dart';
import 'my_forums.dart';

class HomeScreen extends StatefulWidget {
  PreferredSizeWidget? getAppBar(int pageNo) {
    if (pageNo == 0)
      return HomeAppBar();
    else if (pageNo == 1)
      return null;
    else if (pageNo == 2)
      return DefaultAppBar(title: "Settings");
    else
      return null;
    // return MyProfileAppBar();
  }

//TODO: show contacts prompt in setup
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> setupInteractedMessage() async {
    // notifications when terminated
    RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      await _handleMessage(initialMessage);
    }

    // notifications when in foreground
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      if (message.data['type'] == 'event') {
        final homeState = Provider.of<HomeState>(context, listen: false);
        await homeState.myEventsRefresh();
        RemoteNotification? notification = message.notification;
        if (notification != null) {
          localNotificationService.flutterLocalNotificationsPlugin.show(
              notification.hashCode,
              notification.title,
              notification.body,
              NotificationDetails(
                android: AndroidNotificationDetails(
                  localNotificationService.channel.id,
                  localNotificationService.channel.name,
                  channelDescription: localNotificationService.channel.description,
                  // other properties...
                ),
              ));
        }
      } else if (message.data['type'] == 'chat') {
        final homeState = Provider.of<HomeState>(context, listen: false);
        await homeState.getMyForums();
      } else if (message.data['type'] == 'friend') {
        final userState = Provider.of<UserState>(context, listen: false);
        await userState.getUser();
      }
    });

    // notifications when in background
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  Future<void> _handleMessage(RemoteMessage message) async {
    if (message.data['type'] == 'chat') {
      final eventId = int.parse(message.data['eventId']);
      final forumId = int.parse(message.data['forumId']);
      final eventProvider = EventsGqlProvider();
      final forumProvider = ForumsGqlProvider();
      final eventResult = await eventProvider.event(eventId);
      final forumResult = await forumProvider.forum(forumId);
      await forumProvider.access(forumId);
      if (eventResult.ok && forumResult.ok) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Chats(
                      event: eventResult.data!,
                      forum: forumResult.data!,
                    )));
      }
    } else if (message.data['type'] == 'event') {
      final homeState = Provider.of<HomeState>(context, listen: false);
      final eventProvider = EventsGqlProvider();
      final eventResult = await eventProvider.event(int.parse(message.data['eventId']));
      await homeState.myEventsRefresh();
      if (eventResult.ok) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EventDetails(event: eventResult.data!)));
      }
    } else if (message.data['type'] == 'friend') {
      final userProvider = UserGqlProvider();
      final result = await userProvider.user(int.parse(message.data['userId']));
      if (result.ok)
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => UserProfile(user: result.data!)));
    }
  }

  Future<void> saveDeviceToken(String? token) async {
    if (token == null || loginService.userId == null) return;
    final provider = UserGqlProvider();
    await provider.updateUser(UserFilterInput(deviceId: token));
  }

  Future<void> setupTokenSaving() async {
    final token = await FirebaseMessaging.instance.getToken();
    await saveDeviceToken(token);
    FirebaseMessaging.instance.onTokenRefresh.listen(saveDeviceToken);
    // set firebase crashlytics id
    final userState = Provider.of<UserState>(context, listen: false);
    if (userState.user != null) {
      FirebaseCrashlytics.instance.setUserIdentifier(userState.user!.id.toString());
    }
  }

  Future<void> setupPermissions() async {
    // request permissions
    final messaging = FirebaseMessaging.instance;
    final settings = await messaging.requestPermission();
    await FlutterContacts.requestPermission(readonly: true);
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('permission granted');
    } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
      print('provisional permissions');
    } else {
      print('permission declined');
    }
  }

  @override
  void initState() {
    super.initState();
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarBrightness: Brightness.dark,
    //   statusBarIconBrightness: Brightness.dark,
    //   systemNavigationBarColor: AppColors.background,
    //   statusBarColor: Colors.transparent,
    // ));
    setupPermissions();
    setupTokenSaving();
    setupInteractedMessage();
  }

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    return ShowCaseWidget(
      onFinish: () => localStorageService.initialized = true,
      builder: Builder(builder: (context) {
        return GenericPage(
          appBar: widget.getAppBar(homeState.bottomBarPageNo),
          body: homeState.bottomBarPageNo == 0
              ? PageView(
                  onPageChanged: (pageNo) => homeState.appBarPageNo = pageNo,
                  controller: homeState.homePageController,
                  children: [AllEvents(), MyEvents(), MyForums()],
                )
              : homeState.bottomBarPageNo == 1
                  ? SearchPage()
                  : homeState.bottomBarPageNo == 2
                      ? Settings()
                      : MyProfile(),
          bottomNavigationBar: MyNavigationBar(
            indexSetState: (pageNo) => homeState.bottomBarPageNo = pageNo,
            selectedIndex: homeState.bottomBarPageNo,
          ),
        );
      }),
    );
  }
}
