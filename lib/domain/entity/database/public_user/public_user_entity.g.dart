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
      updatedAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['updatedAt'], const TimestampConverter().fromJson),
    );

Map<String, dynamic> _$PublicUserEntityToJson(_PublicUserEntity instance) =>
    <String, dynamic>{
      'registeredInfo': instance.registeredInfo,
      'uid': instance.uid,
      'updatedAt': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.updatedAt, const TimestampConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
