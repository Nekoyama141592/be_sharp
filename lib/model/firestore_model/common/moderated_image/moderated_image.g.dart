// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moderated_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModeratedImageImpl _$$ModeratedImageImplFromJson(Map<String, dynamic> json) =>
    _$ModeratedImageImpl(
      moderationLabels: (json['moderationLabels'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      moderationModelVersion: json['moderationModelVersion'] as String? ?? '',
      object: json['object'] as String? ?? '',
    );

Map<String, dynamic> _$$ModeratedImageImplToJson(
        _$ModeratedImageImpl instance) =>
    <String, dynamic>{
      'moderationLabels': instance.moderationLabels,
      'moderationModelVersion': instance.moderationModelVersion,
      'object': instance.object,
    };
