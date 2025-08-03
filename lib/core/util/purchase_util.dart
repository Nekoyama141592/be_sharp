import 'package:be_sharp/core/util/env_util.dart';
import 'package:be_sharp/domain/entity/purchase/product/product_entity.dart';

class PurchaseUtil {
  static String _monthItemId() => EnvUtil.subscriptionMonthItemId;
  static String _annualItemId() => EnvUtil.subscriptionAnnualItemId;

  static List<ProductEntity> mockProducts() {
    return [
      ProductEntity(
        isMonthly: true,
        packageId: _monthItemId(),
        title: "月額プラン",
        description: "一月ごとに課金されます",
        price: "¥500",
      ),
      ProductEntity(
        isMonthly: false,
        packageId: _annualItemId(),
        title: "年間プラン",
        description: "一年ごとに課金されます",
        price: "¥4980",
      ),
    ];
  }
}
