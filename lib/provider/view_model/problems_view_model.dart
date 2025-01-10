import 'dart:async';

import 'package:be_sharp/core/col_ref_core.dart';
import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/view/root_page/create_user_answer_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/route_manager.dart';

class ProblemsViewModel extends AsyncNotifier<List<ReadProblem>> {
  @override
  FutureOr<List<ReadProblem>> build() async {
    final colRef = ColRefCore.problems();
    final qshot = await colRef.get();
    final results = qshot.docs.map((e) => ReadProblem.fromJson(e.data())).toList();
    return results;
  }

  void onCardTap(ReadProblem problem) {
    final problemId = problem.problemId;
    final path = CreateUserAnswerPage.generatePath(problemId);
    Get.toNamed(path);
  }
}
final problemsProvider =
    AsyncNotifierProvider<ProblemsViewModel, List<ReadProblem>>(
        () => ProblemsViewModel());