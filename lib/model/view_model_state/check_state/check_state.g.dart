// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckStateImpl _$$CheckStateImplFromJson(Map<String, dynamic> json) =>
    _$CheckStateImpl(
      needsAgreeToTerms: json['needsAgreeToTerms'] as bool,
      needsSignup: json['needsSignup'] as bool,
      user: json['user'] == null
          ? null
          : ReadPublicUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckStateImplToJson(_$CheckStateImpl instance) =>
    <String, dynamic>{
      'needsAgreeToTerms': instance.needsAgreeToTerms,
      'needsSignup': instance.needsSignup,
      'user': instance.user,
    };
