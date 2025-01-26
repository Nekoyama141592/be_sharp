import 'dart:async';

import 'package:be_sharp/core/doc_ref_core.dart';
import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/model/firestore_model/user_answer/write/write_user_answer.dart';
import 'package:be_sharp/provider/user_provider.dart';
import 'package:be_sharp/provider/view_model/abstract/simple_form_view_model.dart';
import 'package:be_sharp/repository/firestore_repository.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:be_sharp/ui_core/validator_ui_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/route_manager.dart';

class CreateUserAnswer extends SimpleFormAsyncViewModel<ReadProblem> {
  @override
  String get title => '回答ページ';
  @override
  String get hintText => '整数で記入';
  @override
  String? Function(String? p1)? get validator => ValidatorUICore.number;
  @override
  String get positiveButtonText => '作成する';
  @override
  String get successMsg => '成功しました';
  @override
  String get failureMsg => '失敗しました';
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
  @override
  void onPositiveButtonPressed() async {
    final uid = ref.read(userProvider)?.uid;
    final problemId = getProblemId();
    if (uid == null || problemId == null) return;
    showDialog(uid, problemId);
  }

  void showDialog(String uid, String problemId) {
    const msg = '回答を送信します。変更できませんがよろしいですか？';
    ToastUICore.cupertinoAlertDialog(msg, () async {
      final repository = FirestoreRepository();
      final docRef = DocRefCore.userAnswer(uid, problemId);
      final json = WriteUserAnswer(answer: text, createdAt: FieldValue.serverTimestamp(), problemId: problemId, uid: uid).toJson();
      final result = await repository.createDoc(docRef, json);
      showResult(result);
    });
  }

  @override
  void onSuccess() {
    super.onSuccess();
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }
    Get.back();
  }

  @override
  void onFailure() {
    super.onFailure();
    Get.back();
  }
}

final createUserAnswerProvider =
    AsyncNotifierProvider.autoDispose<CreateUserAnswer, ReadProblem>(
        () => CreateUserAnswer());
