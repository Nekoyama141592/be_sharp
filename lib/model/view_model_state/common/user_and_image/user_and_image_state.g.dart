// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_and_image_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAndImageStateImpl _$$UserAndImageStateImplFromJson(
        Map<String, dynamic> json) =>
    _$UserAndImageStateImpl(
      user: json['user'] == null
          ? null
          : ReadPublicUser.fromJson(json['user'] as Map<String, dynamic>),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$UserAndImageStateImplToJson(
        _$UserAndImageStateImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'image': instance.image,
    };
