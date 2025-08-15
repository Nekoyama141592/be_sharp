// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProblemEntity _$ProblemEntityFromJson(Map<String, dynamic> json) =>
    _ProblemEntity(
      createdAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['createdAt'], const TimestampConverter().fromJson),
      question: json['question'] as String,
      latex: json['latex'] as String,
      problemId: json['problemId'] as String,
      timeLimitSeconds: (json['timeLimitSeconds'] as num).toInt(),
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProblemEntityToJson(_ProblemEntity instance) =>
    <String, dynamic>{
      'createdAt': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.createdAt, const TimestampConverter().toJson),
      'question': instance.question,
      'latex': instance.latex,
      'problemId': instance.problemId,
      'timeLimitSeconds': instance.timeLimitSeconds,
      'answers': instance.answers,
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
