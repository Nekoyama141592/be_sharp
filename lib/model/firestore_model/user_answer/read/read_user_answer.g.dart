// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_user_answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadUserAnswerImpl _$$ReadUserAnswerImplFromJson(Map<String, dynamic> json) =>
    _$ReadUserAnswerImpl(
      answer: json['answer'] as String,
      createdAt: json['createdAt'],
      problemId: json['problemId'] as String,
      caption: json['caption'] == null
          ? null
          : DetectedText.fromJson(json['caption'] as Map<String, dynamic>),
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$$ReadUserAnswerImplToJson(
        _$ReadUserAnswerImpl instance) =>
    <String, dynamic>{
      'answer': instance.answer,
      'createdAt': instance.createdAt,
      'problemId': instance.problemId,
      'caption': instance.caption,
      'uid': instance.uid,
    };
