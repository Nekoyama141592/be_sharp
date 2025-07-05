// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_user_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EditUserInfoRequest _$EditUserInfoRequestFromJson(Map<String, dynamic> json) =>
    _EditUserInfoRequest(
      stringNickName: json['stringNickName'] as String,
      stringBio: json['stringBio'] as String,
      object: json['object'] as String,
    );

Map<String, dynamic> _$EditUserInfoRequestToJson(
        _EditUserInfoRequest instance) =>
    <String, dynamic>{
      'stringNickName': instance.stringNickName,
      'stringBio': instance.stringBio,
      'object': instance.object,
    };
