import 'dart:async';

import 'package:be_sharp/core/purchases_core.dart';
import 'package:be_sharp/extensions/purchase_details_extension.dart';
import 'package:be_sharp/model/firestore_model/verified_purchase/verified_purchase.dart';
import 'package:be_sharp/model/view_model_state/purchases_state/purchases_state.dart';
import 'package:be_sharp/repository/purchases_repository.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';

class PurchasesViewModel extends AsyncNotifier<PurchasesState> {
  late StreamSubscription<List<PurchaseDetails>> subscription;
  @override
  FutureOr<PurchasesState> build() async {
    subscription = _getSubscription();
    return _fetch();
  }

  Future<PurchasesState> _fetch() async {
    final inAppPurchase = InAppPurchase.instance;
    final bool storeConnected = await inAppPurchase.isAvailable();
    if (!storeConnected) return PurchasesState();
    final identifiers = PurchasesCore.productIds();
    final res = await inAppPurchase.queryProductDetails(identifiers);
    final products = PurchasesCore.getProducts(res);
    return PurchasesState(products: products);
  }

  StreamSubscription<List<PurchaseDetails>> _getSubscription() {
    final stream = PurchasesCore.stream();
    final result = stream.listen(_onListen);
    return result;
  }

  void onPurchaseButtonPressed(ProductDetails details) async {
    await PurchasesCore.cancelTransctions();
    final oldDetails = _getOldDetails(details);
    final purchaseParam = PurchasesCore.param(details, oldDetails: oldDetails);
    await ToastUICore.showFlutterToast("情報を取得しています。 \nしばらくお待ちください。");
    final repository = PurchasesRepository();
    final result = await repository.buyNonConsumable(purchaseParam);
    result.when(success: _onPurchaseSuccess, failure: _onPurchaseFailed);
  }

  void _onPurchaseSuccess(bool res) {}

  void _onPurchaseFailed() {
    ToastUICore.showFlutterToast("もう一度ボタンを押してください");
  }

  GooglePlayPurchaseDetails? _getOldDetails(ProductDetails details) {
    final stateValue = state.value;
    if (stateValue == null) return null;
    GooglePlayPurchaseDetails? oldSubscription;
    final purchases = stateValue.verifiedPurchases
        .map((e) => e.typedPurchaseDetails())
        .toList();
    if (purchases.isNotEmpty && purchases.last.productID != details.id) {
      oldSubscription = purchases.last as GooglePlayPurchaseDetails;
    }
    return oldSubscription;
  }

  Future<void> _onListen(List<PurchaseDetails> detailsList) async {
    for (int i = 0; i < detailsList.length; i++) {
      final details = detailsList[i];
      await PurchasesCore.completePurchase(details);
      await PurchasesCore.acknowledge(details);
      if (details.isError) {
        ToastUICore.showErrorFlutterToast("購入時にエラーが発生");
        return;
      }
      if (!details.isPurchased) continue;
      final result = await PurchasesCore.verifyPurchase(details);
      await result.when(success: _onVerifySuccess, failure: _onVerifyFailed);
    }
  }

  Future<void> _onVerifySuccess(VerifiedPurchase res) async {
    final stateValue = state.value;
    if (stateValue == null) return;
    // 成功した時の処理.
    ToastUICore.showFlutterToast("購入の検証が成功しました");
    state = await AsyncValue.guard(() async {
      final result = stateValue
          .copyWith(verifiedPurchases: [...stateValue.verifiedPurchases, res]);
      return result;
    });
  }

  Future<void> _onVerifyFailed() async {
    // 失敗した時の処理.
    ToastUICore.showErrorFlutterToast("購入の検証が失敗しました");
  }

  void onRestoreButtonPressed() async {
    final repository = PurchasesRepository();
    final result = await repository.restorePurchases();
    result.when(success: _onRestoreSuccess, failure: _onRestoreFailure);
  }

  void _onRestoreSuccess(bool res) {
    ToastUICore.showFlutterToast('購入情報を復元しました');
  }

  void _onRestoreFailure() {
    ToastUICore.showErrorFlutterToast('購入情報を復元できませんでした');
  }
}

final purchasesProvider =
    AsyncNotifierProvider<PurchasesViewModel, PurchasesState>(
        () => PurchasesViewModel());
