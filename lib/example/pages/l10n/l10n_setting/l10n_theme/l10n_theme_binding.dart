import 'package:get/get.dart';

import 'l10n_theme_logic.dart';

class L10nThemeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => L10nThemeLogic());
  }
}
