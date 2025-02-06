import 'package:be_sharp/model/firestore_model/common/detected_text/detected_text.dart';
import 'package:be_sharp/model/firestore_model/common/moderated_image/moderated_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_user_info_response.freezed.dart';
part 'edit_user_info_response.g.dart';

@freezed
abstract class EditUserInfoResponse with _$EditUserInfoResponse {
  const factory EditUserInfoResponse({
    required DetectedText nickName,
    required DetectedText bio,
    required ModeratedImage image,
  }) = _EditUserInfoResponse;

  factory EditUserInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$EditUserInfoResponseFromJson(json);
}
