// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_answer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserAnswerModel _$UserAnswerModelFromJson(Map<String, dynamic> json) =>
    _UserAnswerModel(
      answer: json['answer'] as String,
      createdAt: json['createdAt'],
      likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
      problemId: json['problemId'] as String,
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$UserAnswerModelToJson(_UserAnswerModel instance) =>
    <String, dynamic>{
      'answer': instance.answer,
      'createdAt': instance.createdAt,
      'likeCount': instance.likeCount,
      'problemId': instance.problemId,
      'uid': instance.uid,
    };
