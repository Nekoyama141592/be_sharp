import 'package:be_sharp/domain/entity/database/public_user/public_user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_and_image_state.freezed.dart';
part 'user_and_image_state.g.dart';

@freezed
abstract class UserAndImageState with _$UserAndImageState {
  const UserAndImageState._();
  const factory UserAndImageState({PublicUserEntity? user}) =
      _UserAndImageState;
  factory UserAndImageState.fromJson(Map<String, dynamic> json) =>
      _$UserAndImageStateFromJson(json);
}
