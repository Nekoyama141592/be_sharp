import 'package:be_sharp/constants/enums/env_key.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class PurchasesCore {
  static String _itemId() => dotenv.get(EnvKey.SUBSCRIPTION_ITEM_ID.name);
  static Set<String> productIds() {
    final identifiers = <String>[_itemId()];
    return identifiers.toSet();
  }

  static List<ProductDetails> mockProducts() {
    final item = ProductDetails(
        id: _itemId(),
        title: "月額プラン",
        description: "一月使えます",
        price: "¥500",
        rawPrice: 500,
        currencyCode: "JPY",
        currencySymbol: "¥");
    return [item];
  }
}
