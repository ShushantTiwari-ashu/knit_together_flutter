import 'app_constant.dart';

enum Flavor {
  development,
  release,
}

class Config {
  static Flavor? appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.release:
        return AppConstant.appName;
      case Flavor.development:
      default:
        return AppConstant.appNameDev;
    }
  }

  static bool get isDebug {
    switch (appFlavor) {
      case Flavor.release:
        return false;
      case Flavor.development:
      default:
        return true;
    }
  }
}
