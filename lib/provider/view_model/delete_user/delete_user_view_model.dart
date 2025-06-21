import 'package:be_sharp/core/credential_core.dart';
import 'package:be_sharp/core/route_core.dart';
import 'package:be_sharp/provider/repository/auth_repository/auth_repository_provider.dart';
import 'package:be_sharp/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/provider/keep_alive/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/repository/auth_repository.dart';
import 'package:be_sharp/repository/database_repository.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:be_sharp/view/root_page/user_deleted_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_user_view_model.g.dart';
@riverpod
class DeleteUserViewModel extends AutoDisposeNotifier<User?> {
  @override
  User? build() {
    return ref.watch(streamAuthProvider).value;
  }

  AuthRepository get authRepository => ref.read(authRepositoryProvider);
  DatabaseRepository get _databaseRepository => ref.read(databaseRepositoryProvider);
  void onGoogleSignInButtonPressed(BuildContext context) async {
    final credential = await CredentialCore.googleCredential();
    await _reauthenticateToDelete(context, credential);
  }

  void onAppleSignInButtonPressed(BuildContext context) async {
    final credential = await CredentialCore.appleCredential();
    await _reauthenticateToDelete(context, credential);
  }

  Future<void> _reauthenticateToDelete(BuildContext context,AuthCredential credential) async {
    if (state == null) return;
    final result =
        await authRepository.reauthenticateWithCredential(credential);
    result.when(
        success: (_) => onReauthenticateSuccess(context), failure: onReauthenticateFailure);
  }

  void onReauthenticateSuccess(BuildContext context) {
    ToastUiCore.cupertinoAlertDialog(context,
        "ユーザーを削除しますが本当によろしいですか？", () => _deletePublicUser(context));
  }

  void onReauthenticateFailure(String msg) {
    ToastUiCore.showErrorFlutterToast('再認証に失敗しました');
  }

  Future<void> _deletePublicUser(BuildContext context) async {
    final result = await _databaseRepository.deleteUser(state!.uid);
    result.when(success: (_) => onDeleteSuccess(context), failure: onDeleteFailure);
  }

  void onDeleteSuccess(BuildContext context) {
    RouteCore.pushPath(context, UserDeletedPage.path);
  }

  void onDeleteFailure(String msg) {
    ToastUiCore.showErrorFlutterToast("ユーザーの削除が失敗しました");
  }
}
