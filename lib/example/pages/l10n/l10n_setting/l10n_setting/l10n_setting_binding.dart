import 'package:get/get.dart';

import 'l10n_setting_logic.dart';

class L10nSettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => L10nSettingLogic());
  }
}
