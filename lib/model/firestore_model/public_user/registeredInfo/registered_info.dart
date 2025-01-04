import 'package:be_sharp/model/firestore_model/common/detected_text/detected_text.dart';
import 'package:be_sharp/model/firestore_model/common/moderated_image/moderated_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registered_info.freezed.dart';
part 'registered_info.g.dart';

@freezed
abstract class RegisteredInfo implements _$RegisteredInfo {
  const RegisteredInfo._();
  const factory RegisteredInfo(
      {required Map<String, dynamic> nickName,
      required Map<String, dynamic> bio,
      required dynamic birthDate,
      required Map<String, dynamic> image}) = _RegisteredInfo;
  factory RegisteredInfo.fromJson(Map<String, dynamic> json) =>
      _$RegisteredInfoFromJson(json);
  factory RegisteredInfo.instance() =>
      RegisteredInfo(nickName: const DetectedText().toJson(), bio: const DetectedText().toJson(), birthDate: Timestamp.now(), image: const ModeratedImage().toJson());
  DetectedText typedNickName() => DetectedText.fromJson(nickName);
  DetectedText typedBio() => DetectedText.fromJson(bio);
  ModeratedImage typedImage() => ModeratedImage.fromJson(image);
}
