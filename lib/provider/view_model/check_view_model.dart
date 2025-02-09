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
          user: null);
    } else {
      final readUser = await _fetchUser(user.uid);
      return CheckState(
          needsAgreeToTerms: needsAgreeToTerms,
          needsSignup: false,
          user: readUser);
    }
  }

  bool checkNeedsAgreeToTerms() {
    return false;
  }

  Future<ReadPublicUser> _fetchUser(String uid) async {
    final docRef = DocRefCore.user(uid);
    final result = await docRef.get();
    final readData = result.data();
    if (result.exists && readData != null) {
      final readUser = ReadPublicUser.fromJson(readData);
      return readUser;
    } else {
      final writeUser = WritePublicUser.instance(uid);
      final writeData = writeUser.toJson();
      await docRef.set(writeData);
      return ReadPublicUser.fromJson(writeData);
    }
  }

  Future<void> refetchUser(User user) async {
    final stateValue = state.value;
    if (stateValue == null) return;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final result = stateValue.copyWith(
          needsSignup: false,
          user: await _fetchUser(user.uid));
      return result;
    });
  }

  Future<void> onUserUpdateSuccess(String uid) async {
    final stateValue = state.value;
    if (stateValue == null) return;
    state = await AsyncValue.guard(() async {
      final newUser = await _fetchUser(uid);
      final result =
          stateValue.copyWith(user: newUser);
      return result;
    });
  }
}

final checkProvider =
    AsyncNotifierProvider.autoDispose<CheckViewModel, CheckState>(
        () => CheckViewModel());
