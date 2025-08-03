import 'dart:async';
import 'package:be_sharp/core/provider/repository/purchase/purchase_repository_provider.dart';
import 'package:be_sharp/infrastructure/repository/purchase_repository.dart';
import 'package:be_sharp/presentation/state/purchases_state/purchase_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'purchase_notifier.g.dart';

@Riverpod(keepAlive: true)
class PurchaseNotifier extends _$PurchaseNotifier {
  PurchaseRepository get _repository => ref.read(purchaseRepositoryProvider);
  @override
  FutureOr<PurchaseState> build() {
    return _fetchData();
  }

  Future<PurchaseState> _fetchData() async {
    final isActive = await _repository.isActive();
    return PurchaseState(isActive: isActive);
  }
}
