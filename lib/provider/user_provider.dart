import 'dart:async';

import 'package:be_sharp/provider/view_model/check_view_model.dart';
import 'package:be_sharp/repository/firebase_auth_repository.dart';
import 'package:be_sharp/view/root_page/logouted_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/route_manager.dart';

class UserProvider extends Notifier<User?> {
  StreamSubscription<User?>? subscriptionStream;
  @override
  User? build() {
    _init();
    return FirebaseAuth.instance.currentUser;
  }

  void _init() {
    subscriptionStream =
        FirebaseAuth.instance.authStateChanges().listen((event) async {
      final isLoginEvent = state == null && event != null;
      final isLogoutEvent = state != null && event == null;
      state = event;
      if (isLoginEvent) {
        // ログインイベント
        print('ログイン');
        await ref.read(checkProvider.notifier).refetchUser(event);
      } else if (isLogoutEvent) {
        // ログアウトイベント
        print('ログアウト');
      }
    });
  }

  void onSignoutButtonPressed() async {
    final repository = FirebaseAuthRepository();
    final result = await repository.signOut();
    result.when(
        success: (_) {
          state = null;
          Get.offAndToNamed(LogoutedPage.path);
        },
        failure: () {});
  }
}

final userProvider =
    NotifierProvider<UserProvider, User?>(() => UserProvider());
