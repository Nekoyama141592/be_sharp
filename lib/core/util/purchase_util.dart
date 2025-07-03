import 'dart:io';

import 'package:be_sharp/infrastructure/model/firestore_model/verified_purchase/verified_purchase.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';

enum SubscriptionEnvKey {
  SUBSCRIPTION_MONTH_ITEM_ID,
  SUBSCRIPTION_ANNUAL_ITEM_ID
}
class PurchaseUtil {
  static PurchaseDetails purchaseDetailsFromJson(Map<String, dynamic> json) {
    return PurchaseDetails(
      purchaseID: json['purchaseID'],
      productID: json['productID'],
      verificationData: PurchaseVerificationData(
        localVerificationData: json['verificationData']
            ['localVerificationData'],
        serverVerificationData: json['verificationData']
            ['serverVerificationData'],
        source: json['verificationData']['source'],
      ),
      transactionDate: json['transactionDate'],
      status: PurchaseStatus.values.byName(json['status']),
    )..pendingCompletePurchase = json['pendingCompletePurchase'] ?? false;
  }

  static String monthItemId() =>
      dotenv.get(SubscriptionEnvKey.SUBSCRIPTION_MONTH_ITEM_ID.name);
  static String _annualItemId() =>
      dotenv.get(SubscriptionEnvKey.SUBSCRIPTION_ANNUAL_ITEM_ID.name);
  static List<String> _itemIds() => [monthItemId(), _annualItemId()];
  static Set<String> productIds() {
    final identifiers = _itemIds();
    return identifiers.toSet();
  }

  static List<ProductDetails> mockProducts() {
    return [
      ProductDetails(
          id: monthItemId(),
          title: "月額プラン",
          description: "一月ごとに課金されます",
          price: "¥500",
          rawPrice: 500,
          currencyCode: "JPY",
          currencySymbol: "¥"),
      ProductDetails(
          id: _annualItemId(),
          title: "年間プラン",
          description: "一年ごとに課金されます",
          price: "¥4980",
          rawPrice: 4980,
          currencyCode: "JPY",
          currencySymbol: "¥"),
    ];
  }

  static PurchaseParam param(
      ProductDetails newDetails, List<VerifiedPurchase>? purchases) {
    if (Platform.isAndroid) {
      final oldSubscription = _getOldSubscription(newDetails, purchases);
      return GooglePlayPurchaseParam(
        productDetails: newDetails,
        changeSubscriptionParam: _changeParam(oldSubscription),
      );
    } else {
      return PurchaseParam(productDetails: newDetails);
    }
  }

  static GooglePlayPurchaseDetails? _getOldSubscription(
      ProductDetails productDetails,
      List<VerifiedPurchase>? verifiedPurchases) {
    GooglePlayPurchaseDetails? oldSubscription;
    if (verifiedPurchases == null) return oldSubscription;
    final purchases =
        verifiedPurchases.map((e) => e.typedPurchaseDetails()).toList();
    if (purchases.isNotEmpty && purchases.last.productID != productDetails.id) {
      oldSubscription = purchases.last as GooglePlayPurchaseDetails;
    }
    return oldSubscription;
  }

  static ChangeSubscriptionParam? _changeParam(
      GooglePlayPurchaseDetails? oldDetails) {
    return (oldDetails != null)
        ? ChangeSubscriptionParam(oldPurchaseDetails: oldDetails)
        : null;
  }
}
