import 'dart:async';
import 'package:be_sharp/provider/global/private_user/private_user_provider.dart';
import 'package:be_sharp/repository/firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:get/route_manager.dart';
import 'package:be_sharp/core/doc_ref_core.dart';
import 'package:be_sharp/core/query_core.dart';
import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/provider/global/user_provider.dart';
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

  FirestoreRepository get repository => FirestoreRepository();
  void _init() {
    final uid = ref.read(userProvider)?.uid;
    if (uid == null) return;
    final query = QueryCore.latestProblem();
    subscriptionStream = query.snapshots().listen((event) async {
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
    final docRef = DocRefCore.userAnswer(uid, problemId);
    final result = await repository.getDoc(docRef);
    result.when(
        success: (doc) {
          final isNoAnswer = !doc.exists;
          if (isNoAnswer) {
            final path = CreateUserAnswerPage.generatePath(problemId);
            Get.toNamed(path);
          }
        },
        failure: () {});
  }
}
