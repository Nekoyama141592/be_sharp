import 'package:be_sharp/domain/entity/database/verified_purchase/verified_purchase_entity.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class PurchaseState {
  final List<VerifiedPurchaseEntity> verifiedPurchases;
  final List<ProductDetails> products;

  PurchaseState(
      {List<VerifiedPurchaseEntity>? verifiedPurchases,
      List<ProductDetails>? products})
      : verifiedPurchases = verifiedPurchases ?? [],
        products = products ?? [];

  PurchaseState copyWith(
      {List<VerifiedPurchaseEntity>? verifiedPurchases,
      List<ProductDetails>? products}) {
    return PurchaseState(
      verifiedPurchases: verifiedPurchases ?? this.verifiedPurchases,
      products: products ?? this.products,
    );
  }

  bool isPurchased(String productID) {
    return verifiedPurchases.any((e) => productID == e.productId);
  }

  bool isSubscribing() {
    return verifiedPurchases.any((e) => e.expiryTime.isAfter(DateTime.now()));
  }
}
