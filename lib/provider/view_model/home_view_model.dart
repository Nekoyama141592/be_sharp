import 'dart:async';
import 'package:be_sharp/core/doc_ref_core.dart';
import 'package:be_sharp/core/query_core.dart';
import 'package:be_sharp/core/view_core/home_core.dart';
import 'package:be_sharp/model/dialog/text_action.dart';
import 'package:be_sharp/model/firestore_model/mute_user/mute_user.dart';
import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/model/view_model_state/home_state/answered_user/answered_user.dart';
import 'package:be_sharp/model/view_model_state/home_state/home_state.dart';
import 'package:be_sharp/provider/cache_provider.dart';
import 'package:be_sharp/provider/user_provider.dart';
import 'package:be_sharp/repository/firestore_repository.dart';
import 'package:be_sharp/ui_core/dialog_ui_core.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeViewModel extends AutoDisposeAsyncNotifier<HomeState> {
  @override
  FutureOr<HomeState> build() async {
    return _fetchData();
  }

  Future<HomeState> _fetchData() async {
    final latestProblem = await _fetchLatestProblem();
    if (latestProblem == null) return const HomeState();
    final problemId = latestProblem.problemId;
    final answers = latestProblem.answers;
    if (answers.isEmpty) {
      return HomeState(latestProblem: latestProblem);
    }
    final query = QueryCore.correctUserAnswers(problemId, answers);
    final qshot = await query.get();
    final prefs = ref.read(prefsProvider);
    final [(answeredUsers as List<AnsweredUser>), (muteUids as List<String>)] =
        await Future.wait([
      HomeCore.fetchAnsweredUsers(qshot, prefs),
      HomeCore.fetchMuteUsers(ref.read(userProvider)?.uid, qshot),
    ]);
    return HomeState(
        latestProblem: latestProblem,
        answeredUsers: answeredUsers,
        muteUids: muteUids);
  }

  Future<ReadProblem?> _fetchLatestProblem() async {
    final query = QueryCore.latestProblem();
    final qshot = await query.get();
    final docs = qshot.docs;
    if (docs.isEmpty) return null;
    return ReadProblem.fromJson(docs.first.data());
  }

  void onMoreButtonPressed(BuildContext context, String muteUid) {
    // print(state.value?.muteUids);
    // return;
    final actions = <TextAction>[
      TextAction(
          text: 'このユーザーをミュートする',
          action: (iContext) {
            _muteUser(iContext, muteUid);
          }),
      TextAction(text: 'キャンセル', action: Navigator.pop),
    ];
    DialogUiCore.showPopup(context: context, actions: actions);
  }

  Future<void> _muteUser(BuildContext context, String muteUid) async {
    final uid = ref.read(userProvider)?.uid;
    if (uid == null || uid == muteUid) return;
    final docRef = DocRefCore.muteUser(uid, muteUid);
    final repository = FirestoreRepository();
    final json =
        MuteUser(muteUid: muteUid, createdAt: Timestamp.now()).toJson();
    final result = await repository.createDoc(docRef, json);
    result.when(
        success: (_) => _onMuteSuccess(context, muteUid),
        failure: () => _onMuteFailure(context));
  }

  void _onMuteSuccess(BuildContext context, String muteUid) async {
    Navigator.pop(context);
    final stateValue = state.value;
    if (stateValue == null) return;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final muteUids = [...stateValue.muteUids, muteUid];
      final result = stateValue.copyWith(muteUids: muteUids);
      return result;
    });
    ToastUICore.showFlutterToast('ユーザーをミュートしました');
  }

  void _onMuteFailure(BuildContext context) {
    Navigator.pop(context);
    ToastUICore.showErrorFlutterToast('ユーザーをミュートできませんでした');
  }
}

final homeProvider =
    AsyncNotifierProvider.autoDispose<HomeViewModel, HomeState>(
        () => HomeViewModel());
