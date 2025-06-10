import 'dart:async';

import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/model/view_model_state/check_state/check_state.dart';
import 'package:be_sharp/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/provider/keep_alive/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/repository/database_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'check_view_model.g.dart';

@riverpod
class CheckViewModel extends _$CheckViewModel {
  @override
  FutureOr<CheckState> build() async {
    return _fetchData();
  }

  DatabaseRepository get _repository => ref.read(databaseRepositoryProvider);
  Future<CheckState> _fetchData() async {
    final needsAgreeToTerms = checkNeedsAgreeToTerms();
    final user = ref.watch(streamAuthProvider).value;
    if (user == null) {
      return CheckState(
          needsAgreeToTerms: needsAgreeToTerms, needsSignup: true, user: null);
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

  Future<ReadPublicUser?> _fetchUser(String uid) async {
    final user = await _repository.getPublicUser(uid);
    if (user != null) return user;
    return _repository.createPublicUser(uid);
  }

  Future<void> refetchUser(User user) async {
    final stateValue = state.value;
    if (stateValue == null) return;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final result = stateValue.copyWith(
          needsSignup: false, user: await _fetchUser(user.uid));
      return result;
    });
  }

  Future<void> onUserUpdateSuccess(String uid) async {
    final stateValue = state.value;
    if (stateValue == null) return;
    state = await AsyncValue.guard(() async {
      final newUser = await _fetchUser(uid);
      final result = stateValue.copyWith(user: newUser);
      return result;
    });
  }
}
