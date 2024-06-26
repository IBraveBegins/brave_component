import 'package:brave_component/core/cache/helpers/cache_helper.dart';
import 'package:brave_component/core/utils/language_utils.dart';
import 'package:get/get.dart';

class L10nMultiLanguageLogic extends GetxController {
  late String countryCode;

  @override
  void onInit() {
    super.onInit();
    countryCode = CacheHelper.countryCode;
  }

  void changeLanguage(String code) {
    countryCode = code;
    LanguageUtils.updateLocale(code, isL10n: true);
    update();
  }
}
