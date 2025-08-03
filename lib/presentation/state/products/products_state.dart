import 'package:be_sharp/domain/entity/purchase/product/product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_state.freezed.dart';
part 'products_state.g.dart';

@freezed
abstract class ProductsState with _$ProductsState {
  const ProductsState._();

  const factory ProductsState({
    required List<ProductEntity> products,
  }) = _ProductsState;

  factory ProductsState.fromJson(Map<String, dynamic> json) =>
      _$ProductsStateFromJson(json);
}
