import 'package:be_sharp/core/id_core.dart';
import 'package:be_sharp/model/rest_api/create_problem/request/create_problem_request.dart';
import 'package:be_sharp/model/rest_api/create_problem/response/create_problem_response.dart';
import 'package:be_sharp/provider/repository/cloud_functions/cloud_functions_repository_provider.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'admin_view_model.g.dart';

@riverpod
class AdminViewModel extends _$AdminViewModel {
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

  void onPositiveButtonPressed(BuildContext context) {
    showDialog(context: context,builder: (innerContext) => AlertDialog(
        content: SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
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
          Text(
              latex,
              style: GoogleFonts.notoSans(
                fontSize: 28,
                fontWeight: FontWeight.w500,
              )),
          const Divider(),
          TextButton(
              onPressed: () async {
                Navigator.pop(innerContext);
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
    final repository = ref.read(cloudFunctionsRepositoryProvider);
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
    ToastUiCore.showFlutterToast('作成が成功しました');
  }

  void _onFailure(String msg) {
    ToastUiCore.showErrorFlutterToast(msg);
  }
}
