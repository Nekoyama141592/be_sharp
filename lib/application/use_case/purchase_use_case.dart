import 'dart:io';

import 'package:be_sharp/infrastructure/model/firestore_model/verified_purchase/verified_purchase.dart';
import 'package:be_sharp/infrastructure/repository/cloud_functions_repository.dart';
import 'package:be_sharp/infrastructure/repository/result/result.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class PurchaseUseCase {
  PurchaseUseCase(this.repository);
  final CloudFunctionsRepository repository;
  FutureResult<VerifiedPurchase> verifyPurchase(
    PurchaseDetails purchaseDetails,
  ) async {
    return Platform.isAndroid
        ? await repository.verifyAndroidReceipt(purchaseDetails)
        : await repository.verifyIOSReceipt(purchaseDetails);
  }
}
