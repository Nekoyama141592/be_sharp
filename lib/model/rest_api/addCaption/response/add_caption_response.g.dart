// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_caption_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddCaptionResponseImpl _$$AddCaptionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddCaptionResponseImpl(
      problemId: json['problemId'] as String,
      caption: DetectedText.fromJson(json['caption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddCaptionResponseImplToJson(
        _$AddCaptionResponseImpl instance) =>
    <String, dynamic>{
      'problemId': instance.problemId,
      'caption': instance.caption,
    };
