import 'dart:async';

import 'package:be_sharp/repository/firebase_auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserProvider extends Notifier<User?> {
  StreamSubscription<User?>? subscriptionStream;
  @override
  User? build() {
    _init();
    return FirebaseAuth.instance.currentUser;
  }

  void _init() {
    subscriptionStream =
        FirebaseAuth.instance.authStateChanges().listen((event) {
      state = event;
    });
  }
  void onSignoutButtonPressed() async {
    final repository = FirebaseAuthRepository();
    final result = await repository.signOut();
    result.when(
        success: (_) {
          state = null;
        },
        failure: () {});
  }
}

final userProvider =
    NotifierProvider<UserProvider, User?>(() => UserProvider());
