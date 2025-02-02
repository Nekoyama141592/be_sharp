import 'dart:io';

import 'package:be_sharp/constants/enums/env_key.dart';
import 'package:be_sharp/extensions/purchase_details_extension.dart';
import 'package:be_sharp/model/firestore_model/verified_purchase/verified_purchase.dart';
import 'package:be_sharp/repository/on_call_repository.dart';
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
      status: PurchaseStatus.values.firstWhere((e) => e.name == json['status']),
    )..pendingCompletePurchase = json['pendingCompletePurchase'] ?? false;
  }

  static String _itemId() => dotenv.get(EnvKey.SUBSCRIPTION_ITEM_ID.name);
  static Set<String> productIds() {
    final identifiers = <String>[_itemId()];
    return identifiers.toSet();
  }

  static List<ProductDetails> _mockProducts() {
    final item = ProductDetails(
        id: _itemId(),
        title: "月額プラン",
        description: "一月使えます",
        price: "¥500",
        rawPrice: 500,
        currencyCode: "JPY",
        currencySymbol: "¥");
    return [item];
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
    final repository = OnCallRepository();
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

  static PurchaseParam param(ProductDetails newDetails,
      {GooglePlayPurchaseDetails? oldDetails}) {
    final purchaseParam = Platform.isAndroid
        ? GooglePlayPurchaseParam(
            productDetails: newDetails,
            changeSubscriptionParam: _changeParam(oldDetails))
        : PurchaseParam(productDetails: newDetails);
    return purchaseParam;
  }

  static ChangeSubscriptionParam? _changeParam(
      GooglePlayPurchaseDetails? oldDetails) {
    return (oldDetails != null)
        ? ChangeSubscriptionParam(oldPurchaseDetails: oldDetails)
        : null;
  }
}
