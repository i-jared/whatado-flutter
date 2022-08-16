import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// TODO implement notifications for groups (that will direct to a group on click)

class LocalNotificationService {
  AndroidNotificationChannel channel;
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  LocalNotificationService()
      : channel = AndroidNotificationChannel(
          'high_importance_channel', // id
          'High Importance Notifications', // title
          description: 'This channel is used for important notifications.', // description
          importance: Importance.max,
        ),
        flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin() {
    init();
  }

  Future<void> init() async {
    // initialize flutter local notifications
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('ic_notification');
    final IOSInitializationSettings initializationSettingsIOS = IOSInitializationSettings(
        onDidReceiveLocalNotification: (_, __, ___, ____) async {
      print('Did Receive Local Notification $_, $__, $___, $____');
    });
    final MacOSInitializationSettings initializationSettingsMacOS =
        MacOSInitializationSettings();
    final InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
      macOS: initializationSettingsMacOS,
    );
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: (payload) async => print('payload $payload'));

    // create android high importance notification channel
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  }
}
