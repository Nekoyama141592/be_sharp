import 'package:be_sharp/use_case/purchase_use_case.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:be_sharp/provider/repository/cloud_functions/cloud_functions_repository_provider.dart';

part 'purchase_use_case_provider.g.dart';

@riverpod
PurchaseUseCase purchaseUseCase(Ref ref) =>
    PurchaseUseCase(ref.watch(cloudFunctionsRepositoryProvider));