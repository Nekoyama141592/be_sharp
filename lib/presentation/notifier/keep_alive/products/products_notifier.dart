import 'dart:async';

import 'package:be_sharp/core/provider/repository/purchase/purchase_repository_provider.dart';
import 'package:be_sharp/core/util/purchase_util.dart';
import 'package:be_sharp/domain/entity/purchase/product/product_entity.dart';
import 'package:be_sharp/infrastructure/repository/purchase_repository.dart';
import 'package:be_sharp/infrastructure/repository/result/result.dart';
import 'package:be_sharp/presentation/state/products/products_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'products_notifier.g.dart';

@Riverpod(keepAlive: true)
class ProductsNotifier extends _$ProductsNotifier {
  @override
  FutureOr<ProductsState> build() async {
    return _fetch();
  }

  PurchaseRepository get repository => ref.watch(purchaseRepositoryProvider);

  Future<ProductsState> _fetch() async {
    final mockProducts = PurchaseUtil.mockProducts();
    final res = await repository.queryProductDetails();
    final products = (res != null && res.isNotEmpty) ? res : mockProducts;
    return ProductsState(products: products);
  }

  FutureResult<bool> onPurchaseButtonPressed(ProductEntity product) async {
    final result = await repository.buyNonConsumable(product.packageId);
    return result;
  }

  FutureResult<bool> onRestoreButtonPressed() async {
    return await repository.restorePurchases();
  }
}
