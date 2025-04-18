import 'package:be_sharp/core/credential_core.dart';
import 'package:be_sharp/core/doc_ref_core.dart';
import 'package:be_sharp/repository/firebase_auth_repository.dart';
import 'package:be_sharp/repository/firestore_repository.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:be_sharp/view/root_page/user_deleted_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

class DeleteUserViewModel extends AutoDisposeNotifier<User?> {
  @override
  User? build() {
    return FirebaseAuth.instance.currentUser;
  }

  FirebaseAuthRepository get repository => FirebaseAuthRepository();
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
    final repository = FirebaseAuthRepository();
    final result =
        await repository.reauthenticateWithCredential(state!, credential);
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
    final repository = FirestoreRepository();
    final ref = DocRefCore.user(state!.uid);
    final result = await repository.deleteDoc(ref);
    result.when(success: onDeleteSuccess, failure: onDeleteFailure);
  }

  void onDeleteSuccess(bool res) {
    Get.toNamed(UserDeletedPage.path);
  }

  void onDeleteFailure() {
    ToastUICore.showErrorFlutterToast("ユーザーの削除が失敗しました");
  }
}

final deleteUserProvider =
    NotifierProvider.autoDispose<DeleteUserViewModel, User?>(
        () => DeleteUserViewModel());
