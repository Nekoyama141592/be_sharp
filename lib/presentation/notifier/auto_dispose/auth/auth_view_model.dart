import 'package:be_sharp/core/provider/repository/auth_repository/auth_repository_provider.dart';
import 'package:be_sharp/core/provider/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/infrastructure/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_view_model.g.dart';

@riverpod
class AuthViewModel extends _$AuthViewModel {
  @override
  User? build() {
    return ref.watch(streamAuthProvider).value;
  }

  AuthRepository get repository => ref.read(authRepositoryProvider);
  void onGoogleSignInButtonPressed() async {
    final result = await repository.signInWithGoogle();
    result.when(
        success: (userCredential) {
          state = userCredential.user;
        },
        failure: (_) {});
  }

  void onAppleSignInButtonPressed() async {
    final result = await repository.signInWithApple();
    result.when(
        success: (userCredential) {
          state = userCredential.user;
        },
        failure: (_) {});
  }
}
