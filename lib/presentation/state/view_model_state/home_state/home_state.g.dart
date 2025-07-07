// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeState _$HomeStateFromJson(Map<String, dynamic> json) => _HomeState(
      latestProblem: json['latestProblem'] == null
          ? null
          : ProblemEntity.fromJson(
              json['latestProblem'] as Map<String, dynamic>),
      answeredUsers: (json['answeredUsers'] as List<dynamic>?)
              ?.map((e) => AnsweredUser.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      muteUids: (json['muteUids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      userCount: (json['userCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$HomeStateToJson(_HomeState instance) =>
    <String, dynamic>{
      'latestProblem': instance.latestProblem,
      'answeredUsers': instance.answeredUsers,
      'muteUids': instance.muteUids,
      'userCount': instance.userCount,
    };
