import 'dart:async';
import 'package:be_sharp/core/route_core.dart';
import 'package:be_sharp/provider/global/private_user/private_user_provider.dart';
import 'package:be_sharp/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/repository/database_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/provider/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/typedefs/firestore_typedef.dart';
import 'package:be_sharp/view/root_page/create_user_answer_page.dart';
part 'my_home_view_model.g.dart';

@Riverpod(keepAlive: true)
class MyHomeViewModel extends _$MyHomeViewModel {
  StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? subscriptionStream;
  @override
  String build() {
    _init();
    return '';
  }

  DatabaseRepository get repository => ref.read(databaseRepositoryProvider);
  void _init() {
    final uid = ref.read(streamAuthUidProvider).value;
    if (uid == null) return;
    subscriptionStream = repository.latestPromblemSnapshots().listen((event) async {
      final isAdmin = ref.read(privateUserNotifierProvider.notifier).isAdmin();
      if (isAdmin) return;
      final docs = event.docs;
      if (docs.isEmpty) return;
      final problemDoc = docs.first;
      await _onFetchProblemSuccess(uid, problemDoc);
    });
  }

  Future<void> _onFetchProblemSuccess(String uid, QDoc problemDoc) async {
    final problem = ReadProblem.fromJson(problemDoc.data());
    if (!problem.isInTimeLimit()) return;
    final problemId = problem.problemId;
    final doc = await repository.getUserAnswerDoc(uid, problemId);
    final isExists = doc != null && doc.exists;
    if (isExists) return;
    final path = CreateUserAnswerPage.generatePath(problemId);
    RouteCore.pushPathWithoutContext(path);
  }
}
