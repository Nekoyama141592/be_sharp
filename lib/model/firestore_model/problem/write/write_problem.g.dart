// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_problem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WriteProblemImpl _$$WriteProblemImplFromJson(Map<String, dynamic> json) =>
    _$WriteProblemImpl(
      question: json['question'] as String,
      createdAt: json['createdAt'],
      problemId: json['problemId'] as String,
      answers: (json['answers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$$WriteProblemImplToJson(_$WriteProblemImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'createdAt': instance.createdAt,
      'problemId': instance.problemId,
      'answers': instance.answers,
      'updatedAt': instance.updatedAt,
    };
