import 'package:be_sharp/repository/firebase_auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthViewModel extends StateNotifier<void> {
  AuthViewModel() : super(0);
  FirebaseAuthRepository get repository => FirebaseAuthRepository();
  void onGoogleSignInButtonPressed() async {
    final result = await repository.signInWithGoogle();
    result.when(success: (res) {
      print(res.uid);
    }, failure: () {});
  }
  void onAppleSignInButtonPressed() async {
    final result = await repository.signInWithApple();
    result.when(success: (res) {
      print(res.uid);
    }, failure: () {});
  }

  void onSignoutButtonPressed() async {
    final result = await repository.signOut();
    result.when(success: (_) {
      print('サインアウトしました');
    }, failure: () {});
  }
}
final authProvider = StateNotifierProvider.autoDispose<AuthViewModel,void>((ref) => AuthViewModel());