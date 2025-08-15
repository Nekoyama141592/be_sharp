import 'package:be_sharp/infrastructure/model/firestore_model/common/detected_text/detected_text.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/common/moderated_image/moderated_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_response.freezed.dart';
part 'update_user_response.g.dart';

@freezed
abstract class UpdateUserResponse with _$UpdateUserResponse {
  const factory UpdateUserResponse({
    ModeratedImage? moderatedImage,
    required DetectedText detectedBio,
    required DetectedText detectedUserName,
  }) = _UpdateUserResponse;

  factory UpdateUserResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserResponseFromJson(json);
}