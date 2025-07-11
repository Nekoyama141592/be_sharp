import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_answer_model.freezed.dart';
part 'user_answer_model.g.dart';

@freezed
abstract class UserAnswerModel with _$UserAnswerModel {
  const UserAnswerModel._();
  const factory UserAnswerModel({
    required String answer,
    required dynamic createdAt,
    @Default(0) int likeCount,
    required String problemId,
    required String uid,
  }) = _UserAnswerModel;
  factory UserAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$UserAnswerModelFromJson(json);
  factory UserAnswerModel.withServerTimestamp({
    required String answer,
    required String problemId,
    required String uid,
    int likeCount = 0,
  }) {
    return UserAnswerModel(
      answer: answer,
      createdAt: FieldValue.serverTimestamp(),
      likeCount: likeCount,
      problemId: problemId,
      uid: uid,
    );
  }
}
