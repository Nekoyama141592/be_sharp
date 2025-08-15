// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answered_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnsweredUser _$AnsweredUserFromJson(Map<String, dynamic> json) =>
    _AnsweredUser(
      publicUser:
          PublicUserEntity.fromJson(json['publicUser'] as Map<String, dynamic>),
      userAnswer:
          UserAnswerEntity.fromJson(json['userAnswer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnsweredUserToJson(_AnsweredUser instance) =>
    <String, dynamic>{
      'publicUser': instance.publicUser,
      'userAnswer': instance.userAnswer,
    };
