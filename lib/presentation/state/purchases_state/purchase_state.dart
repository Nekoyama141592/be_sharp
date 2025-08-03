import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_state.freezed.dart';
part 'purchase_state.g.dart';

@freezed
abstract class PurchaseState with _$PurchaseState {
  const factory PurchaseState({
    required bool isActive,
  }) = _PurchaseState;
  factory PurchaseState.fromJson(Map<String, dynamic> json) =>
      _$PurchaseStateFromJson(json);
}
