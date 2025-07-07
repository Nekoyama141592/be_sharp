import 'package:be_sharp/domain/converter/timestamp_converter.dart';
import 'package:be_sharp/domain/entity/database/common/detected_image/detected_text_entity.dart';
import 'package:be_sharp/domain/entity/database/problem/problem_entity.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/user_answer/read/read_user_answer.dart';
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
      createdAt: model.createdAt,
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
