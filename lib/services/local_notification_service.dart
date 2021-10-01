import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService {
  AndroidNotificationChannel channel;
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  LocalNotificationService()
      : channel = AndroidNotificationChannel(
          'high_importance_channel', // id
          'High Importance Notifications', // title
          'This channel is used for important notifications.', // description
          importance: Importance.max,
        ),
        flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin() {
    init();
  }

  Future<void> init() async {
    // create android high importance notification channel
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  }
}
