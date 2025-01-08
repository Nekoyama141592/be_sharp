// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_public_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WritePublicUserImpl _$$WritePublicUserImplFromJson(
        Map<String, dynamic> json) =>
    _$WritePublicUserImpl(
      createdAt: json['createdAt'],
      registeredInfo: json['registeredInfo'] as Map<String, dynamic>,
      uid: json['uid'] as String,
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$$WritePublicUserImplToJson(
        _$WritePublicUserImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'registeredInfo': instance.registeredInfo,
      'uid': instance.uid,
      'updatedAt': instance.updatedAt,
    };
