// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PublicUserEntity _$PublicUserEntityFromJson(Map<String, dynamic> json) =>
    _PublicUserEntity(
      registeredInfo: json['registeredInfo'] == null
          ? null
          : RegisteredInfo.fromJson(
              json['registeredInfo'] as Map<String, dynamic>),
      uid: json['uid'] as String,
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as Timestamp?),
    );

Map<String, dynamic> _$PublicUserEntityToJson(_PublicUserEntity instance) =>
    <String, dynamic>{
      'registeredInfo': instance.registeredInfo,
      'uid': instance.uid,
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
    };
