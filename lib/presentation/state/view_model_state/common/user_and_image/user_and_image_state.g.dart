// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_and_image_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserAndImageState _$UserAndImageStateFromJson(Map<String, dynamic> json) =>
    _UserAndImageState(
      user: json['user'] == null
          ? null
          : PublicUserEntity.fromJson(json['user'] as Map<String, dynamic>),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$UserAndImageStateToJson(_UserAndImageState instance) =>
    <String, dynamic>{
      'user': instance.user,
      'image': instance.image,
    };
