import 'package:get/get.dart';

import 'theme_logic.dart';

class ThemeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThemeLogic());
  }
}
