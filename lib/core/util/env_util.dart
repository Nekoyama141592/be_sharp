import 'package:be_sharp/application/flavors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:be_sharp/gen/firebase_options_dev.dart' as dev;
import 'package:be_sharp/gen/firebase_options_stg.dart' as stg;
import 'package:be_sharp/gen/firebase_options_prod.dart' as prod;
class EnvUtil {
    static FirebaseOptions getFirebaseOption() {
    switch (F.appFlavor) {
      case Flavor.dev:
        return dev.DefaultFirebaseOptions.currentPlatform;
      case Flavor.stg:
        return stg.DefaultFirebaseOptions.currentPlatform;
      case Flavor.prod:
        return prod.DefaultFirebaseOptions.currentPlatform;
    }
  }
  static String get subscriptionMonthItemId {
    switch (F.appFlavor) {
      case Flavor.dev:
        return 'be_sharp_dev_subscription_basic';
      case Flavor.stg:
        return 'be_sharp_stg_subscription_basic';
      case Flavor.prod:
        return 'be_sharp_prod_subscription_basic';
    }
  }
  static String get subscriptionAnnualItemId {
    switch (F.appFlavor) {
      case Flavor.dev:
        return 'be_sharp_dev_subscription_annual';
      case Flavor.stg:
        return 'be_sharp_stg_subscription_annual';
      case Flavor.prod:
        return 'be_sharp_prod_subscription_annual';
    }
  }
  static List<String> get subscriptionItemIds =>
      [subscriptionMonthItemId, subscriptionAnnualItemId];
  static Set<String> get subscriptionProductIds => subscriptionItemIds.toSet();
}
