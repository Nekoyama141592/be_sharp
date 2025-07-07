import 'package:be_sharp/domain/converter/timestamp_converter.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/public_user/registeredInfo/registered_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_public_user.freezed.dart';
part 'read_public_user.g.dart';

@freezed
abstract class ReadPublicUser with _$ReadPublicUser {
  const ReadPublicUser._();
  const factory ReadPublicUser({
    required RegisteredInfo? registeredInfo,
    required String uid,
    @TimestampConverter() required DateTime? updatedAt,
  }) = _ReadPublicUser;
  factory ReadPublicUser.fromJson(Map<String, dynamic> json) =>
      _$ReadPublicUserFromJson(json);
  String? bioValue() => registeredInfo?.bio.value;
  String? nickNameValue() => registeredInfo?.nickName.value;
  String? imageValue() => registeredInfo?.image.value;

  String _updatedAtKey() => updatedAt?.microsecondsSinceEpoch.toString() ?? '0';
  String? imageCacheKey() =>
      imageValue() != null ? 'user-image-$uid-${_updatedAtKey()}' : null;
}
