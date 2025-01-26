// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answered_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnsweredUserImpl _$$AnsweredUserImplFromJson(Map<String, dynamic> json) =>
    _$AnsweredUserImpl(
      publicUser:
          ReadPublicUser.fromJson(json['publicUser'] as Map<String, dynamic>),
      userAnswerQDoc: json['userAnswerQDoc'],
      userAnswer:
          ReadUserAnswer.fromJson(json['userAnswer'] as Map<String, dynamic>),
      userImage: json['userImage'],
    );

Map<String, dynamic> _$$AnsweredUserImplToJson(_$AnsweredUserImpl instance) =>
    <String, dynamic>{
      'publicUser': instance.publicUser,
      'userAnswerQDoc': instance.userAnswerQDoc,
      'userAnswer': instance.userAnswer,
      'userImage': instance.userImage,
    };
