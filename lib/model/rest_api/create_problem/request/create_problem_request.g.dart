// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_problem_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateProblemRequest _$CreateProblemRequestFromJson(
        Map<String, dynamic> json) =>
    _CreateProblemRequest(
      question: json['question'] as String,
      latex: json['latex'] as String,
      problemId: json['problemId'] as String,
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
      timeLimitSeconds: (json['timeLimitSeconds'] as num?)?.toInt() ?? 120,
      subject: json['subject'] as String? ?? 'math',
      category: json['category'] as String? ?? 'unlimited',
    );

Map<String, dynamic> _$CreateProblemRequestToJson(
        _CreateProblemRequest instance) =>
    <String, dynamic>{
      'question': instance.question,
      'latex': instance.latex,
      'problemId': instance.problemId,
      'answers': instance.answers,
      'timeLimitSeconds': instance.timeLimitSeconds,
      'subject': instance.subject,
      'category': instance.category,
    };
