import 'package:be_sharp/infrastructure/model/firestore_model/common/moderated_image/moderated_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ModeratedImageConverter
    implements JsonConverter<ModeratedImage, Map<String, dynamic>> {
  const ModeratedImageConverter();

  @override
  ModeratedImage fromJson(Map<String, dynamic> json) =>
      ModeratedImage.fromJson(json);

  @override
  Map<String, dynamic> toJson(ModeratedImage object) => object.toJson();
}
