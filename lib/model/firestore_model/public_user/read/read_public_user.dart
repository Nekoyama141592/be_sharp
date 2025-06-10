import 'package:be_sharp/model/firestore_model/public_user/registeredInfo/registered_info.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_public_user.freezed.dart';
part 'read_public_user.g.dart';

@freezed
abstract class ReadPublicUser with _$ReadPublicUser {
  const ReadPublicUser._();
  const factory ReadPublicUser({
    required RegisteredInfo? registeredInfo,
    required String uid,
    required dynamic updatedAt,
  }) = _ReadPublicUser;
  factory ReadPublicUser.fromJson(Map<String, dynamic> json) =>
      _$ReadPublicUserFromJson(json);
  String? bioValue() => registeredInfo?.bio.value;
  String? nickNameValue() => registeredInfo?.nickName.value;
  String? imageValue() => registeredInfo?.image.value;

  Timestamp _typedUpdatedAt() => updatedAt as Timestamp;
  String _updatedAtKey() => _typedUpdatedAt().microsecondsSinceEpoch.toString();
  String? imageCacheKey() =>
      imageValue() != null ? 'user-image-$uid-${_updatedAtKey()}' : null;
}
