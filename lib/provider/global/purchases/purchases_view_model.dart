import 'dart:async';

import 'package:be_sharp/core/col_ref_core.dart';
import 'package:be_sharp/core/purchases_core.dart';
import 'package:be_sharp/extensions/purchase_details_extension.dart';
import 'package:be_sharp/model/firestore_model/verified_purchase/verified_purchase.dart';
import 'package:be_sharp/model/view_model_state/purchases_state/purchases_state.dart';
import 'package:be_sharp/provider/global/user_provider.dart';
import 'package:be_sharp/repository/purchases_repository.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:be_sharp/user_case/purchases/purchases_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
part 'purchases_view_model.g.dart';

@Riverpod(keepAlive: true)
class Purchases extends _$Purchases {
  late StreamSubscription<List<PurchaseDetails>> subscription;
  bool isVerifing = false;
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
    final verifiedPurchases = await _fetchPurchases();
    return PurchasesState(
        products: products, verifiedPurchases: verifiedPurchases);
  }

  Future<List<VerifiedPurchase>> _fetchPurchases() async {
    try {
      final uid = ref.read(userProvider)?.uid;
      if (uid == null) return [];
      final colRef = ColRefCore.verifiedPurchases(uid);
      final qshot = await colRef.get();
      final docs = qshot.docs;
      final verifiedPurchases =
          docs.map((e) => VerifiedPurchase.fromJson(e.data())).toList();
      final results = verifiedPurchases.where((e) => e.isValid()).toList();
      return results;
    } catch (e) {
      return [];
    }
  }

  StreamSubscription<List<PurchaseDetails>> _getSubscription() {
    final stream = PurchasesCore.stream();
    final result = stream.listen(_onListen);
    return result;
  }

  void onPurchaseButtonPressed(ProductDetails details) async {
    await PurchasesCore.cancelTransctions();
    final purchaseParam =
        PurchasesCore.param(details, state.value?.verifiedPurchases);
    await ToastUICore.showFlutterToast("情報を取得しています。 \nしばらくお待ちください。");
    final repository = PurchasesRepository();
    final result = await repository.buyNonConsumable(purchaseParam);
    result.when(success: _onPurchaseSuccess, failure: _onPurchaseFailed);
  }

  void _onPurchaseSuccess(bool res) {}

  void _onPurchaseFailed() {
    ToastUICore.showFlutterToast("もう一度ボタンを押してください");
  }

  bool isSubscribing() => state.value?.isSubscribing() ?? false;
  Future<void> _onListen(List<PurchaseDetails> detailsList) async {
    ToastUICore.showFlutterToast('購入情報を検証しています');
    isVerifing = true;
    for (int i = 0; i < detailsList.length; i++) {
      final details = detailsList[i];
      if (details.isError || !details.isPurchased) continue;
      final result = await ref.read(purchasesUsecaseProvider).verifyPurchase(details);
      await result.when(
          success: (_) => _onVerifySuccess(details), failure: _onVerifyFailed);
    }
    await _updateVerifiedPurchases();
    isVerifing = false;
    ToastUICore.showFlutterToast('購入情報の検証が完了しました');
  }

  Future<void> _onVerifySuccess(PurchaseDetails details) async {
    await PurchasesCore.completePurchase(details);
    await PurchasesCore.acknowledge(details);
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

  Future<void> _onVerifyFailed() async {
    // 失敗した時の処理.
    ToastUICore.showErrorFlutterToast("購入の検証が失敗しました");
  }

  void onRestoreButtonPressed() async {
    final repository = PurchasesRepository();
    await repository.restorePurchases();
  }
}
