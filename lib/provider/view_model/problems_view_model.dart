import 'dart:async';

import 'package:be_sharp/core/col_ref_core.dart';
import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProblemsViewModel extends AsyncNotifier<List<ReadProblem>> {
  @override
  FutureOr<List<ReadProblem>> build() async {
    final colRef = ColRefCore.problems();
    final qshot = await colRef.get();
    final results = qshot.docs.map((e) => ReadProblem.fromJson(e.data())).toList();
    return results;
  }
}
final problemsProvider =
    AsyncNotifierProvider<ProblemsViewModel, List<ReadProblem>>(
        () => ProblemsViewModel());