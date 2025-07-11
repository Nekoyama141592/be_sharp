import 'dart:async';

import 'package:be_sharp/infrastructure/model/firestore_model/private_user/private_user_model.dart';
import 'package:be_sharp/core/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/core/provider/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/infrastructure/repository/database_repository.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'private_user_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class PrivateUserNotifier extends _$PrivateUserNotifier {
  @override
  FutureOr<PrivateUserModel?> build() async {
    return _fetchData();
  }

  DatabaseRepository get _repository => ref.read(databaseRepositoryProvider);
  Future<PrivateUserModel?> _fetchData() async {
    final uid = ref.watch(streamAuthUidProvider).value;
    if (uid == null) return null;
    final privateUser = await _repository.getPrivateUser(uid);
    final token = await _getToken();
    if (privateUser != null) {
      if (token != null && token != privateUser.fcmToken) {
        await _repository.updateToken(uid, token);
      }
      return privateUser;
    } else {
      await _repository.createPrivateUser(uid, token);
      final newPrivateUser = await _repository.getPrivateUser(uid);
      return newPrivateUser;
    }
  }

  static Future<String?> _getToken() async {
    try {
      String? token;
      final messaging = FirebaseMessaging.instance;
      final response = await messaging.requestPermission();
      if (response.authorizationStatus == AuthorizationStatus.authorized) {
        token = await messaging.getToken();
      }
      return token;
    } catch (e) {
      return null;
    }
  }

  bool isAdmin() {
    return state.value?.isAdmin ?? false;
  }
}
