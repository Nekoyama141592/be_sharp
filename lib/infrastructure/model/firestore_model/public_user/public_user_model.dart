import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_user_model.freezed.dart';
part 'public_user_model.g.dart';

@freezed
abstract class PublicUserModel with _$PublicUserModel {
  const PublicUserModel._();
  const factory PublicUserModel(
      {required dynamic createdAt,
      @Default(0) int followerCount,
      @Default(0) int followingCount,
      @Default(0) int muteCount,
      Map<String, dynamic>? registeredInfo,
      required String uid,
      required dynamic updatedAt}) = _PublicUserModel;
  factory PublicUserModel.fromJson(Map<String, dynamic> json) =>
      _$PublicUserModelFromJson(json);
  factory PublicUserModel.withServerTimestamp(String uid) {
    final now = FieldValue.serverTimestamp();
    return PublicUserModel(createdAt: now, uid: uid, updatedAt: now);
  }
}
