import 'package:be_sharp/domain/entity/database/user_answer/user_answer_entity.dart';
import 'package:be_sharp/domain/entity/database/public_user/public_user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'answered_user.freezed.dart';
part 'answered_user.g.dart';

@freezed
abstract class AnsweredUser with _$AnsweredUser {
  const AnsweredUser._();
  const factory AnsweredUser({
    required PublicUserEntity publicUser,
    required UserAnswerEntity userAnswer,
  }) = _AnsweredUser;
  factory AnsweredUser.fromJson(Map<String, dynamic> json) =>
      _$AnsweredUserFromJson(json);
}
