// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_user_answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WriteUserAnswerImpl _$$WriteUserAnswerImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteUserAnswerImpl(
      answer: json['answer'] as String,
      caption: json['caption'] as String? ?? '',
      createdAt: json['createdAt'],
      problemId: json['problemId'] as String,
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$$WriteUserAnswerImplToJson(
        _$WriteUserAnswerImpl instance) =>
    <String, dynamic>{
      'answer': instance.answer,
      'caption': instance.caption,
      'createdAt': instance.createdAt,
      'problemId': instance.problemId,
      'uid': instance.uid,
    };
