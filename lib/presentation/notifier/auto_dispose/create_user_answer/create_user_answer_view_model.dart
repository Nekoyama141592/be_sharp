import 'dart:async';

import 'package:be_sharp/domain/entity/database/problem/problem_entity.dart';
import 'package:be_sharp/core/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/core/provider/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/infrastructure/repository/database_repository.dart';
import 'package:be_sharp/infrastructure/repository/result/result.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:in_app_review/in_app_review.dart';
part 'create_user_answer_view_model.g.dart';

@riverpod
class CreateUserAnswerViewModel extends _$CreateUserAnswerViewModel {
  @override
  FutureOr<ProblemEntity?> build(String problemId) {
    return _repository.getProblem(problemId);
  }

  DatabaseRepository get _repository => ref.read(databaseRepositoryProvider);
  FutureResult<bool> onPositiveButtonPressed(
      BuildContext context, String answer) async {
    final uid = ref.read(streamAuthUidProvider).value;
    if (uid == null) return const Result.failure('ログインしてください');
    return await _repository.createAnswer(uid, problemId, answer);
  }

  Future<void> requestReview() async {
    final inAppReview = InAppReview.instance;
    final isAvailable = await inAppReview.isAvailable();
    if (!isAvailable) return;
    await inAppReview.requestReview();
  }
}
