import 'package:be_sharp/core/id_core.dart';
import 'package:be_sharp/model/rest_api/create_problem/request/create_problem_request.dart';
import 'package:be_sharp/model/rest_api/create_problem/response/create_problem_response.dart';
import 'package:be_sharp/repository/on_call_repository.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:be_sharp/view/common/latex_text.dart';
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
    final problemId = IDCore.ulid();
    final repository = OnCallRepository();
    final request = CreateProblemRequest(
            question: question,
            latex: latex,
            problemId: problemId,
            timeLimitSeconds: timeLimitSecond!,
            answers: <String>[answer!]);
    final result = await repository.createProblem(request);
    result.when(success: _onSuccess, failure: _onFailure);
  }

  void _onSuccess(CreateProblemResponse res) {
    ToastUICore.showFlutterToast('作成が成功しました');
    print(res.toString());
  }

  void _onFailure() {
    ToastUICore.showErrorFlutterToast('作成が失敗しました');
  }
}

final adminProvider = NotifierProvider.autoDispose<AdminViewModel, String>(
    () => AdminViewModel());
