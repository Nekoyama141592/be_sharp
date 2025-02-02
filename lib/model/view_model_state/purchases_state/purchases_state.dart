import 'package:be_sharp/model/firestore_model/verified_purchase/verified_purchase.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class PurchasesState {
  final List<VerifiedPurchase> verifiedPurchases;
  final List<ProductDetails> products;

  PurchasesState(
      {List<VerifiedPurchase>? verifiedPurchases,
      List<ProductDetails>? products})
      : verifiedPurchases = verifiedPurchases ?? [],
        products = products ?? [];

  PurchasesState copyWith(
      {List<VerifiedPurchase>? verifiedPurchases,
      List<ProductDetails>? products}) {
    return PurchasesState(
      verifiedPurchases: verifiedPurchases ?? this.verifiedPurchases,
      products: products ?? this.products,
    );
  }

  bool isPurchased(String productID) {
    return verifiedPurchases.any(
        (e) => e.isValid() && productID == e.typedPurchaseDetails().productID);
  }
}
