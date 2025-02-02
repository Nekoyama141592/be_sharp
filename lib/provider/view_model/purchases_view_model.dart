import 'dart:async';

import 'package:be_sharp/core/purchases_core.dart';
import 'package:be_sharp/extensions/purchase_details_extension.dart';
import 'package:be_sharp/model/rest_api/verify_purchase/response/receipt_response.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class PurchasesViewModel extends AsyncNotifier<List<ProductDetails>> {
  late StreamSubscription<List<PurchaseDetails>> subscription;
  @override
  FutureOr<List<ProductDetails>> build() async {
    _setSubscription();
    return _fetch();
  }

  Future<List<ProductDetails>> _fetch() async {
    final inAppPurchase = InAppPurchase.instance;
    final bool storeConnected = await inAppPurchase.isAvailable();
    if (!storeConnected) return [];
    final identifiers = PurchasesCore.productIds();
    final results = await inAppPurchase.queryProductDetails(identifiers);
    final productDetails = results.productDetails;
    return productDetails.isEmpty
        ? PurchasesCore.mockProducts()
        : productDetails;
  }

  StreamSubscription<List<PurchaseDetails>> _setSubscription() {
    final stream = PurchasesCore.stream();
    subscription = stream.listen(_onListen);
    return subscription;
  }

  Future<void> _onListen(List<PurchaseDetails> detailsList) async {
    for (int i = 0; i < detailsList.length; i++) {
      final details = detailsList[i];
      await PurchasesCore.completePurchase(details);
      await PurchasesCore.acknowledge(details);
      if (details.isError) {
        ToastUICore.showErrorFlutterToast("購入時にエラーが発生");
        return;
      }
      if (!details.isPurchased) return;
      final result = await PurchasesCore.verifyPurchase(details);
      await result.when(success: _onVerifySuccess, failure: _onVerifyFailed);
    }
  }

  Future<void> _onVerifySuccess(ReceiptResponse res) async {
    // 成功した時の処理.
    ToastUICore.showFlutterToast("購入の検証が成功しました");
  }

  Future<void> _onVerifyFailed() async {
    // 成功した時の処理.
    ToastUICore.showErrorFlutterToast("購入の検証が失敗しました");
  }
}

final purchasesProvider =
    AsyncNotifierProvider<PurchasesViewModel, List<ProductDetails>>(
        () => PurchasesViewModel());
