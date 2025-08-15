import 'package:be_sharp/domain/entity/database/public_user/public_user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_view_model_state.freezed.dart';
part 'edit_view_model_state.g.dart';

@freezed
abstract class EditViewModelState with _$EditViewModelState {
  const EditViewModelState._();
  const factory EditViewModelState({
    PublicUserEntity? user,
    String? image,
  }) = _EditViewModelState;
  factory EditViewModelState.fromJson(Map<String, dynamic> json) =>
      _$EditViewModelStateFromJson(json);
}
