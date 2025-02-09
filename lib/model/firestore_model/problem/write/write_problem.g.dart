// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_problem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WriteProblemImpl _$$WriteProblemImplFromJson(Map<String, dynamic> json) =>
    _$WriteProblemImpl(
      createdAt: json['createdAt'],
      question: json['question'] as String,
      latex: json['latex'] as String,
      problemId: json['problemId'] as String,
      timeLimitSeconds: (json['timeLimitSeconds'] as num?)?.toInt() ?? 120,
      answers: (json['answers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$$WriteProblemImplToJson(_$WriteProblemImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'question': instance.question,
      'latex': instance.latex,
      'problemId': instance.problemId,
      'timeLimitSeconds': instance.timeLimitSeconds,
      'answers': instance.answers,
      'updatedAt': instance.updatedAt,
    };
