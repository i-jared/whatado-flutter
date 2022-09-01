import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/utils/logger.dart';

class AnalyticsService {
  final analytics;
  final crashlytics;
  AnalyticsService()
      : analytics = FirebaseAnalytics.instance,
        crashlytics = FirebaseCrashlytics.instance {
    FirebaseAnalytics.instance.logAppOpen();
  }

  Future<void> init(User user) async {
    // set firebase crashlytics id
    // connect user data to analytics events
    await crashlytics.setUserIdentifier(user.id.toString());
    await analytics.setUserId(id: user.id.toString());
    await analytics.setUserProperty(name: 'Gender', value: User.genderToString(user.gender));
    await analytics.setUserProperty(
        name: 'Interests', value: User.interestsToString(user.interests));
    await analytics.setUserProperty(name: 'Birthday', value: user.birthday.toIso8601String());
    if (user.location != null) {
      await analytics.setUserProperty(
          name: 'Location', value: user.location!.geoPoint.toGeoJsonCoordinatesString());
    }
    await analytics.logLogin();
    logger.wtf(user.location!.geoPoint.toGeoJsonCoordinatesString());
  }

  Future<void> logAd() async {
    await analytics.logAdImpression();
  }
}
