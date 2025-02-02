import 'package:be_sharp/repository/result.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class PurchasesRepository {
  InAppPurchase get inAppPurchase => InAppPurchase.instance;
  FutureResult<bool> buyNonConsumable(PurchaseParam purchaseParam) async {
    try {
      await inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
      return const Result.success(true);
    } catch (e) {
      return const Result.failure();
    }
  }
}
