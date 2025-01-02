// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckStateImpl _$$CheckStateImplFromJson(Map<String, dynamic> json) =>
    _$CheckStateImpl(
      needsAgreeToTerms: json['needsAgreeToTerms'] as bool,
      needsSignup: json['needsSignup'] as bool,
      needsEditUser: json['needsEditUser'] as bool,
    );

Map<String, dynamic> _$$CheckStateImplToJson(_$CheckStateImpl instance) =>
    <String, dynamic>{
      'needsAgreeToTerms': instance.needsAgreeToTerms,
      'needsSignup': instance.needsSignup,
      'needsEditUser': instance.needsEditUser,
    };
