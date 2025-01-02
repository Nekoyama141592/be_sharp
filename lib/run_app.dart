import 'dart:async';
import 'dart:io';

import 'package:be_sharp/constants/enums/env_key.dart';
import 'package:be_sharp/view/my_app.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:be_sharp/flavors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RunApp {
  static Future<void> runMyApp() async {
    final flavor = F.appFlavor!;
    await _loadEnv(flavor);
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: getFirebaseOption());
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    await _requestPermission();
    await _setForegroundNotificationPresentationOptions();
    runApp(const ProviderScope(child: MyApp()));
  }

  static Future<void> _loadEnv(Flavor flavor) async {
    switch (flavor) {
      case Flavor.dev:
        return await dotenv.load(fileName: "assets/env/.env.dev");
      case Flavor.stg:
        return await dotenv.load(fileName: "assets/env/.env.stg");
      case Flavor.prod:
        return await dotenv.load(fileName: 'assets/env/.env.prod');
    }
  }

  static FirebaseOptions getFirebaseOption() {
    if (Platform.isAndroid) {
      return FirebaseOptions(
        apiKey: dotenv.get(EnvKey.FIREBASE_ANDROID_API_KEY.name),
        appId: dotenv.get(EnvKey.FIREBASE_ANDROID_APP_ID.name),
        messagingSenderId:
            dotenv.get(EnvKey.FIREBASE_ANDROID_MESSAGING_SENDER_ID.name),
        projectId: dotenv.get(EnvKey.FIREBASE_ANDROID_PROJECT_ID.name),
        storageBucket: dotenv.get(EnvKey.FIREBASE_ANDROID_STORAGE_BUCKET.name),
      );
    } else if (Platform.isIOS) {
      return FirebaseOptions(
          apiKey: dotenv.get(EnvKey.FIREBASE_IOS_API_KEY.name),
          appId: dotenv.get(EnvKey.FIREBASE_IOS_APP_ID.name),
          messagingSenderId:
              dotenv.get(EnvKey.FIREBASE_IOS_MESSAGING_SENDER_ID.name),
          projectId: dotenv.get(EnvKey.FIREBASE_IOS_PROJECT_ID.name),
          storageBucket: dotenv.get(EnvKey.FIREBASE_IOS_STORAGE_BUCKET.name),
          iosClientId: dotenv.get(EnvKey.FIREBASE_IOS_CLIENT_ID.name),
          iosBundleId: dotenv.get(EnvKey.FIREBASE_IOS_BUNDLE_ID.name));
    } else {
      throw Error();
    }
  }

  static Future<void> _requestPermission() async {
    // 通知の許可をリクエスト
    await FirebaseMessaging.instance.requestPermission(
      alert: true, // 通知が表示されるかどうか
      announcement: false, // アナウンスメント通知が有効かどうか
      badge: true, // バッジ（未読件数）が更新されるかどうか
      carPlay: false, // CarPlayで通知が表示されるかどうか
      criticalAlert: false, // 重要な通知（サイレントではない）が有効かどうか
      provisional: false, // 仮の通知（ユーザーによる設定を尊重）が有効かどうか
      sound: true, // 通知にサウンドが含まれるかどうか
    );
  }

  static Future<void> _setForegroundNotificationPresentationOptions() async {
    // フォアグラウンドで通知が表示されるオプションの設定
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // フォアグラウンドで通知が表示されるかどうか
      badge: false, // バッジ（未読件数）が表示されるかどうか
      sound: true, // 通知にサウンドが含まれるかどうか
    );
  }
}
