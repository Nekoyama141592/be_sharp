import 'dart:io';

import 'package:be_sharp/constants/enums/env_key.dart';
import 'package:be_sharp/extensions/purchase_details_extension.dart';
import 'package:be_sharp/model/firestore_model/verified_purchase/verified_purchase.dart';
import 'package:be_sharp/repository/cloud_functions_repository.dart';
import 'package:be_sharp/repository/result.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/billing_client_wrappers.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';

class PurchasesCore {
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
      dotenv.get(EnvKey.SUBSCRIPTION_MONTH_ITEM_ID.name);
  static String _annualItemId() =>
      dotenv.get(EnvKey.SUBSCRIPTION_ANNUAL_ITEM_ID.name);
  static List<String> _itemIds() => [monthItemId(), _annualItemId()];
  static Set<String> productIds() {
    final identifiers = _itemIds();
    return identifiers.toSet();
  }

  static List<ProductDetails> _mockProducts() {
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

  static List<ProductDetails> getProducts(ProductDetailsResponse res) {
    final productDetails = res.productDetails;
    final products = productDetails.isEmpty ? _mockProducts() : productDetails;
    return products;
  }

  static InAppPurchase get inAppPurchase => InAppPurchase.instance;
  static Stream<List<PurchaseDetails>> stream() => inAppPurchase.purchaseStream;
  static Future<void> completePurchase(PurchaseDetails purchaseDetails) async {
    if (!purchaseDetails.pendingCompletePurchase) return;
    await inAppPurchase.completePurchase(purchaseDetails);
  }

  static Future<void> acknowledge(PurchaseDetails details) async {
    if (!Platform.isAndroid || details.isPending) return;
    // 承認を行う.行わないと払い戻しが行われる.
    final client = BillingClient((_) {}, (__) {});
    final serverVerificationData =
        details.verificationData.serverVerificationData;
    await client.acknowledgePurchase(serverVerificationData);
  }

  static FutureResult<VerifiedPurchase> verifyPurchase(
      PurchaseDetails purchaseDetails) async {
    final repository = CloudFunctionsRepository();
    return Platform.isAndroid
        ? await repository.verifyAndroidReceipt(purchaseDetails)
        : await repository.verifyIOSReceipt(purchaseDetails);
  }

  static Future<void> cancelTransctions() async {
    if (!Platform.isIOS) return;
    final wrapper = SKPaymentQueueWrapper();
    final transactions = await wrapper.transactions();
    for (final tx in transactions) {
      await wrapper.finishTransaction(tx);
    }
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
