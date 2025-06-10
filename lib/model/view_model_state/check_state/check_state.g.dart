// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckState _$CheckStateFromJson(Map<String, dynamic> json) => _CheckState(
      needsAgreeToTerms: json['needsAgreeToTerms'] as bool,
      needsSignup: json['needsSignup'] as bool,
      user: json['user'] == null
          ? null
          : ReadPublicUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CheckStateToJson(_CheckState instance) =>
    <String, dynamic>{
      'needsAgreeToTerms': instance.needsAgreeToTerms,
      'needsSignup': instance.needsSignup,
      'user': instance.user,
    };
