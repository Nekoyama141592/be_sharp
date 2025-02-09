import 'package:be_sharp/core/doc_ref_core.dart';
import 'package:be_sharp/core/id_core.dart';
import 'package:be_sharp/model/firestore_model/problem/write/write_problem.dart';
import 'package:be_sharp/repository/firestore_repository.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:be_sharp/view/common/latex_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminViewModel extends AutoDisposeNotifier<String> {
  @override
  String build() {
    throw UnimplementedError();
  }

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

  void onPositiveButtonPressed() {
    Get.dialog(AlertDialog(
        content: SizedBox(
      height: Get.height * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'プレビュー',
          ),
          const SizedBox(height: 10),
          Text(
            question,
            style: GoogleFonts.notoSans(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          LatexText(
              data: latex,
              style: GoogleFonts.notoSans(
                fontSize: 28,
                fontWeight: FontWeight.w500,
              )),
          const Divider(),
          TextButton(
              onPressed: () async {
                if (Get.isDialogOpen ?? false) {
                  Get.back();
                }
                await _send();
              },
              child: const Text(
                'OK',
              )),
        ],
      ),
    )));
  }

  Future<void> _send() async {
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
    result.when(success: _onCreateSuccess, failure: _onCreateFailure);
    await Future.delayed(Duration(seconds: timeLimitSecond!));
    final updateResult = await repository.updateDoc(docRef, {
      'answers': <String>[answer!]
    });
    updateResult.when(success: _onUpdateSuccess, failure: _onUpdateFailure);
  }

  void _onCreateSuccess(bool res) {
    ToastUICore.showFlutterToast('作成が成功しました');
  }

  void _onCreateFailure() {
    ToastUICore.showErrorFlutterToast('作成が失敗しました');
  }

  void _onUpdateSuccess(bool res) {
    ToastUICore.showFlutterToast('更新が成功しました');
  }

  void _onUpdateFailure() {
    ToastUICore.showErrorFlutterToast('更新が失敗しました');
  }
}

final adminProvider = NotifierProvider.autoDispose<AdminViewModel, String>(
    () => AdminViewModel());
