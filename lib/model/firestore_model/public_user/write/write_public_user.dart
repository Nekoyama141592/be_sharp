import 'package:be_sharp/model/firestore_model/public_user/registeredInfo/registered_info.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_public_user.freezed.dart';
part 'write_public_user.g.dart';

@freezed
abstract class WritePublicUser implements _$WritePublicUser {
  const WritePublicUser._();
  const factory WritePublicUser({
    required dynamic createdAt,
    required Map<String, dynamic> registeredInfo,
    required String uid,
    required dynamic updatedAt
  }) = _WritePublicUser;
  factory WritePublicUser.fromJson(Map<String, dynamic> json) =>
      _$WritePublicUserFromJson(json);
  factory WritePublicUser.instance(String uid) {
    final now = Timestamp.now();
    return WritePublicUser(createdAt: now,registeredInfo: RegisteredInfo.instance().toJson(), uid: uid,updatedAt: now);
  }
      
}
