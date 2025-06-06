import 'dart:io';

import 'package:be_sharp/model/firestore_model/verified_purchase/verified_purchase.dart';
import 'package:be_sharp/provider/repository/cloud_functions/cloud_functions_repository_provider.dart';
import 'package:be_sharp/repository/cloud_functions_repository.dart';
import 'package:be_sharp/repository/result/result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'purchases_usecase.g.dart';

@riverpod
PurchasesUsecase purchasesUsecase(Ref ref) =>
    PurchasesUsecase(ref.watch(cloudFunctionsRepositoryProvider));

class PurchasesUsecase {
  PurchasesUsecase(this.repository);
  final CloudFunctionsRepository repository;
  FutureResult<VerifiedPurchase> verifyPurchase(
    PurchaseDetails purchaseDetails,
  ) async {
    return Platform.isAndroid
        ? await repository.verifyAndroidReceipt(purchaseDetails)
        : await repository.verifyIOSReceipt(purchaseDetails);
  }
}
