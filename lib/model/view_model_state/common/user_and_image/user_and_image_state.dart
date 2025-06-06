import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_and_image_state.freezed.dart';
part 'user_and_image_state.g.dart';

@freezed
abstract class UserAndImageState implements _$UserAndImageState {
  const UserAndImageState._();
  const factory UserAndImageState(
      {ReadPublicUser? user,String? image}) = _UserAndImageState;
  factory UserAndImageState.fromJson(Map<String, dynamic> json) =>
      _$UserAndImageStateFromJson(json);
}

