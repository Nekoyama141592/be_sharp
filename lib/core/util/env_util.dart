import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvUtil {
  static String getValue(String key) {
    return dotenv.get(key);
  }

  static String? getValueOrNull(String key) {
    return dotenv.maybeGet(key);
  }

  static bool containsKey(String key) {
    return dotenv.isEveryDefined([key]);
  }

  // Firebase Android methods
  static String get firebaseAndroidApiKey => getValue('FIREBASE_ANDROID_API_KEY');
  static String get firebaseAndroidAppId => getValue('FIREBASE_ANDROID_APP_ID');
  static String get firebaseAndroidMessagingSenderId => getValue('FIREBASE_ANDROID_MESSAGING_SENDER_ID');
  static String get firebaseAndroidProjectId => getValue('FIREBASE_ANDROID_PROJECT_ID');
  static String get firebaseAndroidStorageBucket => getValue('FIREBASE_ANDROID_STORAGE_BUCKET');

  // Firebase iOS methods
  static String get firebaseIosApiKey => getValue('FIREBASE_IOS_API_KEY');
  static String get firebaseIosAppId => getValue('FIREBASE_IOS_APP_ID');
  static String get firebaseIosMessagingSenderId => getValue('FIREBASE_IOS_MESSAGING_SENDER_ID');
  static String get firebaseIosProjectId => getValue('FIREBASE_IOS_PROJECT_ID');
  static String get firebaseIosStorageBucket => getValue('FIREBASE_IOS_STORAGE_BUCKET');
  static String get firebaseIosClientId => getValue('FIREBASE_IOS_CLIENT_ID');
  static String get firebaseIosBundleId => getValue('FIREBASE_IOS_BUNDLE_ID');

  // Subscription methods
  static String get subscriptionMonthItemId => getValue('SUBSCRIPTION_MONTH_ITEM_ID');
  static String get subscriptionAnnualItemId => getValue('SUBSCRIPTION_ANNUAL_ITEM_ID');
  static List<String> get subscriptionItemIds => [subscriptionMonthItemId, subscriptionAnnualItemId];
  static Set<String> get subscriptionProductIds => subscriptionItemIds.toSet();
}