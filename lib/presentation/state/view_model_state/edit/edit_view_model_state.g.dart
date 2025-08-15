// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_view_model_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EditViewModelState _$EditViewModelStateFromJson(Map<String, dynamic> json) =>
    _EditViewModelState(
      user: json['user'] == null
          ? null
          : PublicUserEntity.fromJson(json['user'] as Map<String, dynamic>),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$EditViewModelStateToJson(_EditViewModelState instance) =>
    <String, dynamic>{
      'user': instance.user,
      'image': instance.image,
    };
