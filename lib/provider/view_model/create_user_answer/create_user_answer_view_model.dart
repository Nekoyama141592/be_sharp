import 'dart:async';

import 'package:be_sharp/core/route_core.dart';
import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/provider/keep_alive/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/repository/database_repository.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:be_sharp/view/my_app.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:in_app_review/in_app_review.dart';
part 'create_user_answer_view_model.g.dart';

@riverpod
class CreateUserAnswerViewModel extends _$CreateUserAnswerViewModel {
  @override
  FutureOr<ReadProblem?> build(String problemId) {
    return _repository.getProblem(problemId);
  }

  DatabaseRepository get _repository => ref.read(databaseRepositoryProvider);
  void onPositiveButtonPressed(BuildContext context, String answer) async {
    final uid = ref.read(streamAuthUidProvider).value;
    if (uid == null) return;
    _showDialog(context, uid, problemId, answer);
  }

  void _showDialog(
      BuildContext context, String uid, String problemId, String answer) {
    const msg = '回答を送信します。変更できませんがよろしいですか？';
    ToastUiCore.cupertinoAlertDialog(context, msg,
        () async => await _positiveAction(context, uid, problemId, answer));
  }

  Future<void> _positiveAction(
      BuildContext context, String uid, String problemId, String answer) async {
    final result = await _repository.createAnswer(uid, problemId, answer);
    result.when(
        success: (_) => onSuccess(context), failure: (_) => onFailure(context));
  }

  void onSuccess(BuildContext context) {
    Navigator.pop(context);
    RouteCore.pushReplace(context, MyApp.path);
    _requestReview();
  }

  Future<void> _requestReview() async {
    final inAppReview = InAppReview.instance;
    final isAvailable = await inAppReview.isAvailable();
    if (!isAvailable) return;
    await inAppReview.requestReview();
  }

  void onFailure(BuildContext context) {
    RouteCore.back(context);
  }
}
