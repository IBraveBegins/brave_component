import 'package:brave_component/core/cache/helpers/cache_helper.dart';
import 'package:brave_component/routes/route_path.dart';
import 'package:get/get.dart';

class L10nSettingLogic extends GetxController {
  late String countryCode;
  @override
  void onInit() {
    super.onInit();
    countryCode = CacheHelper.countryCode;
  }

  void toName(String page) {
    switch (page) {
      case RoutePath.l10n_multiLanguage:
        Get.toNamed(RoutePath.l10n_multiLanguage)
            ?.then((value) => {getCountryCode()});
        break;
      case RoutePath.l10n_theme:
        Get.toNamed(RoutePath.l10n_theme);
        break;
      default:
        Get.toNamed(RoutePath.l10n_multiLanguage);
        break;
    }
  }

  void getCountryCode() {
    countryCode = CacheHelper.countryCode;
    print('l10n_setting getCountryCode：$countryCode');
    update();
  }
}
