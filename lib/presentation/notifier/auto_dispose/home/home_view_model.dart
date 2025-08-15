import 'dart:async';
import 'package:be_sharp/domain/entity/dialog/text_action.dart';
import 'package:be_sharp/presentation/state/view_model_state/home_state/home_state.dart';
import 'package:be_sharp/core/provider/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/core/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/core/provider/use_case/home/home_use_case_provider.dart';
import 'package:be_sharp/presentation/util/dialog_ui_util.dart';
import 'package:be_sharp/presentation/util/toast_ui_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home_view_model.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  FutureOr<HomeState> build() async {
    return _fetchData();
  }

  Future<HomeState> _fetchData() async {
    final latestProblem =
        await ref.read(databaseRepositoryProvider).fetchLatestProblem();
    if (latestProblem == null) return const HomeState();
    final problemId = latestProblem.problemId;
    final answers = latestProblem.answers;
    if (answers.isEmpty) {
      return HomeState(latestProblem: latestProblem);
    }
    final userAnswers = await ref
        .read(databaseRepositoryProvider)
        .fetchCorrectUserAnswers(problemId, answers);
    final answeredUsers =
        await _homeUseCase.fetchAnsweredUsers(problemId, answers);
    final [(muteUids as List<String>), (userCount as int)] = await Future.wait([
      _homeUseCase.fetchMuteUsers(ref.read(streamAuthUidProvider).value,
          userAnswers.map((e) => e.uid).toList()),
      _homeUseCase.fetchUserCount(problemId)
    ]);
    // 早い順に並べる
    final result = [...answeredUsers]..sort(
        (a, b) => a.userAnswer.createdAt!.compareTo(b.userAnswer.createdAt!));
    return HomeState(
        latestProblem: latestProblem,
        answeredUsers: result,
        muteUids: muteUids,
        userCount: userCount);
  }

  void onMoreButtonPressed(BuildContext context, String muteUid) {
    final actions = <TextAction>[
      TextAction(
          text: 'このユーザーをミュートする',
          action: (iContext) {
            _muteUser(iContext, muteUid);
          }),
      TextAction(text: 'キャンセル', action: Navigator.pop),
    ];
    DialogUiUtil.showPopup(context: context, actions: actions);
  }

  Future<void> _muteUser(BuildContext context, String muteUid) async {
    final uid = ref.read(streamAuthUidProvider).value;
    if (uid == null || uid == muteUid) return;
    final result =
        await ref.read(databaseRepositoryProvider).muteUser(uid, muteUid);
    result.when(
        success: (_) => _onMuteSuccess(context, muteUid),
        failure: (_) => _onMuteFailure(context));
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
    ToastUiUtil.showFlutterToast('ユーザーをミュートしました');
  }

  void _onMuteFailure(BuildContext context) {
    Navigator.pop(context);
    ToastUiUtil.showErrorFlutterToast('ユーザーをミュートできませんでした');
  }
}
