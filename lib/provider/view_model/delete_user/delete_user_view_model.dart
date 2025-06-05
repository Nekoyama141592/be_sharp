import 'package:be_sharp/core/credential_core.dart';
import 'package:be_sharp/core/doc_ref_core.dart';
import 'package:be_sharp/core/route_core.dart';
import 'package:be_sharp/provider/repository/auth_repository/auth_repository_provider.dart';
import 'package:be_sharp/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/repository/auth_repository.dart';
import 'package:be_sharp/repository/database_repository.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:be_sharp/view/root_page/user_deleted_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeleteUserViewModel extends AutoDisposeNotifier<User?> {
  @override
  User? build() {
    return FirebaseAuth.instance.currentUser;
  }

  AuthRepository get authRepository => ref.read(authRepositoryProvider);
  DatabaseRepository get _databaseRepository => ref.read(databaseRepositoryProvider);
  void onGoogleSignInButtonPressed() async {
    final credential = await CredentialCore.googleCredential();
    await _reauthenticateToDelete(credential);
  }

  void onAppleSignInButtonPressed() async {
    final credential = await CredentialCore.appleCredential();
    await _reauthenticateToDelete(credential);
  }

  Future<void> _reauthenticateToDelete(AuthCredential credential) async {
    if (state == null) return;
    final result =
        await authRepository.reauthenticateWithCredential(state!, credential);
    result.when(
        success: onReauthenticateSuccess, failure: onReauthenticateFailure);
  }

  void onReauthenticateSuccess(bool res) {
    ToastUICore.cupertinoAlertDialog(
        "ユーザーを削除しますが本当によろしいですか？", _deletePublicUser);
  }

  void onReauthenticateFailure() {
    ToastUICore.showErrorFlutterToast('再認証に失敗しました');
  }

  Future<void> _deletePublicUser() async {
    final ref = DocRefCore.user(state!.uid);
    final result = await _databaseRepository.deleteDoc(ref);
    result.when(success: onDeleteSuccess, failure: onDeleteFailure);
  }

  void onDeleteSuccess(bool res) {
    RouteCore.pushPath(UserDeletedPage.path);
  }

  void onDeleteFailure() {
    ToastUICore.showErrorFlutterToast("ユーザーの削除が失敗しました");
  }
}

final deleteUserProvider =
    NotifierProvider.autoDispose<DeleteUserViewModel, User?>(
        () => DeleteUserViewModel());
