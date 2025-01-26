import 'dart:async';

import 'package:be_sharp/core/query_core.dart';
import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/model/firestore_model/user_answer/read/read_user_answer.dart';
import 'package:be_sharp/model/view_model_state/latest_problem/latest_problem_state.dart';
import 'package:be_sharp/provider/user_provider.dart';
import 'package:be_sharp/view/root_page/create_user_answer_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/route_manager.dart';

class LatestProblemViewModel
    extends AutoDisposeAsyncNotifier<LatestProblemState> {
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

  void onCaptionButtonPressed() {}
}

final latestProblemProvider = AsyncNotifierProvider.autoDispose<
    LatestProblemViewModel, LatestProblemState>(() => LatestProblemViewModel());
