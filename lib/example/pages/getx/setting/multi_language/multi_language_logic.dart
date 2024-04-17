import 'package:brave_component/core/cache/helpers/cache_helper.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/language_utils.dart';

class MultiLanguageLogic extends GetxController {
  late String countryCode;

  @override
  void onInit() {
    super.onInit();
    countryCode = CacheHelper.countryCode;
  }

  void changeLanguage(String code) {
    countryCode = code;
    LanguageUtils.updateLocale(code);
    update();
  }
}
