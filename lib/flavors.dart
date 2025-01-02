enum Flavor {
  dev,
  stg,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'BeSharp. DEV';
      case Flavor.stg:
        return 'BeSharp. STG';
      case Flavor.prod:
        return 'BeSharp.';
      default:
        return 'title';
    }
  }

}
