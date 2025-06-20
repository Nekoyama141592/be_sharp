import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_user_answer.freezed.dart';
part 'write_user_answer.g.dart';

@freezed
abstract class WriteUserAnswer with _$WriteUserAnswer {
  const WriteUserAnswer._();
  const factory WriteUserAnswer({
    required String answer,
    required dynamic createdAt,
    @Default(0) int likeCount,
    required String problemId,
    required String uid,
  }) = _WriteUserAnswer;
  factory WriteUserAnswer.fromJson(Map<String, dynamic> json) =>
      _$WriteUserAnswerFromJson(json);
}
