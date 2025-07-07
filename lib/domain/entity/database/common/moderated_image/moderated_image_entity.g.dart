// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moderated_image_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModeratedImageEntity _$ModeratedImageEntityFromJson(
        Map<String, dynamic> json) =>
    _ModeratedImageEntity(
      moderationLabels: (json['moderationLabels'] as List<dynamic>?)
              ?.map((e) => ModerationLabel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      moderationModelVersion: json['moderationModelVersion'] as String? ?? '',
      value: json['value'] as String? ?? '',
    );

Map<String, dynamic> _$ModeratedImageEntityToJson(
        _ModeratedImageEntity instance) =>
    <String, dynamic>{
      'moderationLabels': instance.moderationLabels,
      'moderationModelVersion': instance.moderationModelVersion,
      'value': instance.value,
    };
