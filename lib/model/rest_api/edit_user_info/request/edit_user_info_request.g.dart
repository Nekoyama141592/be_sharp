// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_user_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditUserInfoRequestImpl _$$EditUserInfoRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$EditUserInfoRequestImpl(
      stringNickName: json['stringNickName'] as String,
      stringBio: json['stringBio'] as String,
      stringBirthDate: json['stringBirthDate'] as String,
      object: json['object'] as String,
    );

Map<String, dynamic> _$$EditUserInfoRequestImplToJson(
        _$EditUserInfoRequestImpl instance) =>
    <String, dynamic>{
      'stringNickName': instance.stringNickName,
      'stringBio': instance.stringBio,
      'stringBirthDate': instance.stringBirthDate,
      'object': instance.object,
    };
