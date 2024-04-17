import 'package:brave_component/core/cache/helpers/cache_helper.dart';
import 'package:brave_component/routes/route_path.dart';
import 'package:get/get.dart';

class SettingLogic extends GetxController {
  late String countryCode;
  @override
  void onInit() {
    super.onInit();
    countryCode = CacheHelper.countryCode;
  }

  void toName(String page) {
    switch (page) {
      case RoutePath.multiLanguage:
        Get.toNamed(RoutePath.multiLanguage)
            ?.then((value) => {getCountryCode()});
        break;
      case RoutePath.theme:
        Get.toNamed(RoutePath.theme);
        break;
      default:
        Get.toNamed(RoutePath.multiLanguage);
        break;
    }
  }

  void getCountryCode() {
    countryCode = CacheHelper.countryCode;
    print('setting getCountryCode：$countryCode');
    update();
  }
}
