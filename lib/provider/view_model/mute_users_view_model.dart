import 'dart:async';

import 'package:be_sharp/core/doc_ref_core.dart';
import 'package:be_sharp/core/query_core.dart';
import 'package:be_sharp/model/firestore_model/mute_user/mute_user.dart';
import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/provider/user_provider.dart';
import 'package:be_sharp/repository/firestore_repository.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

class MuteUsersViewModel
    extends AutoDisposeAsyncNotifier<List<ReadPublicUser>> {
  @override
  FutureOr<List<ReadPublicUser>> build() {
    return _fetchData();
  }

  Future<List<ReadPublicUser>> _fetchData() async {
    final uids = await _fetchMuteUids();
    if (uids.isEmpty) return [];
    final chunks = <Future<List<ReadPublicUser>>>[];
    for (var i = 0; i < uids.length; i += QueryCore.whereInLimit) {
      final chunk = uids.sublist(
          i,
          i + QueryCore.whereInLimit > uids.length
              ? uids.length
              : i + QueryCore.whereInLimit);
      final query = QueryCore.users(chunk);
      final qshot = query.get().then((snapshot) =>
          snapshot.docs.map((e) => ReadPublicUser.fromJson(e.data())).toList());
      chunks.add(qshot);
    }
    final results = await Future.wait(chunks);
    return results.expand((x) => x).toList();
  }

  Future<List<String>> _fetchMuteUids() async {
    final uid = ref.read(userProvider)?.uid;
    if (uid == null) return [];
    final query = QueryCore.muteUsers(uid: uid);
    final qshot = await query.get();
    final docs = qshot.docs;
    return docs.map((e) => MuteUser.fromJson(e.data()).muteUid).toList();
  }

  void onTap(String muteUid) {
    final uid = ref.read(userProvider)?.uid;
    if (uid == null) return;
    const msg = 'このユーザーのミュートを解除しますか？';
    ToastUICore.cupertinoAlertDialog(msg, () => _unMute(uid, muteUid));
  }

  Future<void> _unMute(String uid, String muteUid) async {
    final docRef = DocRefCore.muteUser(uid, muteUid);
    final repository = FirestoreRepository();
    final result = await repository.deleteDoc(docRef);
    result.when(success: (_) => _success(muteUid), failure: _failure);
  }

  void _closeDialog() {
    if (Get.isDialogOpen ?? false) {
      Get.back();
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

final muteUsersProvider =
    AsyncNotifierProvider.autoDispose<MuteUsersViewModel, List<ReadPublicUser>>(
        () => MuteUsersViewModel());
