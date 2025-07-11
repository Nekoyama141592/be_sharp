import 'package:be_sharp/infrastructure/model/firestore_model/verified_purchase/verified_purchase_model.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class PurchaseState {
  final List<VerifiedPurchaseModel> verifiedPurchases;
  final List<ProductDetails> products;

  PurchaseState(
      {List<VerifiedPurchaseModel>? verifiedPurchases,
      List<ProductDetails>? products})
      : verifiedPurchases = verifiedPurchases ?? [],
        products = products ?? [];

  PurchaseState copyWith(
      {List<VerifiedPurchaseModel>? verifiedPurchases,
      List<ProductDetails>? products}) {
    return PurchaseState(
      verifiedPurchases: verifiedPurchases ?? this.verifiedPurchases,
      products: products ?? this.products,
    );
  }

  bool isPurchased(String productID) {
    return verifiedPurchases.any(
        (e) => e.isValid() && productID == e.typedPurchaseDetails().productID);
  }

  bool isSubscribing() {
    return verifiedPurchases.any((e) => e.isValid());
  }
}
