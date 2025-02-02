import 'dart:io';

import 'package:be_sharp/constants/enums/env_key.dart';
import 'package:be_sharp/extensions/purchase_details_extension.dart';
import 'package:be_sharp/model/rest_api/verify_purchase/response/receipt_response.dart';
import 'package:be_sharp/repository/on_call_repository.dart';
import 'package:be_sharp/repository/result.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/billing_client_wrappers.dart';

class PurchasesCore {
  static String _itemId() => dotenv.get(EnvKey.SUBSCRIPTION_ITEM_ID.name);
  static Set<String> productIds() {
    final identifiers = <String>[_itemId()];
    return identifiers.toSet();
  }

  static List<ProductDetails> mockProducts() {
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

  static FutureResult<ReceiptResponse> verifyPurchase(
      PurchaseDetails purchaseDetails) async {
    final repository = OnCallRepository();
    return Platform.isAndroid
        ? await repository.verifyAndroidReceipt(purchaseDetails)
        : await repository.verifyIOSReceipt(purchaseDetails);
  }
}
