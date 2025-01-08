import 'package:be_sharp/core/doc_ref_core.dart';
import 'package:be_sharp/model/firestore_model/public_user/registeredInfo/registered_info.dart';
import 'package:be_sharp/typedefs/firestore_typedef.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_public_user.freezed.dart';
part 'read_public_user.g.dart';

@freezed
abstract class ReadPublicUser implements _$ReadPublicUser {
  const ReadPublicUser._();
  const factory ReadPublicUser({
    required RegisteredInfo registeredInfo,
    required String uid,
    required dynamic updatedAt,
  }) = _ReadPublicUser;
  factory ReadPublicUser.fromJson(Map<String, dynamic> json) =>
      _$ReadPublicUserFromJson(json);
  String bioValue() => registeredInfo.typedBio().value;
  String nickNameValue() => registeredInfo.typedNickName().value;
  String imageValue() => registeredInfo.typedImage().value;
  String birthDateValue() {
    final dateTime = registeredInfo.typedBirthDate().toDate();
    final year = dateTime.year.toString().padLeft(4, '0');
    final month = dateTime.month.toString().padLeft(2, '0');
    final day = dateTime.day.toString().padLeft(2, '0');
    return '$year$month$day';
  }

  bool needsEdit() {
    final isBioEmpty = bioValue().isEmpty;
    final isNickNameEmpty = nickNameValue().isEmpty;
    final isImageEmpty = imageValue().isEmpty;
    return isBioEmpty || isNickNameEmpty || isImageEmpty;
  }

  DocRef typedRef() => DocRefCore.user(uid);
}
