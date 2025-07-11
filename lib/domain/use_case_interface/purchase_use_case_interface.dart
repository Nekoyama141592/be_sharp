import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:be_sharp/infrastructure/repository/result/result.dart';
import 'package:be_sharp/domain/entity/database/verified_purchase/verified_purchase_entity.dart';

abstract class PurchaseUseCaseInterface {
  Stream<List<PurchaseDetails>> get purchaseUpdated;
  Future<void> initStore();
  Future<List<ProductDetails>> getProducts();
  Future<void> buyProduct(String productId);
  FutureResult<VerifiedPurchaseEntity> verifyPurchase(
      PurchaseDetails purchaseDetails);
}
