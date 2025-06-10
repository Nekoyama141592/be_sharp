import 'dart:async';
import 'package:be_sharp/core/route_core.dart';
import 'package:be_sharp/model/dialog/text_action.dart';
import 'package:be_sharp/model/view_model_state/home_state/answered_user/answered_user.dart';
import 'package:be_sharp/model/view_model_state/home_state/home_state.dart';
import 'package:be_sharp/provider/keep_alive/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/provider/use_case/home/home_use_case_provider.dart';
import 'package:be_sharp/ui_core/dialog_ui_core.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:be_sharp/use_case/home_use_case.dart';
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
  HomeUseCase get _homeUseCase => ref.read(homeUseCaseProvider);

  Future<HomeState> _fetchData() async {
    final latestProblem = await ref.read(databaseRepositoryProvider).fetchLatestProblem();
    if (latestProblem == null) return const HomeState();
    final problemId = latestProblem.problemId;
    final answers = latestProblem.answers;
    if (answers.isEmpty) {
      return HomeState(latestProblem: latestProblem);
    }
    final userAnswers = await ref.read(databaseRepositoryProvider).fetchCorrectUserAnswers(problemId, answers);
    final [(answeredUsers as List<AnsweredUser>), (muteUids as List<String>),(userCount as int)] =
        await Future.wait([
      _homeUseCase.fetchAnsweredUsers(userAnswers),
      _homeUseCase.fetchMuteUsers(ref.read(streamAuthUidProvider).value, userAnswers),
      _homeUseCase.fetchUserCount(problemId)
    ]);
    // 早い順に並べる
    final result = [...answeredUsers]..sort((a, b) =>
        a.userAnswer.typedCreateAt().compareTo(b.userAnswer.typedCreateAt()));
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
    DialogUiCore.showPopup(context: context, actions: actions);
  }

  Future<void> _muteUser(BuildContext context, String muteUid) async {
    final uid = ref.read(streamAuthUidProvider).value;
    if (uid == null || uid == muteUid) return;
    final result = await ref.read(databaseRepositoryProvider).muteUser(uid, muteUid);
    result.when(
        success: (_) => _onMuteSuccess(context, muteUid),
        failure: (_) => _onMuteFailure(context));
  }

  void _onMuteSuccess(BuildContext context, String muteUid) async {
    RouteCore.backWithContext(context);
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
    RouteCore.backWithContext(context);
    ToastUICore.showErrorFlutterToast('ユーザーをミュートできませんでした');
  }
}