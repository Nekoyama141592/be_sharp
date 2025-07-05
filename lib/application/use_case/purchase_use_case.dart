import 'dart:io';

import 'package:be_sharp/infrastructure/repository/api_repository.dart';
import 'package:be_sharp/domain/use_case_interface/purchase_use_case_interface.dart';
import 'package:be_sharp/infrastructure/repository/result/result.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/verified_purchase/verified_purchase.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class PurchaseUseCase implements PurchaseUseCaseInterface {
  PurchaseUseCase(this.repository);
  final ApiRepository repository;

  @override
  Stream<List<PurchaseDetails>> get purchaseUpdated =>
      InAppPurchase.instance.purchaseStream
          .map((details) => details)
          .asBroadcastStream();

  @override
  Future<void> initStore() async {
    // Initialize store if needed
  }

  @override
  Future<List<ProductDetails>> getProducts() async {
    // Return empty list as a placeholder
    return [];
  }

  @override
  Future<void> buyProduct(String productId) async {
    // Buy product implementation would go here
  }

  @override
  FutureResult<VerifiedPurchase> verifyPurchase(
      PurchaseDetails purchaseDetails) async {
    return Platform.isAndroid
        ? await repository.verifyAndroidReceipt(purchaseDetails)
        : await repository.verifyIOSReceipt(purchaseDetails);
  }
}
