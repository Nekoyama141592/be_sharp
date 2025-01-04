// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registered_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisteredInfoImpl _$$RegisteredInfoImplFromJson(Map<String, dynamic> json) =>
    _$RegisteredInfoImpl(
      nickName: json['nickName'] as Map<String, dynamic>? ?? const {},
      bio: json['bio'] as Map<String, dynamic>? ?? const {},
      birthDate: json['birthDate'],
      image: json['image'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$RegisteredInfoImplToJson(
        _$RegisteredInfoImpl instance) =>
    <String, dynamic>{
      'nickName': instance.nickName,
      'bio': instance.bio,
      'birthDate': instance.birthDate,
      'image': instance.image,
    };
