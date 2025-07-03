import 'package:be_sharp/core/credential_core.dart';
import 'package:be_sharp/repository/result/result.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthRepository {
  AuthRepository(this.client);
  final FirebaseAuth client;

  FutureResult<User> signInWithApple() async {
    try {
      final credential = await CredentialCore.appleCredential();
      final res = await client.signInWithCredential(credential);
      final user = res.user;
      if (user == null) {
        return const Result.failure('Appleサインインに失敗しました: ユーザー情報が見つかりません。');
      } else {
        return Result.success(user);
      }
    } on FirebaseAuthException catch (e) {
      final errorMessage = _getFirebaseAuthErrorMessage(e);
      return Result.failure('Appleサインインエラー: $errorMessage');
    } catch (e) {
      debugPrint(e.toString());
      return const Result.failure('予期せぬエラーによりAppleサインインに失敗しました。');
    }
  }

  FutureResult<User> signInWithGoogle() async {
    try {
      final credential = await CredentialCore.googleCredential();
      final res = await client.signInWithCredential(credential);
      final user = res.user;
      if (user == null) {
        return const Result.failure('Googleサインインに失敗しました: ユーザー情報が見つかりません。');
      } else {
        return Result.success(user);
      }
    } on FirebaseAuthException catch (e) {
      final errorMessage = _getFirebaseAuthErrorMessage(e);
      return Result.failure('Googleサインインエラー: $errorMessage');
    } catch (e) {
      debugPrint(e.toString());
      return const Result.failure('予期せぬエラーによりGoogleサインインに失敗しました。');
    }
  }

  FutureResult<bool> signOut() async {
    try {
      await client.signOut();
      return const Result.success(true);
    } catch (e) {
      debugPrint(e.toString());
      return Result.failure('サインアウトに失敗しました: ${e.toString()}');
    }
  }

  FutureResult<bool> reauthenticateWithCredential(
      AuthCredential credential) async {
    try {
      await client.currentUser?.reauthenticateWithCredential(credential);
      return const Result.success(true);
    } on FirebaseAuthException catch (e) {
      final String errorMessage = _getReauthenticateErrorMessage(e.code);
      debugPrint(e.code);
      return Result.failure(errorMessage);
    } catch (e) {
      debugPrint(e.toString());
      return Result.failure('再認証に失敗しました: ${e.toString()}');
    }
  }

  FutureResult<bool> deleteUser() async {
    try {
      await client.currentUser?.delete();
      return const Result.success(true);
    } on FirebaseAuthException catch (e) {
      final String errorMessage = _getDeleteUserErrorMessage(e.code);
      debugPrint(e.code);
      return Result.failure(errorMessage);
    } catch (e) {
      debugPrint(e.toString());
      return Result.failure('ユーザー削除に失敗しました: ${e.toString()}');
    }
  }

  String _getFirebaseAuthErrorMessage(FirebaseAuthException e) {
    final String errorCode = e.code;
    switch (errorCode) {
      case 'account-exists-with-different-credential':
        return "同じメールアドレスを持つアカウントが別の認証方法で既に存在します。";
      case 'invalid-credential':
        return "認証情報が無効です。再度お試しください。";
      case 'user-disabled':
        return 'このユーザーアカウントは無効化されています。';
      case 'operation-not-allowed':
        return 'この認証方法は現在許可されていません。';
      case 'network-request-failed':
        return 'ネットワークエラーが発生しました。インターネット接続を確認してください。';
      default:
        return '不明な認証エラーが発生しました: ${e.message ?? errorCode}';
    }
  }

  String _getReauthenticateErrorMessage(String errorCode) {
    switch (errorCode) {
      case 'user-mismatch':
        return "認証情報が異なります。現在のユーザーと同じ方法で認証してください。";
      case 'user-not-found':
        return "ユーザーが見つかりません。";
      case 'invalid-credential':
        return "認証情報が無効、または期限切れです。";
      case 'requires-recent-login':
        return 'セキュリティのため、この操作には最近のログインが必要です。再度サインインしてください。';
      default:
        return '再認証エラー: $errorCode';
    }
  }

  String _getDeleteUserErrorMessage(String errorCode) {
    switch (errorCode) {
      case 'requires-recent-login':
        return "セキュリティのため、ユーザー削除には再認証が必要です。";
      default:
        return 'ユーザー削除エラー: $errorCode';
    }
  }
}
