import 'dart:async';

import 'package:be_sharp/core/doc_ref_core.dart';
import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/model/firestore_model/user_answer/write/write_user_answer.dart';
import 'package:be_sharp/provider/user_provider.dart';
import 'package:be_sharp/repository/firestore_repository.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:be_sharp/view/my_app.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/route_manager.dart';
import 'package:in_app_review/in_app_review.dart';

class CreateUserAnswerViewModel extends AutoDisposeAsyncNotifier<ReadProblem> {
  @override
  FutureOr<ReadProblem> build() async {
    final problemId = getProblemId();
    if (problemId == null) {
      throw Error();
    }
    final docRef = DocRefCore.problem(problemId);
    final doc = await docRef.get();
    return ReadProblem.fromJson(doc.data()!);
  }

  String? getProblemId() => Get.parameters['problemId'];
  void onPositiveButtonPressed(String answer) async {
    final uid = ref.read(userProvider)?.uid;
    final problemId = getProblemId();
    if (uid == null || problemId == null) return;
    showDialog(uid, problemId, answer);
  }

  void showDialog(String uid, String problemId, String answer) {
    const msg = '回答を送信します。変更できませんがよろしいですか？';
    ToastUICore.cupertinoAlertDialog(
        msg, () async => await _positiveAction(uid, problemId, answer));
  }

  Future<void> _positiveAction(
      String uid, String problemId, String answer) async {
    final repository = FirestoreRepository();
    final docRef = DocRefCore.userAnswer(uid, problemId);
    final json = WriteUserAnswer(
            answer: answer,
            createdAt: FieldValue.serverTimestamp(),
            problemId: problemId,
            uid: uid)
        .toJson();
    final result = await repository.createDoc(docRef, json);
    result.when(success: onSuccess, failure: onFailure);
  }

  void onSuccess(bool res) {
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }
    Get.offAllNamed(MyApp.path);
    _requestReview();
  }

  Future<void> _requestReview() async {
    final inAppReview = InAppReview.instance;
    final isAvailable = await inAppReview.isAvailable();
    if (!isAvailable) return;
    await inAppReview.requestReview();
  }

  void onFailure() {
    Get.back();
  }
}

final createUserAnswerProvider =
    AsyncNotifierProvider.autoDispose<CreateUserAnswerViewModel, ReadProblem>(
        () => CreateUserAnswerViewModel());
