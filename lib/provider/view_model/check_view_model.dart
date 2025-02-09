import 'dart:async';

import 'package:be_sharp/core/doc_ref_core.dart';
import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/model/firestore_model/public_user/write/write_public_user.dart';
import 'package:be_sharp/model/view_model_state/check_state/check_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckViewModel extends AutoDisposeAsyncNotifier<CheckState> {
  @override
  FutureOr<CheckState> build() async {
    return _fetchData();
  }

  Future<CheckState> _fetchData() async {
    final needsAgreeToTerms = checkNeedsAgreeToTerms();
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return CheckState(
          needsAgreeToTerms: needsAgreeToTerms,
          needsSignup: true,
          needsEditUser: false);
    } else {
      final needsEditUser = await checkNeedsEditUser(user.uid);
      return CheckState(
          needsAgreeToTerms: needsAgreeToTerms,
          needsSignup: false,
          needsEditUser: needsEditUser);
    }
  }

  bool checkNeedsAgreeToTerms() {
    return false;
  }

  Future<bool> checkNeedsEditUser(String uid) async {
    final docRef = DocRefCore.user(uid);
    final result = await docRef.get();
    final readData = result.data();
    if (result.exists && readData != null) {
      final readUser = ReadPublicUser.fromJson(readData);
      return readUser.needsEdit();
    } else {
      final writeData = WritePublicUser.instance(uid).toJson();
      await docRef.set(writeData);
      return true;
    }
  }

  Future<void> refetchUser(User user) async {
    final stateValue = state.value;
    if (stateValue == null) return;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final result = stateValue.copyWith(
          needsSignup: false,
          needsEditUser: await checkNeedsEditUser(user.uid));
      return result;
    });
  }

  Future<void> onUserUpdateSuccess() async {
    final stateValue = state.value;
    if (stateValue == null) return;
    state = await AsyncValue.guard(() async {
      final result =
          stateValue.copyWith(needsEditUser: false);
      return result;
    });
  }
}

final checkProvider =
    AsyncNotifierProvider.autoDispose<CheckViewModel, CheckState>(
        () => CheckViewModel());
