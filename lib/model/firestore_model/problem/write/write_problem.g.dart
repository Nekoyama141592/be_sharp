// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_problem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WriteProblemImpl _$$WriteProblemImplFromJson(Map<String, dynamic> json) =>
    _$WriteProblemImpl(
      question: json['question'] as String,
      createdAt: json['createdAt'],
      answerCount: (json['answerCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$WriteProblemImplToJson(_$WriteProblemImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'createdAt': instance.createdAt,
      'answerCount': instance.answerCount,
    };
