import 'package:be_sharp/infrastructure/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/user_answer/read/read_user_answer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'answered_user.freezed.dart';
part 'answered_user.g.dart';

@freezed
abstract class AnsweredUser with _$AnsweredUser {
  const AnsweredUser._();
  const factory AnsweredUser(
      {required ReadPublicUser publicUser,
      required ReadUserAnswer userAnswer,
      required String? userImage}) = _AnsweredUser;
  factory AnsweredUser.fromJson(Map<String, dynamic> json) =>
      _$AnsweredUserFromJson(json);
}
