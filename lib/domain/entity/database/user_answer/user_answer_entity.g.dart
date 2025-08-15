// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_answer_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserAnswerEntity _$UserAnswerEntityFromJson(Map<String, dynamic> json) =>
    _UserAnswerEntity(
      answer: json['answer'] as String,
      createdAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['createdAt'], const TimestampConverter().fromJson),
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
      'createdAt': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.createdAt, const TimestampConverter().toJson),
      'problemId': instance.problemId,
      'caption': instance.caption,
      'uid': instance.uid,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
