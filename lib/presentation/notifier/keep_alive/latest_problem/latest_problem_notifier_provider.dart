import 'dart:async';
import 'package:be_sharp/domain/entity/database/problem/problem_entity.dart';
import 'package:be_sharp/presentation/state/notifier_state/latest_problem_notifier_state.dart';
import 'package:be_sharp/presentation/notifier/keep_alive/private_user/private_user_notifier_provider.dart';
import 'package:be_sharp/core/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/infrastructure/repository/database_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:be_sharp/core/provider/stream/auth/stream_auth_provider.dart';
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
    final entity = ProblemEntity.fromJson(problemDoc.data());
    if (!entity.isInTimeLimit()) return false;
    final problemId = entity.problemId;
    final doc = await repository.getUserAnswerDoc(uid, problemId);
    final isExists = doc?.exists ?? false;
    return !isExists;
  }
}
