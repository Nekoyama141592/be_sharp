import 'package:in_app_purchase/in_app_purchase.dart';

abstract class PurchaseUseCaseInterface {
  Stream<List<PurchaseDetails>> get purchaseUpdated;
  Future<void> initStore();
  Future<List<ProductDetails>> getProducts();
  Future<void> buyProduct(String productId);
  Future<void> verifyPurchase(PurchaseDetails purchaseDetails);
}
