// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_problem_notifier_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LatestProblemNotifierState _$LatestProblemNotifierStateFromJson(
        Map<String, dynamic> json) =>
    _LatestProblemNotifierState(
      isNewProblem: json['isNewProblem'] as bool? ?? false,
      problemId: json['problemId'] as String?,
    );

Map<String, dynamic> _$LatestProblemNotifierStateToJson(
        _LatestProblemNotifierState instance) =>
    <String, dynamic>{
      'isNewProblem': instance.isNewProblem,
      'problemId': instance.problemId,
    };
