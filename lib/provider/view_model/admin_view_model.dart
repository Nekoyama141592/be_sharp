import 'package:be_sharp/core/doc_ref_core.dart';
import 'package:be_sharp/core/id_core.dart';
import 'package:be_sharp/model/firestore_model/problem/write/write_problem.dart';
import 'package:be_sharp/provider/view_model/abstract/simple_form_view_model.dart';
import 'package:be_sharp/repository/firestore_repository.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:be_sharp/ui_core/validator_ui_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdminViewModel extends SimpleFormViewModel<String> {
  @override
  String build() {
    // TODO: implement build
    throw UnimplementedError();
  }
  @override
  // TODO: implement title
  String get title => '問題作成';
  @override
  String get hintText => 'マークダウンで記述';
  @override
  String? Function(String? p1)? get validator => ValidatorUICore.text;
  @override
  String get positiveButtonText => '作成する';
  @override
  String get successMsg => '成功しました';
  @override
  String get failureMsg => '失敗しました';
  @override
  void onPositiveButtonPressed() async {
    if (text.isEmpty) return;
    final repository = FirestoreRepository();
    final problemId = IDCore.ulid();
    final docRef = DocRefCore.problem(problemId);
    final json = WriteProblem(question: text,createdAt: Timestamp.now()).toJson();
    final result = await repository.createDoc(docRef, json);
    result.when(success: (_) {
      ToastUICore.showFlutterToast(successMsg);
    }, failure: () {
      ToastUICore.showErrorFlutterToast(failureMsg);
    });
  }
}
final adminProvider =
    NotifierProvider.autoDispose<AdminViewModel, String>(() => AdminViewModel());