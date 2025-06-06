import 'dart:async';

import 'package:be_sharp/core/route_core.dart';
import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/provider/global/user_provider.dart';
import 'package:be_sharp/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:get/get.dart';
part 'mute_users_view_model.g.dart';
@riverpod
class MuteUsersViewModel extends _$MuteUsersViewModel {
  @override
  FutureOr<List<ReadPublicUser>> build() {
    return _fetchData();
  }

  Future<List<ReadPublicUser>> _fetchData() async {
    final uid = ref.read(userProvider)?.uid;
    return ref.read(databaseRepositoryProvider).fetchMutePublicUsers(uid);
  }

  

  void onTap(String muteUid) {
    final uid = ref.read(userProvider)?.uid;
    if (uid == null) return;
    const msg = 'このユーザーのミュートを解除しますか？';
    ToastUICore.cupertinoAlertDialog(msg, () => _unMute(uid, muteUid));
  }

  Future<void> _unMute(String uid, String muteUid) async {
    final repository = ref.read(databaseRepositoryProvider);
    final result = await repository.unMute(uid, muteUid);
    result.when(success: (_) => _success(muteUid), failure: _failure);
  }

  void _closeDialog() {
    if (Get.isDialogOpen ?? false) {
      RouteCore.back();
    }
  }

  void _success(String muteUid) async {
    _closeDialog();
    final stateValue = state.value;
    if (stateValue == null) return;
    state = await AsyncValue.guard(() async {
      final result = stateValue..removeWhere((e) => e.uid == muteUid);
      return result;
    });
    ToastUICore.showFlutterToast('ミュートを解除しました');
  }

  void _failure() {
    _closeDialog();
    ToastUICore.showErrorFlutterToast('ミュート解除に失敗しました');
  }
}