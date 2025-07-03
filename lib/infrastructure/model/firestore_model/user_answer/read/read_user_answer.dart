import 'package:be_sharp/infrastructure/model/firestore_model/common/detected_text/detected_text.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/problem/read/read_problem.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_user_answer.freezed.dart';
part 'read_user_answer.g.dart';

@freezed
abstract class ReadUserAnswer with _$ReadUserAnswer {
  const ReadUserAnswer._();
  const factory ReadUserAnswer({
    required String answer,
    required dynamic createdAt,
    required String problemId,
    required DetectedText? caption,
    required String uid,
  }) = _ReadUserAnswer;
  factory ReadUserAnswer.fromJson(Map<String, dynamic> json) =>
      _$ReadUserAnswerFromJson(json);
  Timestamp typedCreateAt() => createdAt as Timestamp;
  Duration getDifference(ReadProblem problem) {
    final problemCreatedAt = problem.typedCreatedAt();
    final difference =
        typedCreateAt().toDate().difference(problemCreatedAt.toDate());
    return difference;
  }

  bool isCorrect(ReadProblem problem) {
    return problem.answers.contains(answer);
  }

  bool isInTime(ReadProblem problem) {
    return typedCreateAt().toDate().millisecondsSinceEpoch <
        problem.timeLimitDate().millisecondsSinceEpoch;
  }
}
