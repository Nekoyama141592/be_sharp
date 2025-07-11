import 'package:be_sharp/domain/converter/timestamp_converter.dart';
import 'package:be_sharp/domain/entity/database/common/detected_image/detected_text_entity.dart';
import 'package:be_sharp/domain/entity/database/problem/problem_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_answer_entity.freezed.dart';
part 'user_answer_entity.g.dart';

@freezed
abstract class UserAnswerEntity with _$UserAnswerEntity {
  const UserAnswerEntity._();
  const factory UserAnswerEntity({
    required String answer,
    @TimestampConverter() DateTime? createdAt,
    required String problemId,
    required DetectedTextEntity? caption,
    required String uid,
  }) = _UserAnswerEntity;
  factory UserAnswerEntity.fromJson(Map<String, dynamic> json) =>
      _$UserAnswerEntityFromJson(json);

  Duration getDifference(ProblemEntity problem) {
    final problemCreatedAt = problem.createdAt!;
    final difference = createdAt!.difference(problemCreatedAt);
    return difference;
  }

  bool isCorrect(ProblemEntity problem) {
    return problem.answers.contains(answer);
  }

  bool isInTime(ProblemEntity problem) {
    return createdAt!.millisecondsSinceEpoch <
        problem.timeLimitDate().millisecondsSinceEpoch;
  }
}
