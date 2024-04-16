import 'package:brave_component/core/enums/language.dart';

import '../../res/keys.dart';
import '../cache/cache.dart';

abstract class CacheHelper {
  /// CountryCode
  static String get countryCode => Cache.instance
      .getGlobal(Keys.countryCode, defaultValue: Language.fsLan.countryCode);
  static void saveCountryCode(String countryCode) =>
      Cache.instance.putGlobal(key: Keys.countryCode, value: countryCode);
  static void clearCountryCode() =>
      Cache.instance.deleteGlobal(Keys.countryCode);

  /// Remove all
  static void clearAll() {
    clearCountryCode();
  }
}
