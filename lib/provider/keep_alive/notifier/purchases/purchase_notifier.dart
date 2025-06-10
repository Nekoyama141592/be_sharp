import 'dart:async';

import 'package:be_sharp/core/purchase_core.dart';
import 'package:be_sharp/extensions/purchase_details_extension.dart';
import 'package:be_sharp/model/firestore_model/verified_purchase/verified_purchase.dart';
import 'package:be_sharp/model/view_model_state/purchase_state/purchase_state.dart';
import 'package:be_sharp/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/provider/keep_alive/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/provider/use_case/purchase/purchase_use_case_provider.dart';
import 'package:be_sharp/repository/purchase_repository.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
part 'purchase_notifier.g.dart';

@Riverpod(keepAlive: true)
class PurchaseNotifier extends _$PurchaseNotifier {
  late StreamSubscription<List<PurchaseDetails>> subscription;
  bool isVerifing = false;
  @override
  FutureOr<PurchaseState> build() async {
    subscription = _getSubscription();
    return _fetch();
  }

  Future<PurchaseState> _fetch() async {
    final inAppPurchase = InAppPurchase.instance;
    final bool storeConnected = await inAppPurchase.isAvailable();
    if (!storeConnected) return PurchaseState();
    final identifiers = PurchaseCore.productIds();
    final res = await inAppPurchase.queryProductDetails(identifiers);
    final products = PurchaseCore.getProducts(res);
    final verifiedPurchases = await _fetchPurchases();
    return PurchaseState(
        products: products, verifiedPurchases: verifiedPurchases);
  }

  Future<List<VerifiedPurchase>> _fetchPurchases() {
    final uid = ref.read(streamAuthUidProvider).value;
    return ref.read(databaseRepositoryProvider).getVerifiedPurchases(uid);
  }

  StreamSubscription<List<PurchaseDetails>> _getSubscription() {
    final stream = PurchaseCore.stream();
    final result = stream.listen(_onListen);
    return result;
  }

  void onPurchaseButtonPressed(ProductDetails details) async {
    await PurchaseCore.cancelTransctions();
    final purchaseParam =
        PurchaseCore.param(details, state.value?.verifiedPurchases);
    await ToastUICore.showFlutterToast("情報を取得しています。 \nしばらくお待ちください。");
    final repository = PurchaseRepository();
    final result = await repository.buyNonConsumable(purchaseParam);
    result.when(success: _onPurchaseSuccess, failure: _onPurchaseFailed);
  }

  void _onPurchaseSuccess(bool res) {}

  void _onPurchaseFailed(String msg) {
    ToastUICore.showFlutterToast(msg);
  }

  Future<void> _onListen(List<PurchaseDetails> detailsList) async {
    ToastUICore.showFlutterToast('購入情報を検証しています');
    isVerifing = true;
    for (int i = 0; i < detailsList.length; i++) {
      final details = detailsList[i];
      if (details.isError || !details.isPurchased) continue;
      final result = await ref.read(purchaseUseCaseProvider).verifyPurchase(details);
      await result.when(
          success: (_) => _onVerifySuccess(details), failure: _onVerifyFailed);
    }
    await _updateVerifiedPurchases();
    isVerifing = false;
    ToastUICore.showFlutterToast('購入情報の検証が完了しました');
  }

  Future<void> _onVerifySuccess(PurchaseDetails details) async {
    await PurchaseCore.completePurchase(details);
    await PurchaseCore.acknowledge(details);
  }

  Future<void> _updateVerifiedPurchases() async {
    final stateValue = state.value;
    if (stateValue == null) return;
    state = await AsyncValue.guard(() async {
      final newVerifiedPurchases = await _fetchPurchases();
      final result = stateValue.copyWith(
        verifiedPurchases: newVerifiedPurchases,
      );
      return result;
    });
  }

  Future<void> _onVerifyFailed(String msg) async {
    // 失敗した時の処理.
    ToastUICore.showErrorFlutterToast(msg);
  }

  void onRestoreButtonPressed() async {
    final repository = PurchaseRepository();
    await repository.restorePurchases();
  }
}
