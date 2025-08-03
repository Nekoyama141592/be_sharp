import 'package:be_sharp/domain/entity/purchase/product/product_entity.dart';
import 'package:be_sharp/infrastructure/repository/result/result.dart';

abstract class PurchaseRepositoryInterface {
  /// サブスクリプションが有効かどうかを返す
  Future<bool> isActive();

  /// 購入可能なプロダクト一覧を取得する
  Future<List<ProductEntity>?> queryProductDetails();

  /// 指定したパッケージIDの商品を購入する
  FutureResult<bool> buyNonConsumable(String packageId);

  /// 購入の復元を行う
  FutureResult<bool> restorePurchases();
}
