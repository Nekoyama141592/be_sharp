import 'dart:async';

import 'package:be_sharp/core/query_core.dart';
import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/model/view_model_state/latest_problem/latest_problem_state.dart';
import 'package:be_sharp/view/root_page/create_user_answer_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/route_manager.dart';

class LatestProblemViewModel extends AsyncNotifier<LatestProblemState> {
  @override
  FutureOr<LatestProblemState> build() async {
    final query = QueryCore.latestProblem();
    final qshot = await query.get();
    final docs = qshot.docs;
    if (docs.isEmpty) return const LatestProblemState();
    final problem = ReadProblem.fromJson(docs.first.data());
    return LatestProblemState(problem: problem);
  }

  void onCardTap(ReadProblem problem) {
    final problemId = problem.problemId;
    final path = CreateUserAnswerPage.generatePath(problemId);
    Get.toNamed(path);
  }
}

final latestProblemProvider =
    AsyncNotifierProvider<LatestProblemViewModel, LatestProblemState>(
        () => LatestProblemViewModel());
