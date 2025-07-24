// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_problem_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LatestProblemState _$LatestProblemStateFromJson(Map<String, dynamic> json) =>
    _LatestProblemState(
      problem: json['problem'] == null
          ? null
          : ProblemEntity.fromJson(json['problem'] as Map<String, dynamic>),
      userAnswer: json['userAnswer'] == null
          ? null
          : UserAnswerEntity.fromJson(
              json['userAnswer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LatestProblemStateToJson(_LatestProblemState instance) =>
    <String, dynamic>{
      'problem': instance.problem,
      'userAnswer': instance.userAnswer,
    };
