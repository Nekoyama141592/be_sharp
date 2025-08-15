import 'package:be_sharp/domain/converter/timestamp_converter.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/public_user/registeredInfo/registered_info.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/public_user/public_user_model.dart';
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

  /// PublicUserModel から PublicUserEntity への変換ファクトリ
  factory PublicUserEntity.fromModel(PublicUserModel model) {
    return PublicUserEntity(
      registeredInfo: model.registeredInfo,
      uid: model.uid,
      updatedAt: model.updatedAt is Timestamp
          ? (model.updatedAt as Timestamp).toDate()
          : model.updatedAt is DateTime
              ? model.updatedAt as DateTime
              : null,
    );
  }

  String? bioValue() => registeredInfo?.bio.value;
  String? nickNameValue() => registeredInfo?.nickName.value;
  String imageKey() => registeredInfo?.image.key ?? '/profile.jpg';
}
