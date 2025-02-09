import 'package:be_sharp/core/doc_ref_core.dart';
import 'package:be_sharp/core/id_core.dart';
import 'package:be_sharp/model/firestore_model/problem/write/write_problem.dart';
import 'package:be_sharp/repository/firestore_repository.dart';
import 'package:be_sharp/repository/result.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdminViewModel extends AutoDisposeNotifier<String> {
  @override
  String build() {
    throw UnimplementedError();
  }

  String get successMsg => '成功しました';
  String get failureMsg => '失敗しました';
  int? timeLimitSecond;
  String? answer;
  String latex = '';
  String question = "";
  void setQuestion(String? value) {
    if (value == null) return;
    question = value;
  }

  void setLatex(String? value) {
    if (value == null) return;
    latex = value;
  }

  void setAnswer(String? value) {
    answer = value;
  }

  void setTimeLimit(String? value) {
    if (value == null) return;
    final intValue = int.tryParse(value);
    if (intValue == null) return;
    timeLimitSecond = intValue;
  }

  void onPositiveButtonPressed() async {
    final repository = FirestoreRepository();
    final problemId = IDCore.ulid();
    final docRef = DocRefCore.problem(problemId);
    final now = Timestamp.now();
    final json = WriteProblem(
            question: question,
            latex: latex,
            createdAt: now,
            problemId: problemId,
            timeLimitSeconds: timeLimitSecond!,
            updatedAt: now)
        .toJson();
    final result = await repository.createDoc(docRef, json);
    showResult(result);
    await Future.delayed(Duration(seconds: timeLimitSecond!));
    final updateResult = await repository.updateDoc(docRef, {
      'answers': <String>[answer!]
    });
    showResult(updateResult);
  }

  void showResult(Result result) {
    result.when(success: _success, failure: _failure);
  }

  void _success(dynamic res) {
    ToastUICore.showFlutterToast(successMsg);
  }

  void _failure() {
    ToastUICore.showErrorFlutterToast(failureMsg);
  }
}

final adminProvider = NotifierProvider.autoDispose<AdminViewModel, String>(
    () => AdminViewModel());
