import 'package:brave_component/l10n/l10n.dart';
import 'package:flutter/widgets.dart';

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
}
