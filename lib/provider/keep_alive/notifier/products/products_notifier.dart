import 'dart:async';

import 'package:be_sharp/core/util/purchase_util.dart';
import 'package:be_sharp/model/view_model_state/purchase_state/purchase_state.dart';
import 'package:be_sharp/provider/keep_alive/notifier/purchase_notifier/purchase_notifier.dart';
import 'package:be_sharp/provider/repository/purchase/purchase_repository_provider.dart';
import 'package:be_sharp/repository/purchase_repository.dart';
import 'package:be_sharp/repository/result/result.dart';
import 'package:be_sharp/presentation/util/toast_ui_util.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
part 'products_notifier.g.dart';

@Riverpod(keepAlive: true)
class ProductsNotifier extends _$ProductsNotifier {
  bool isVerifing = false;
  @override
  FutureOr<PurchaseState> build() {
    return _fetch();
  }

  PurchaseRepository get _repository => ref.read(purchaseRepositoryProvider);
  Future<PurchaseState> _fetch() async {
    final storeConnected = await _repository.isAvailable();
    if (!storeConnected) return PurchaseState();
    final res = await _repository.queryProductDetails();
    final products =
        res != null && res.isNotEmpty ? res : PurchaseUtil.mockProducts();
    final verifiedPurchases = ref.watch(purchaseNotifierProvider).value ?? [];
    return PurchaseState(
        products: products, verifiedPurchases: verifiedPurchases);
  }

  FutureResult<bool> onPurchaseButtonPressed(ProductDetails details) async {
    await _repository.cancelTransctions();
    final purchaseParam =
        PurchaseUtil.param(details, state.value?.verifiedPurchases);
    await ToastUiUtil.showFlutterToast("情報を取得しています。 \nしばらくお待ちください。");
    return _repository.buyNonConsumable(purchaseParam);
  }

  FutureResult<bool> onRestoreButtonPressed() {
    return _repository.restorePurchases();
  }
}
