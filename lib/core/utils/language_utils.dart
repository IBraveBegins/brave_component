import 'package:brave_component/l10n/l10n.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../l10n_app.dart';
import '../cache/helpers/cache_helper.dart';
import '../enums/language.dart';

class LanguageUtils {
  static String getLanguage(BuildContext context, String code) {
    late String language;
    switch (code) {
      case 'fs-Lan':
        language = context.l10n.followerSystemLanguage;
        break;
      case 'zh-CN':
        language = context.l10n.simplifiedChinese;
        break;
      case 'zh-HK':
        language = context.l10n.traditionalChinese;
        break;
      case 'en-US':
        language = context.l10n.english;
        break;
      default:
        language = context.l10n.followerSystemLanguage;
        break;
    }
    return language;
  }

  static Locale? getLocale() {
    Locale? locale;
    String code = CacheHelper.countryCode;
    List<String> lang = code.split('-');
    locale = (code == Language.fsLan.countryCode)
        ? Get.deviceLocale
        : Locale(lang[0], lang[1]);
    return locale;
  }

  static void updateLocale(String countryCode, {bool isL10n = false}) {
    List<String> lang = countryCode.split('-');
    Get.updateLocale((countryCode == Language.fsLan.countryCode)
        ? Get.deviceLocale!
        : Locale(lang[0], lang[1]));
    CacheHelper.saveCountryCode(countryCode);
    if (isL10n) {
      L10nAppState.setting.changeLocale!();
    }
  }
}
