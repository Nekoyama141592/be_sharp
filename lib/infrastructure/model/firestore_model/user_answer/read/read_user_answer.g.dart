// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_user_answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReadUserAnswer _$ReadUserAnswerFromJson(Map<String, dynamic> json) =>
    _ReadUserAnswer(
      answer: json['answer'] as String,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp?),
      problemId: json['problemId'] as String,
      caption: json['caption'] == null
          ? null
          : DetectedText.fromJson(json['caption'] as Map<String, dynamic>),
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$ReadUserAnswerToJson(_ReadUserAnswer instance) =>
    <String, dynamic>{
      'answer': instance.answer,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'problemId': instance.problemId,
      'caption': instance.caption,
      'uid': instance.uid,
    };
