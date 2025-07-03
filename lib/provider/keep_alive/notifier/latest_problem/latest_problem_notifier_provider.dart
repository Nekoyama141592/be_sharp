import 'dart:async';
import 'package:be_sharp/model/notifier_state/latest_problem_notifier_state.dart';
import 'package:be_sharp/provider/keep_alive/notifier/private_user/private_user_notifier_provider.dart';
import 'package:be_sharp/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/repository/database_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/provider/keep_alive/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/typedefs/firestore_typedef.dart';
part 'latest_problem_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<QuerySnapshot<Map<String, dynamic>>> latestProblemStream(Ref ref) =>
    ref.watch(databaseRepositoryProvider).latestPromblemSnapshots();

@Riverpod(keepAlive: true)
class LatestProblemNotifier extends _$LatestProblemNotifier {
  @override
  FutureOr<LatestProblemNotifierState> build() {
    return _fetchData();
  }

  DatabaseRepository get repository => ref.read(databaseRepositoryProvider);
  Future<LatestProblemNotifierState> _fetchData() async {
    final uid = ref.watch(streamAuthUidProvider).value;
    if (uid == null) return const LatestProblemNotifierState();
    final event = ref.watch(latestProblemStreamProvider).value;
    final isAdmin = ref.read(privateUserNotifierProvider.notifier).isAdmin();
    if (isAdmin) return const LatestProblemNotifierState();
    final docs = event?.docs ?? [];
    if (docs.isEmpty) return const LatestProblemNotifierState();
    final problemDoc = docs.first;
    final isNewProblem = await _getIsNewProblem(uid, problemDoc);
    return LatestProblemNotifierState(
        isNewProblem: isNewProblem, problemId: problemDoc.id);
  }

  Future<bool> _getIsNewProblem(String uid, QDoc problemDoc) async {
    final problem = ReadProblem.fromJson(problemDoc.data());
    if (!problem.isInTimeLimit()) return false;
    final problemId = problem.problemId;
    final doc = await repository.getUserAnswerDoc(uid, problemId);
    final isExists = doc?.exists ?? false;
    return !isExists;
  }
}
