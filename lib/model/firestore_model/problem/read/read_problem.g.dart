// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_problem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadProblemImpl _$$ReadProblemImplFromJson(Map<String, dynamic> json) =>
    _$ReadProblemImpl(
      question: json['question'] as String,
      problemId: json['problemId'] as String,
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$$ReadProblemImplToJson(_$ReadProblemImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'problemId': instance.problemId,
      'answers': instance.answers,
      'updatedAt': instance.updatedAt,
    };
