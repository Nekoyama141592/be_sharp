// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_problem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReadProblem _$ReadProblemFromJson(Map<String, dynamic> json) => _ReadProblem(
      createdAt: json['createdAt'],
      question: json['question'] as String,
      latex: json['latex'] as String,
      problemId: json['problemId'] as String,
      timeLimitSeconds: (json['timeLimitSeconds'] as num).toInt(),
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
      subject: json['subject'] as String? ?? 'math',
      category: json['category'] as String? ?? 'unlimited',
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$ReadProblemToJson(_ReadProblem instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'question': instance.question,
      'latex': instance.latex,
      'problemId': instance.problemId,
      'timeLimitSeconds': instance.timeLimitSeconds,
      'answers': instance.answers,
      'subject': instance.subject,
      'category': instance.category,
      'updatedAt': instance.updatedAt,
    };
