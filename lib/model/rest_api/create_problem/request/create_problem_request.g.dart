// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_problem_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProblemRequestImpl _$$CreateProblemRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateProblemRequestImpl(
      question: json['question'] as String,
      latex: json['latex'] as String,
      problemId: json['problemId'] as String,
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
      timeLimitSeconds: (json['timeLimitSeconds'] as num?)?.toInt() ?? 120,
      subject: json['subject'] as String? ?? 'math',
      category: json['category'] as String? ?? 'unlimited',
    );

Map<String, dynamic> _$$CreateProblemRequestImplToJson(
        _$CreateProblemRequestImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'latex': instance.latex,
      'problemId': instance.problemId,
      'answers': instance.answers,
      'timeLimitSeconds': instance.timeLimitSeconds,
      'subject': instance.subject,
      'category': instance.category,
    };
