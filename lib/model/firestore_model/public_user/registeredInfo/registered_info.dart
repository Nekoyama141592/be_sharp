import 'package:be_sharp/model/firestore_model/common/detected_text/detected_text.dart';
import 'package:be_sharp/model/firestore_model/common/moderated_image/moderated_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registered_info.freezed.dart';
part 'registered_info.g.dart';

@freezed
abstract class RegisteredInfo with _$RegisteredInfo {
  const RegisteredInfo._();
  const factory RegisteredInfo(
      {required DetectedText nickName,
      required DetectedText bio,
      required ModeratedImage image}) = _RegisteredInfo;
  factory RegisteredInfo.fromJson(Map<String, dynamic> json) =>
      _$RegisteredInfoFromJson(json);
}
