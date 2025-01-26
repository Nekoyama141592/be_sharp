import 'dart:async';

import 'package:be_sharp/core/query_core.dart';
import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/model/firestore_model/user_answer/read/read_user_answer.dart';
import 'package:be_sharp/model/view_model_state/latest_problem/latest_problem_state.dart';
import 'package:be_sharp/provider/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LatestProblemViewModel extends AsyncNotifier<LatestProblemState> {
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
    final userAnswer = await _fetchLatestUserAnswer(user.uid,problem.problemId);
    return LatestProblemState(problem: problem, userAnswer: userAnswer);
  }

  Future<ReadProblem?> _fetchLatestProblem() async {
    final query = QueryCore.latestProblem();
    final qshot = await query.get();
    final docs = qshot.docs;
    if (docs.isEmpty) return null;
    return ReadProblem.fromJson(docs.first.data());
  }

  Future<ReadUserAnswer?> _fetchLatestUserAnswer(String uid,String problemId) async {
    final query = QueryCore.latestUserAnswer(uid,problemId);
    final qshot = await query.get();
    final docs = qshot.docs;
    if (docs.isEmpty) return null;
    return ReadUserAnswer.fromJson(docs.first.data());
  }
  void onCaptionButtonPressed() {}
}

final latestProblemProvider =
    AsyncNotifierProvider<LatestProblemViewModel, LatestProblemState>(
        () => LatestProblemViewModel());
