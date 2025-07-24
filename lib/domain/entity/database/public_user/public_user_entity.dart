import 'package:be_sharp/domain/converter/timestamp_converter.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/public_user/registeredInfo/registered_info.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_user_entity.freezed.dart';
part 'public_user_entity.g.dart';

@freezed
abstract class PublicUserEntity with _$PublicUserEntity {
  const PublicUserEntity._();
  const factory PublicUserEntity({
    required RegisteredInfo? registeredInfo,
    required String uid,
    @TimestampConverter() required DateTime? updatedAt,
  }) = _PublicUserEntity;
  factory PublicUserEntity.fromJson(Map<String, dynamic> json) =>
      _$PublicUserEntityFromJson(json);
  String? bioValue() => registeredInfo?.bio.value;
  String? nickNameValue() => registeredInfo?.nickName.value;
  String? imageValue() => registeredInfo?.image.value;

  String _updatedAtKey() => updatedAt?.microsecondsSinceEpoch.toString() ?? '0';
  String? imageCacheKey() =>
      imageValue() != null ? 'user-image-$uid-${_updatedAtKey()}' : null;
}
