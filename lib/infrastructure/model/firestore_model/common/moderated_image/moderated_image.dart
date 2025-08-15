import 'package:freezed_annotation/freezed_annotation.dart';
part 'moderated_image.freezed.dart';
part 'moderated_image.g.dart';

@freezed
abstract class ModeratedImage with _$ModeratedImage {
  const ModeratedImage._();
  const factory ModeratedImage({
    @Default([]) List<Map<String, dynamic>> moderationLabels,
    @Default("") String moderationModelVersion,
    String? key,
  }) = _ModeratedImage;
  factory ModeratedImage.fromJson(Map<String, dynamic> json) =>
      _$ModeratedImageFromJson(json);
}
