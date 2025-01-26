// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_problem_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LatestProblemStateImpl _$$LatestProblemStateImplFromJson(
        Map<String, dynamic> json) =>
    _$LatestProblemStateImpl(
      problem: json['problem'] == null
          ? null
          : ReadProblem.fromJson(json['problem'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LatestProblemStateImplToJson(
        _$LatestProblemStateImpl instance) =>
    <String, dynamic>{
      'problem': instance.problem,
    };
