import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:be_sharp/infrastructure/repository/result/result.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/verified_purchase/verified_purchase.dart';

abstract class PurchaseUseCaseInterface {
  Stream<List<PurchaseDetails>> get purchaseUpdated;
  Future<void> initStore();
  Future<List<ProductDetails>> getProducts();
  Future<void> buyProduct(String productId);
  FutureResult<VerifiedPurchase> verifyPurchase(
      PurchaseDetails purchaseDetails);
}
