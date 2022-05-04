import 'dart:io';

// import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class ALog {

  static FirebaseAnalytics analytics = FirebaseAnalytics();
  // static FacebookAppEvents facebookAppEvents = FacebookAppEvents();

  static void log(String str) {
    analytics.logEvent(name: str);
    // if(Platform.isAndroid) facebookAppEvents.logEvent(name: str);
  }

  static void logWithParam(String str, Map<String, dynamic> map) {
    analytics.logEvent(name: str, parameters: map);
    // if(Platform.isAndroid) facebookAppEvents.logEvent(name: str, parameters: map);
  }

}