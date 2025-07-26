import 'package:be_sharp/application/flavors.dart';
import 'package:be_sharp/core/util/env_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:be_sharp/core/provider/overrides/prefs/prefs_provider.dart';
import 'package:be_sharp/presentation/my_app.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  F.appFlavor = Flavor.values.firstWhere(
    (element) => element.name == appFlavor,
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: EnvUtil.getFirebaseOption());
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  await FirebaseMessaging.instance.requestPermission(
    alert: true, // 通知が表示されるかどうか
    announcement: false, // アナウンスメント通知が有効かどうか
    badge: true, // バッジ（未読件数）が更新されるかどうか
    carPlay: false, // CarPlayで通知が表示されるかどうか
    criticalAlert: false, // 重要な通知（サイレントではない）が有効かどうか
    provisional: false, // 仮の通知（ユーザーによる設定を尊重）が有効かどうか
    sound: true, // 通知にサウンドが含まれるかどうか
  );
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true, // フォアグラウンドで通知が表示されるかどうか
    badge: false, // バッジ（未読件数）が表示されるかどうか
    sound: true, // 通知にサウンドが含まれるかどうか
  );
  runApp(ProviderScope(overrides: [
    prefsProvider.overrideWithValue(await SharedPreferences.getInstance()),
  ], child: const MyApp()));
}
