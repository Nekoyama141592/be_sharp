// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answered_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnsweredUserImpl _$$AnsweredUserImplFromJson(Map<String, dynamic> json) =>
    _$AnsweredUserImpl(
      publicUser:
          ReadPublicUser.fromJson(json['publicUser'] as Map<String, dynamic>),
      userAnswer:
          ReadUserAnswer.fromJson(json['userAnswer'] as Map<String, dynamic>),
      userImage: json['userImage'] as String?,
    );

Map<String, dynamic> _$$AnsweredUserImplToJson(_$AnsweredUserImpl instance) =>
    <String, dynamic>{
      'publicUser': instance.publicUser,
      'userAnswer': instance.userAnswer,
      'userImage': instance.userImage,
    };
