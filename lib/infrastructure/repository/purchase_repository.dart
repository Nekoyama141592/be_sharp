import 'package:be_sharp/domain/entity/purchase/product/product_entity.dart';
import 'package:be_sharp/domain/repository_interface/purchase_repository_interface.dart';
import 'package:be_sharp/infrastructure/repository/result/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

class PurchaseRepository implements PurchaseRepositoryInterface {
  @override
  Future<bool> isActive() async {
    return _getIsActive(await Purchases.getCustomerInfo());
  }

  Future<List<Package>?> _getPackages() async {
    final offerings = await Purchases.getOfferings();
    final packages = offerings.all['default']?.availablePackages;
    return packages;
  }

  @override
  Future<List<ProductEntity>?> queryProductDetails() async {
    try {
      final packages = await _getPackages();
      final result = packages?.map((e) {
        final isMonthly = e.packageType == PackageType.monthly;
        final product = e.storeProduct;
        return ProductEntity(
          isMonthly: isMonthly,
          packageId: e.identifier,
          title: product.title,
          description: product.description,
          price: product.priceString,
        );
      }).toList();
      return result;
    } catch (e) {
      debugPrint('queryProductDetails: ${e.toString()}');
      return null;
    }
  }

  @override
  FutureResult<bool> buyNonConsumable(String packageId) async {
    try {
      final packages = await _getPackages();
      final package =
          packages?.firstWhereOrNull((e) => e.identifier == packageId);
      if (package == null) {
        return const Result.failure('購入が失敗しました');
      }
      final purchaseResult = await Purchases.purchasePackage(package);
      final isActive = _getIsActive(purchaseResult.customerInfo);
      return Result.success(isActive);
    } catch (e) {
      debugPrint('buyNonConsumable: ${e.toString()}');
      return const Result.failure('購入が失敗しました');
    }
  }

  @override
  FutureResult<bool> restorePurchases() async {
    try {
      final customerInfo = await Purchases.restorePurchases();
      final isActive = _getIsActive(customerInfo);
      return Result.success(isActive);
    } catch (e) {
      debugPrint('restorePurchases: ${e.toString()}');
      return const Result.failure('購入の復元が失敗しました');
    }
  }

  bool _getIsActive(CustomerInfo purchaserInfo) {
    final ent = purchaserInfo.entitlements.all['basic'];
    return ent?.isActive ?? false;
  }
}
