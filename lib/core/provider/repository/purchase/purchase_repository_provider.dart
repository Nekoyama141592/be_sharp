import 'package:be_sharp/core/provider/infrastructure/in_app_purchase/in_app_purchase_provider.dart';
import 'package:be_sharp/infrastructure/repository/purchase_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'purchase_repository_provider.g.dart';

@riverpod
PurchaseRepository purchaseRepository(Ref ref) => PurchaseRepository(
      ref.read(inAppPurchaseProvider),
      ref.read(billingClientProvider),
      ref.read(sKPaymentQueueWrapperProvider),
    );
