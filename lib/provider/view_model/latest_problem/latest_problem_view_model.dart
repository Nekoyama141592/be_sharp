import 'dart:async';

import 'package:be_sharp/core/query_core.dart';
import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/model/firestore_model/user_answer/read/read_user_answer.dart';
import 'package:be_sharp/model/rest_api/addCaption/response/add_caption_response.dart';
import 'package:be_sharp/model/view_model_state/latest_problem/latest_problem_state.dart';
import 'package:be_sharp/provider/global/user_provider.dart';
import 'package:be_sharp/provider/global/purchases/purchases_view_model.dart';
import 'package:be_sharp/repository/on_call_repository.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:be_sharp/view/common/dialog/form_dialog.dart';
import 'package:be_sharp/view/common/dialog/rank_dialog.dart';
import 'package:be_sharp/view/root_page/create_user_answer_page.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:get/route_manager.dart';
part 'latest_problem_view_model.g.dart';

@riverpod
class LatestProblemViewModel extends _$LatestProblemViewModel {
  @override
  FutureOr<LatestProblemState> build() async {
    return _fetchData();
  }

  Future<LatestProblemState> _fetchData() async {
    final problem = await _fetchLatestProblem();
    final user = ref.read(userProvider);
    if (user == null || problem == null) {
      return LatestProblemState(problem: problem);
    }
    final userAnswer =
        await _fetchLatestUserAnswer(user.uid, problem.problemId);
    return LatestProblemState(problem: problem, userAnswer: userAnswer);
  }

  Future<ReadProblem?> _fetchLatestProblem() async {
    final query = QueryCore.latestProblem();
    final qshot = await query.get();
    final docs = qshot.docs;
    if (docs.isEmpty) return null;
    return ReadProblem.fromJson(docs.first.data());
  }

  Future<ReadUserAnswer?> _fetchLatestUserAnswer(
      String uid, String problemId) async {
    final query = QueryCore.latestUserAnswer(uid, problemId);
    final qshot = await query.get();
    final docs = qshot.docs;
    if (docs.isEmpty) return null;
    return ReadUserAnswer.fromJson(docs.first.data());
  }

  void onToAnswerPageButtonPressed() {
    final problem = state.value?.problem;
    if (problem == null) return;
    final problemId = problem.problemId;
    final path = CreateUserAnswerPage.generatePath(problemId);
    Get.toNamed(path);
  }

  void onCaptionButtonPressed() {
    final isSubscribing = ref.read(purchasesProvider.notifier).isSubscribing();
    if (!isSubscribing) {
      ToastUICore.showErrorFlutterToast('サブスクリプションに登録する必要があります');
      return;
    }
    Get.dialog(FormDialog(
      initialValue: state.value?.userAnswer?.caption?.value,
      onSend: _onSend,
    ));
  }

  Future<void> _onSend(String caption) async {
    final userAnswer = state.value?.userAnswer;
    if (userAnswer == null) return;
    final problemId = userAnswer.problemId;
    final repository = OnCallRepository();
    final result = await repository.addCaption(problemId, caption);
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }
    state = const AsyncValue.loading();
    result.when(success: _onSendSuccess, failure: _onSendFailure);
  }

  void _onSendSuccess(AddCaptionResponse res) async {
    ToastUICore.showFlutterToast('キャプションの追加が成功しました');
    final stateValue = state.value;
    final oldUserAnswer = stateValue?.userAnswer;
    if (stateValue == null || oldUserAnswer == null) return;
    state = await AsyncValue.guard(() async {
      final userAnswer = await _fetchLatestUserAnswer(
          oldUserAnswer.uid, oldUserAnswer.problemId);
      final result = stateValue.copyWith(userAnswer: userAnswer);
      return result;
    });
  }

  void _onSendFailure() {
    ToastUICore.showErrorFlutterToast('キャプションの追加が失敗しました');
  }

  void onRankingButtonPressed() async {
    final answers = state.value?.problem?.answers;
    final userAnswer = state.value?.userAnswer;
    if (answers == null || userAnswer == null) return;
    final problemId = userAnswer.problemId;
    final query =
        QueryCore.rankingQuery(problemId, answers, userAnswer.typedCreateAt());
    try {
      final qshot = await query.count().get();
      final rank = qshot.count ?? 0;
      Get.dialog(RankDialog(rank: rank));
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}

final latestProblemViewModelProvider= AsyncNotifierProvider.autoDispose<
    LatestProblemViewModel, LatestProblemState>(() => LatestProblemViewModel());
