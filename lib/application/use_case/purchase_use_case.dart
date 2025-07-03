import 'dart:io';

import 'package:be_sharp/model/firestore_model/verified_purchase/verified_purchase.dart';
import 'package:be_sharp/repository/cloud_functions_repository.dart';
import 'package:be_sharp/repository/result/result.dart';
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
