import 'package:be_sharp/domain/converter/timestamp_converter.dart';
import 'package:be_sharp/domain/entity/database/common/detected_image/detected_text_entity.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/user_answer/read/read_user_answer.dart';
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

  factory UserAnswerEntity.fromModel(ReadUserAnswer model) {
    return UserAnswerEntity(
      answer: model.answer,
      createdAt: model.createdAt is Timestamp 
          ? (model.createdAt as Timestamp).toDate()
          : null,
      problemId: model.problemId,
      caption: model.caption != null
          ? DetectedTextEntity(
              negativeScore: model.caption!.negativeScore,
              value: model.caption!.value,
            )
          : null,
      uid: model.uid,
    );
  }

  Duration getDifference(ReadProblem problem) {
    final problemCreatedAt = problem.typedCreatedAt();
    final difference =
        createdAt!.difference(problemCreatedAt.toDate());
    return difference;
  }

  bool isCorrect(ReadProblem problem) {
    return problem.answers.contains(answer);
  }

  bool isInTime(ReadProblem problem) {
    return createdAt!.millisecondsSinceEpoch <
        problem.timeLimitDate().millisecondsSinceEpoch;
  }
}
