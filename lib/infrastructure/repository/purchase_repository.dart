import 'package:be_sharp/core/util/purchase_util.dart';
import 'package:be_sharp/core/extension/purchase_details_extension.dart';
import 'package:be_sharp/infrastructure/repository/result/result.dart';
import 'package:be_sharp/domain/repository_interface/purchase_repository_interface.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:in_app_purchase_android/billing_client_wrappers.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';

class PurchaseRepository implements PurchaseRepositoryInterface {
  PurchaseRepository({
    required this.inAppPurchase,
    required this.client,
    required this.wrapper,
  });
  final InAppPurchase inAppPurchase;
  final BillingClient client;
  final SKPaymentQueueWrapper wrapper;

  @override
  Stream<List<PurchaseDetails>> get purchaseUpdated =>
      inAppPurchase.purchaseStream
          .map((details) => details)
          .asBroadcastStream();

  Future<void> cancelTransctions() async {
    if (!Platform.isIOS) return;
    try {
      final transactions = await wrapper.transactions();
      for (final tx in transactions) {
        await wrapper.finishTransaction(tx);
      }
    } catch (e) {
      debugPrint('cancelTransactions: ${e.toString()}');
    }
  }

  Future<void> completePurchase(PurchaseDetails details) async {
    if (!details.pendingCompletePurchase) return;
    try {
      await inAppPurchase.completePurchase(details);
    } catch (e) {
      debugPrint('completePurchase: ${e.toString()}');
    }
  }

  Future<bool> isAvailable() async {
    try {
      return inAppPurchase.isAvailable();
    } catch (e) {
      debugPrint('isAvailable: ${e.toString()}');
      return false;
    }
  }

  Future<void> acknowledge(PurchaseDetails details) async {
    if (!Platform.isAndroid || details.isPending) return;
    try {
      // 承認を行う.行わないと払い戻しが行われる.
      final serverVerificationData =
          details.verificationData.serverVerificationData;
      await client.acknowledgePurchase(serverVerificationData);
    } catch (e) {
      debugPrint('acknowledge: ${e.toString()}');
    }
  }

  @override
  Future<void> initStore() async {
    // Initialize store if needed
  }

  @override
  Future<List<ProductDetails>> getProducts() async {
    final products = await queryProductDetails();
    return products ?? [];
  }

  @override
  Future<void> buyProduct(String productId) async {
    final products = await queryProductDetails();
    if (products == null) return;

    final product = products.where((p) => p.id == productId).firstOrNull;
    if (product == null) return;

    final purchaseParam = PurchaseParam(productDetails: product);
    await buyNonConsumable(purchaseParam);
  }

  Future<List<ProductDetails>?> queryProductDetails() async {
    try {
      final identifiers = PurchaseUtil.productIds();
      final res = await inAppPurchase.queryProductDetails(identifiers);
      return res.productDetails;
    } catch (e) {
      debugPrint('queryProductDetails: ${e.toString()}');
      return null;
    }
  }

  FutureResult<bool> buyNonConsumable(PurchaseParam purchaseParam) async {
    try {
      await inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
      return const Result.success(true);
    } catch (e) {
      debugPrint('buyNonConsumable: ${e.toString()}');
      return const Result.failure('購入が失敗しました');
    }
  }

  FutureResult<bool> restorePurchases() async {
    try {
      await inAppPurchase.restorePurchases();
      return const Result.success(true);
    } catch (e) {
      debugPrint('restorePurchases: ${e.toString()}');
      return const Result.failure('購入の復元が失敗しました');
    }
  }
}
