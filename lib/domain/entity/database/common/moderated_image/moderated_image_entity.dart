import 'package:be_sharp/domain/entity/database/common/moderated_image/moderation_label/moderation_label.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'moderated_image_entity.freezed.dart';
part 'moderated_image_entity.g.dart';

@freezed
abstract class ModeratedImageEntity with _$ModeratedImageEntity {
  const ModeratedImageEntity._();
  const factory ModeratedImageEntity({
    @Default([]) List<ModerationLabel> moderationLabels,
    @Default('') String moderationModelVersion,
    @Default('') String value,
  }) = _ModeratedImageEntity;
  factory ModeratedImageEntity.fromJson(Map<String, dynamic> json) =>
      _$ModeratedImageEntityFromJson(json);
  bool isInvalid() => moderationLabels.isNotEmpty;
  String reason() => moderationLabels.map((e) => e.name).toList().join(',');
}
