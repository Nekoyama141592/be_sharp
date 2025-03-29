// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_user_answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WriteUserAnswerImpl _$$WriteUserAnswerImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteUserAnswerImpl(
      answer: json['answer'] as String,
      createdAt: json['createdAt'],
      likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
      problemId: json['problemId'] as String,
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$$WriteUserAnswerImplToJson(
        _$WriteUserAnswerImpl instance) =>
    <String, dynamic>{
      'answer': instance.answer,
      'createdAt': instance.createdAt,
      'likeCount': instance.likeCount,
      'problemId': instance.problemId,
      'uid': instance.uid,
    };
