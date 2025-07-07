// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProblemEntity _$ProblemEntityFromJson(Map<String, dynamic> json) =>
    _ProblemEntity(
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp?),
      question: json['question'] as String,
      latex: json['latex'] as String,
      problemId: json['problemId'] as String,
      timeLimitSeconds: (json['timeLimitSeconds'] as num).toInt(),
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProblemEntityToJson(_ProblemEntity instance) =>
    <String, dynamic>{
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'question': instance.question,
      'latex': instance.latex,
      'problemId': instance.problemId,
      'timeLimitSeconds': instance.timeLimitSeconds,
      'answers': instance.answers,
    };
