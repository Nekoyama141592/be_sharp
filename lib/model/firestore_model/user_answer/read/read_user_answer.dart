import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_user_answer.freezed.dart';
part 'read_user_answer.g.dart';

@freezed
abstract class ReadUserAnswer implements _$ReadUserAnswer {
  const ReadUserAnswer._();
  const factory ReadUserAnswer({
    required String answer,
    required dynamic createdAt,
    required String problemId,
    required String caption,
    required String uid,
  }) = _ReadUserAnswer;
  factory ReadUserAnswer.fromJson(Map<String, dynamic> json) =>
      _$ReadUserAnswerFromJson(json);
  Timestamp _typedCreateAt() => createdAt as Timestamp;
  Duration getDifference(ReadProblem problem) {
    final problemCreatedAt = problem.typedCreatedAt();
    final difference =
        _typedCreateAt().toDate().difference(problemCreatedAt.toDate());
    return difference;
  }
  bool isCorrect(ReadProblem problem) {
    return problem.answers.contains(answer);
  }
  bool isInTime(ReadProblem problem) {
    return _typedCreateAt().toDate().millisecondsSinceEpoch < problem.timeLimitDate().microsecondsSinceEpoch;
  }
}
