import 'dart:async';

import 'package:be_sharp/infrastructure/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/core/provider/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/core/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/presentation/util/toast_ui_util.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mute_users_view_model.g.dart';

@riverpod
class MuteUsersViewModel extends _$MuteUsersViewModel {
  @override
  FutureOr<List<ReadPublicUser>> build() {
    return _fetchData();
  }

  Future<List<ReadPublicUser>> _fetchData() async {
    final uid = ref.read(streamAuthUidProvider).value;
    return ref.read(databaseRepositoryProvider).fetchMutePublicUsers(uid);
  }

  void onTap(BuildContext context, String muteUid) {
    final uid = ref.read(streamAuthUidProvider).value;
    if (uid == null) return;
    const msg = 'このユーザーのミュートを解除しますか？';
    ToastUiUtil.cupertinoAlertDialog(
        context, msg, () => _unMute(context, uid, muteUid));
  }

  Future<void> _unMute(BuildContext context, String uid, String muteUid) async {
    final repository = ref.read(databaseRepositoryProvider);
    final result = await repository.unMute(uid, muteUid);
    result.when(
        success: (_) => _success(context, muteUid),
        failure: (_) => _failure(context, muteUid));
  }

  void _success(BuildContext context, String muteUid) async {
    Navigator.pop(context);
    final stateValue = state.value;
    if (stateValue == null) return;
    state = await AsyncValue.guard(() async {
      final result = stateValue..removeWhere((e) => e.uid == muteUid);
      return result;
    });
    ToastUiUtil.showFlutterToast('ミュートを解除しました');
  }

  void _failure(BuildContext context, String msg) {
    Navigator.pop(context);
    ToastUiUtil.showErrorFlutterToast('ミュート解除に失敗しました');
  }
}
