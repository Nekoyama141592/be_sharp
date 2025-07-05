import 'dart:async';
import 'dart:io';

import 'package:be_sharp/core/provider/overrides/prefs/prefs_provider.dart';
import 'package:be_sharp/presentation/my_app.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:be_sharp/application/flavors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:be_sharp/core/util/env_util.dart';

class RunApp {
  static Future<void> runMyApp() async {
    final flavor = F.appFlavor!;
    await _loadEnv(flavor);
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: getFirebaseOption());
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    await _requestPermission();
    await _setForegroundNotificationPresentationOptions();
    runApp(ProviderScope(overrides: [
      prefsProvider.overrideWithValue(await SharedPreferences.getInstance()),
    ], child: const MyApp()));
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
        apiKey: EnvUtil.firebaseAndroidApiKey,
        appId: EnvUtil.firebaseAndroidAppId,
        messagingSenderId: EnvUtil.firebaseAndroidMessagingSenderId,
        projectId: EnvUtil.firebaseAndroidProjectId,
        storageBucket: EnvUtil.firebaseAndroidStorageBucket,
      );
    } else if (Platform.isIOS) {
      return FirebaseOptions(
          apiKey: EnvUtil.firebaseIosApiKey,
          appId: EnvUtil.firebaseIosAppId,
          messagingSenderId: EnvUtil.firebaseIosMessagingSenderId,
          projectId: EnvUtil.firebaseIosProjectId,
          storageBucket: EnvUtil.firebaseIosStorageBucket,
          iosClientId: EnvUtil.firebaseIosClientId,
          iosBundleId: EnvUtil.firebaseIosBundleId);
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
