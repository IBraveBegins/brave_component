import 'dart:ui';

import 'package:brave_component/core/cache/helpers/cache_helper.dart';
import 'package:brave_component/core/enums/language.dart';
import 'package:get/get.dart';

import '../../../../main.dart';

class MultiLanguageLogic extends GetxController {
  late String countryCode;

  @override
  void onInit() {
    super.onInit();
    countryCode = CacheHelper.countryCode;
  }

  void changeLanguage(String code) {
    countryCode = code;
    updateLocale();
    CacheHelper.saveCountryCode(code);
    MyAppState.setting.changeLocale!();
    update();
  }

  void updateLocale() {
    List<String> lang = countryCode.split('-');
    Get.updateLocale((countryCode == Language.fsLan.countryCode)
        ? Get.deviceLocale!
        : Locale(lang[0], lang[1]));
  }
}
