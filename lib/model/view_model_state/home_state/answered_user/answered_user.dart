import 'dart:typed_data';

import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/model/firestore_model/user_answer/read/read_user_answer.dart';
import 'package:be_sharp/typedefs/firestore_typedef.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'answered_user.freezed.dart';
part 'answered_user.g.dart';

@freezed
abstract class AnsweredUser implements _$AnsweredUser {
  const AnsweredUser._();
  const factory AnsweredUser(
      {
        required ReadPublicUser publicUser,
        required dynamic userAnswerQDoc,
        required ReadUserAnswer userAnswer,
        required dynamic userImage
      }) = _AnsweredUser;
  factory AnsweredUser.fromJson(Map<String, dynamic> json) =>
      _$AnsweredUserFromJson(json);
  QDoc typedUserAnswerDoc() => userAnswerQDoc as QDoc;
  Uint8List? typedUserImage() => userImage as Uint8List?;
}
