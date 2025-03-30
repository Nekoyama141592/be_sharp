import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_public_user.freezed.dart';
part 'write_public_user.g.dart';

@freezed
abstract class WritePublicUser implements _$WritePublicUser {
  const WritePublicUser._();
  const factory WritePublicUser(
      {required dynamic createdAt,
      @Default(0) int followerCount,
      @Default(0) int followingCount,
      @Default(0) int muteCount,
      required String uid,
      required dynamic updatedAt}) = _WritePublicUser;
  factory WritePublicUser.fromJson(Map<String, dynamic> json) =>
      _$WritePublicUserFromJson(json);
  factory WritePublicUser.instance(String uid) {
    final now = Timestamp.now();
    return WritePublicUser(createdAt: now, uid: uid, updatedAt: now);
  }
}
