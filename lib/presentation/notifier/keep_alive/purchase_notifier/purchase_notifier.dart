import 'dart:async';

import 'package:be_sharp/core/extension/purchase_details_extension.dart';
import 'package:be_sharp/domain/entity/database/verified_purchase/verified_purchase_entity.dart';
import 'package:be_sharp/core/provider/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/core/provider/stream/purchase/purchase_stream_provider.dart';
import 'package:be_sharp/core/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/core/provider/repository/purchase/purchase_repository_provider.dart';
import 'package:be_sharp/core/provider/use_case/purchase/purchase_use_case_provider.dart';
import 'package:be_sharp/infrastructure/repository/purchase_repository.dart';
import 'package:be_sharp/presentation/util/toast_ui_util.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'purchase_notifier.g.dart';

@Riverpod(keepAlive: true)
class PurchaseNotifier extends _$PurchaseNotifier {
  @override
  FutureOr<List<VerifiedPurchaseEntity>> build() {
    final detailsList = ref.watch(purchaseStreamProvider).value ?? [];
    return _onListen(detailsList);
  }

  PurchaseRepository get _repository => ref.read(purchaseRepositoryProvider);

  Future<List<VerifiedPurchaseEntity>> _onListen(
    List<PurchaseDetails> detailsList,
  ) async {
    ToastUiUtil.showFlutterToast('購入情報を検証しています');
    for (int i = 0; i < detailsList.length; i++) {
      final details = detailsList[i];
      if (details.isError || !details.isPurchased) continue;
      final result =
          await ref.read(purchaseUseCaseProvider).verifyPurchase(details);
      await result.when(
        success: (res) => _onVerifySuccess(details, res),
        failure: _onVerifyFailed,
      );
    }
    ToastUiUtil.showFlutterToast('購入情報の検証が完了しました');
    return _fetchPurchases();
  }

  Future<void> _onVerifySuccess(
    PurchaseDetails details,
    VerifiedPurchaseEntity res,
  ) async {
    await _repository.completePurchase(details);
    await _repository.acknowledge(details);
  }

  Future<void> _onVerifyFailed(String msg) async {
    // 失敗した時の処理.
    ToastUiUtil.showErrorFlutterToast(msg);
  }

  Future<List<VerifiedPurchaseEntity>> _fetchPurchases() {
    final uid = ref.read(streamAuthUidProvider).value;
    return ref.read(databaseRepositoryProvider).getVerifiedPurchases(uid);
  }
}
