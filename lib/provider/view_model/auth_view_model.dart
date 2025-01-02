import 'package:be_sharp/repository/firebase_auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthViewModel extends AutoDisposeNotifier<User?> {
  @override
  User? build() {
    return FirebaseAuth.instance.currentUser;
  }

  FirebaseAuthRepository get repository => FirebaseAuthRepository();
  void onGoogleSignInButtonPressed() async {
    final result = await repository.signInWithGoogle();
    result.when(
        success: (res) {
          state = res;
        },
        failure: () {});
  }

  void onAppleSignInButtonPressed() async {
    final result = await repository.signInWithApple();
    result.when(
        success: (res) {
          state = res;
        },
        failure: () {});
  }
}

final authProvider =
    NotifierProvider.autoDispose<AuthViewModel, User?>(() => AuthViewModel());
