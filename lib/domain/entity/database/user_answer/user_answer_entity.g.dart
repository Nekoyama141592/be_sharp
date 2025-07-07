// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_answer_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserAnswerEntity _$UserAnswerEntityFromJson(Map<String, dynamic> json) =>
    _UserAnswerEntity(
      answer: json['answer'] as String,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp?),
      problemId: json['problemId'] as String,
      caption: json['caption'] == null
          ? null
          : DetectedTextEntity.fromJson(
              json['caption'] as Map<String, dynamic>),
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$UserAnswerEntityToJson(_UserAnswerEntity instance) =>
    <String, dynamic>{
      'answer': instance.answer,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'problemId': instance.problemId,
      'caption': instance.caption,
      'uid': instance.uid,
    };
