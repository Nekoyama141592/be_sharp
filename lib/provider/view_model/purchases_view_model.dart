import 'dart:async';

import 'package:be_sharp/core/purchases_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class PurchasesViewModel extends AsyncNotifier<List<ProductDetails>> {
  @override
  FutureOr<List<ProductDetails>> build() async {
    final inAppPurchase = InAppPurchase.instance;
    final bool storeConnected = await inAppPurchase.isAvailable();
    if (!storeConnected) return [];
    final identifiers = PurchasesCore.productIds();
    final results = await inAppPurchase.queryProductDetails(identifiers);
    final productDetails = results.productDetails;
    return productDetails.isEmpty ? PurchasesCore.mockProducts() : productDetails;
  }
}
final purchasesProvider = AsyncNotifierProvider<
    PurchasesViewModel, List<ProductDetails>>(() => PurchasesViewModel());