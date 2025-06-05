import 'package:be_sharp/infrastructure/firebase_auth/firebase_auth_client.dart';
import 'package:be_sharp/repository/result.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthRepository {
  FirebaseAuthClient get client => FirebaseAuthClient();
  FutureResult<User> signInWithApple() async {
    try {
      final res = await client.signinWithApple();
      if (res == null || res.user == null) {
        return const Result.failure();
      } else {
        return Result.success(res.user!);
      }
    } on FirebaseAuthException catch (e) {
      _manageErrorCredential(e);
      return const Result.failure();
    }
  }

  FutureResult<User> signInWithGoogle() async {
    try {
      final res = await client.signInWithGoogle();
      if (res == null || res.user == null) {
        return const Result.failure();
      } else {
        return Result.success(res.user!);
      }
    } on FirebaseAuthException catch (e) {
      _manageErrorCredential(e);
      return const Result.failure();
    }
  }

  FutureResult<bool> signOut() async {
    try {
      await client.signOut();
      return const Result.success(true);
    } catch (e) {
      debugPrint(e.toString());
      return const Result.failure();
    }
  }

  FutureResult<bool> reauthenticateWithCredential(
      User user, AuthCredential credential) async {
    try {
      await client.reauthenticateWithCredential(user, credential);
      return const Result.success(true);
    } on FirebaseAuthException catch (e) {
      final String errorCode = e.code;
      debugPrint(errorCode);
      switch (errorCode) {
        case 'user-mismatch':
          await ToastUICore.showErrorFlutterToast(
              "認証情報がことなります。現在のユーザーと同じ方法で認証してください。");
          break;
        case 'user-not-found':
          await ToastUICore.showErrorFlutterToast("ユーザーが見つかりません。");
          break;
        case 'invalid-credential':
          await ToastUICore.showErrorFlutterToast("クレデンシャルが不正、もしくは期限切れです。");
          break;
      }
      return const Result.failure();
    }
  }

  FutureResult<bool> deleteUser(User user) async {
    try {
      await client.deleteUser(user);
      return const Result.success(true);
    } on FirebaseAuthException catch (e) {
      final String errorCode = e.code;
      debugPrint(errorCode);
      switch (errorCode) {
        case 'requires-recent-login':
          await ToastUICore.showErrorFlutterToast("再認証が必要です。");
          break;
      }
      return const Result.failure();
    }
  }

  void _manageErrorCredential(FirebaseAuthException e) async {
    final String errorCode = e.code;
    debugPrint(errorCode);
    switch (errorCode) {
      case 'account-exists-with-different-credential':
        await ToastUICore.showErrorFlutterToast("同じメールアドレスを持つアカウントが存在します。");
        break;
      case 'invalid-credential':
        await ToastUICore.showErrorFlutterToast("クレデンシャルが不正、もしくは期限切れです。");
        break;
      case 'user-disabled':
        await ToastUICore.showErrorFlutterToast('ユーザーが無効化されています。');
        break;
    }
  }
}
