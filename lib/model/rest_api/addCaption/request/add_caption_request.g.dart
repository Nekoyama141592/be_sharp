// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_caption_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddCaptionRequestImpl _$$AddCaptionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddCaptionRequestImpl(
      problemId: json['problemId'] as String,
      stringCaption: json['stringCaption'] as String,
    );

Map<String, dynamic> _$$AddCaptionRequestImplToJson(
        _$AddCaptionRequestImpl instance) =>
    <String, dynamic>{
      'problemId': instance.problemId,
      'stringCaption': instance.stringCaption,
    };
