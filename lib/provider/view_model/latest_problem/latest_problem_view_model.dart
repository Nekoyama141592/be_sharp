import 'dart:async';
import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/model/firestore_model/user_answer/read/read_user_answer.dart';
import 'package:be_sharp/model/rest_api/addCaption/response/add_caption_response.dart';
import 'package:be_sharp/model/view_model_state/latest_problem_state/latest_problem_state.dart';
import 'package:be_sharp/provider/keep_alive/notifier/products/products_notifier.dart';
import 'package:be_sharp/provider/keep_alive/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/provider/repository/cloud_functions/cloud_functions_repository_provider.dart';
import 'package:be_sharp/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/repository/database_repository.dart';
import 'package:be_sharp/presentation/util/toast_ui_util.dart';
import 'package:be_sharp/view/root_page/create_user_answer_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'latest_problem_view_model.g.dart';

@riverpod
class LatestProblemViewModel extends _$LatestProblemViewModel {
  @override
  FutureOr<LatestProblemState> build() async {
    return _fetchData();
  }

  Future<LatestProblemState> _fetchData() async {
    final problem = await _fetchLatestProblem();
    final uid = ref.read(streamAuthUidProvider).value;
    if (uid == null || problem == null) {
      return LatestProblemState(problem: problem);
    }
    final userAnswer = await _fetchLatestUserAnswer(uid, problem.problemId);
    return LatestProblemState(problem: problem, userAnswer: userAnswer);
  }

  DatabaseRepository get _repository => ref.read(databaseRepositoryProvider);

  Future<ReadProblem?> _fetchLatestProblem() {
    return _repository.fetchLatestProblem();
  }

  Future<ReadUserAnswer?> _fetchLatestUserAnswer(String uid, String problemId) {
    return _repository.fetchLatestUserAnswer(uid, problemId);
  }

  String? getAnswerPagePath() {
    final problem = state.value?.problem;
    if (problem == null) return null;
    final problemId = problem.problemId;
    return CreateUserAnswerPage.generatePath(problemId);
  }

  bool get canShowCaptionDialog {
    final isSubscribing =
        ref.read(productsNotifierProvider).value?.isSubscribing() ?? false;
    if (!isSubscribing) {
      ToastUiUtil.showErrorFlutterToast('サブスクリプションに登録する必要があります');
      return false;
    }
    return true;
  }

  String? get initialCaptionValue {
    return state.value?.userAnswer?.caption?.value;
  }

  Future<void> onSendCaption(String caption) async {
    final userAnswer = state.value?.userAnswer;
    if (userAnswer == null) return;
    final problemId = userAnswer.problemId;
    final repository = ref.read(cloudFunctionsRepositoryProvider);
    final result = await repository.addCaption(problemId, caption);
    state = const AsyncValue.loading();
    result.when(success: _onSendSuccess, failure: _onSendFailure);
  }

  void _onSendSuccess(AddCaptionResponse res) async {
    ToastUiUtil.showFlutterToast('キャプションの追加が成功しました');
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

  void _onSendFailure(String msg) {
    ToastUiUtil.showErrorFlutterToast('キャプションの追加が失敗しました');
  }

  Future<int?> getRankForDialog() async {
    final answers = state.value?.problem?.answers;
    final userAnswer = state.value?.userAnswer;
    if (answers == null || userAnswer == null) return null;
    final problemId = userAnswer.problemId;
    return await ref
        .read(databaseRepositoryProvider)
        .getRank(problemId, answers, userAnswer);
  }
}
