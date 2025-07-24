import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:be_sharp/core/util/env_util.dart';

class RunApp {
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
}
