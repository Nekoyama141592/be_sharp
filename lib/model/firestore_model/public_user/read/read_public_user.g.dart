// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_public_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadPublicUserImpl _$$ReadPublicUserImplFromJson(Map<String, dynamic> json) =>
    _$ReadPublicUserImpl(
      registeredInfo: json['registeredInfo'] == null
          ? null
          : RegisteredInfo.fromJson(
              json['registeredInfo'] as Map<String, dynamic>),
      uid: json['uid'] as String,
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$$ReadPublicUserImplToJson(
        _$ReadPublicUserImpl instance) =>
    <String, dynamic>{
      'registeredInfo': instance.registeredInfo,
      'uid': instance.uid,
      'updatedAt': instance.updatedAt,
    };
