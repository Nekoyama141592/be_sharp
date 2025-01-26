// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeStateImpl _$$HomeStateImplFromJson(Map<String, dynamic> json) =>
    _$HomeStateImpl(
      latestProblem: json['latestProblem'] == null
          ? null
          : ReadProblem.fromJson(json['latestProblem'] as Map<String, dynamic>),
      answeredUsers: (json['answeredUsers'] as List<dynamic>?)
              ?.map((e) => AnsweredUser.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$HomeStateImplToJson(_$HomeStateImpl instance) =>
    <String, dynamic>{
      'latestProblem': instance.latestProblem,
      'answeredUsers': instance.answeredUsers,
    };
