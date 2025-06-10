import 'package:be_sharp/repository/result/result.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class PurchaseRepository {
  InAppPurchase get inAppPurchase => InAppPurchase.instance;
  FutureResult<bool> buyNonConsumable(PurchaseParam purchaseParam) async {
    try {
      await inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
      return const Result.success(true);
    } catch (e) {
      return const Result.failure('もう一度ボタンを押してください');
    }
  }

  FutureResult<bool> restorePurchases() async {
    try {
      await inAppPurchase.restorePurchases();
      return const Result.success(true);
    } catch (e) {
      return const Result.failure('購入の復元が失敗しました');
    }
  }
}
